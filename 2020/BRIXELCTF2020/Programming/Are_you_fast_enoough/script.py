# Python3
# RazviOverflow

import requests
from bs4 import BeautifulSoup

session = requests.Session()

page = session.get('http://timesink.be/speedy/')

soup = BeautifulSoup(page.text, 'html.parser')
string_to_send = soup.find(id='rndstring').text
print("STRING FOUND > " + str(string_to_send))

data={
	'inputfield': str(string_to_send)
}

print("[+] Sending text")
print("SENT -> " + string_to_send.strip())
send = session.post("http://timesink.be/speedy/index.php", data=data)

print(send.text)

print("SENT -> [" + string_to_send + "]")

