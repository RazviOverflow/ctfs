# Python3
# RazviOverflow

import requests
from bs4 import BeautifulSoup

session = requests.Session()

## Get responses
responses = []
fake_data = {'insert_answer': '', 'submit':'answer'}


for i in range(0,1000):
	page = session.post('http://timesink.be/quizbot/index.php', data=fake_data)
	soup = BeautifulSoup(page.text, 'html.parser')
	answer = soup.find(id='answer').text
	print(f"[*] Answer " + str(i) + " is " + answer)
	responses.append(answer)


session = requests.Session()

for i in range(0,1000):
	page = session.post('http://timesink.be/quizbot/index.php', {'insert_answer': responses[i], 'submit':'answer'})
	soup = BeautifulSoup(page.text, 'html.parser')
	print(soup)


