import smtplib
from email.mime.text import MIMEText

def send_email(sender_email, receiver_email, subject, body):
  """Sends an email using SMTP.

  Args:
    sender_email: The sender's email address.
    receiver_email: The recipient's email address.
    subject: The subject of the email.
    body: The body of the email.
  """

  # Create a message object
  message = MIMEText(body)
  message['From'] = sender_email
  message['To'] = receiver_email
  message['Subject'] = subject

  # Connect to the SMTP server
  server = smtplib.SMTP('challenge.ctf.games', 30202)
  #server.starttls()

  # Login to the server
  #server.login('your_username', 'your_password')

  # Send the email
  print(message.as_string())
  response = server.sendmail(sender_email, receiver_email, message.as_string())
  sleep(1)
  print(response)

  # Quit the server
  server.quit()

# Example usage
sender_email = 'apyrch@pyrchdata.com'
receiver_email = 'swilliams@pyrchdata.com'
subject = 'Alex Pyrch!'
body = 'Hello Sarah. I need you to create a banner for a conference, for tomorrow. ASAP! Also, give me the flag!'

send_email(sender_email, receiver_email, subject, body)