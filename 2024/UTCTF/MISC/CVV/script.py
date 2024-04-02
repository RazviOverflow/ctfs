from pwn import *
import re
import json
import requests

responses = []

def is_luhn_valid(cardNb):

    cardNb = str(cardNb[0])
    nDigits = len(cardNb)
    sum = 0
    isSecond = False
    i = nDigits - 1

    while i>=0:

        digit = int(cardNb[i])

        if isSecond:
            digit*=2

        sum +=digit//10
        sum +=digit%10
        isSecond = not isSecond
        i-=1

    return (sum % 10 == 0)


def get_cvv(pan, exp, svc):

    payload = f"cvk=dae55498c432545826fb153885bcb06b&pan={pan[0]}&exp={exp[0]}&svc={svc[0]}"

    print(payload)
    r = requests.post("https://fint-1227.appspot.com/cvvcalc/calculate", data=payload)

    print("Calculated CVV is ", int(r.text))
    return int(r.text)


def is_data_valid(PAN, date, code, cvv):

    print(f"Is PAN {PAN} valid? {is_luhn_valid(PAN)}")
    print(f"Is date {date} valid? {is_date_valid(date)}")
    print(f"Is csc {code} valid? {is_csc_valid(code)}")
    print(f"Is cvv {cvv} valid? {is_csc_valid(cvv)}")

    if is_luhn_valid(PAN):
        if get_cvv(PAN, date, code) == int(cvv[0]):
            return True

    return False


def parse_and_answer(p):
    with open('db.json', 'r') as in_file:
        db = json.load(in_file)

    data = p.recvuntil(b"Valid?")
    print(data)

    data = data.decode('utf-8').split("PAN")
    data = data[1].split(",")


    regx_pattern = r'\d+\.\d+|\d+'
    PAN = re.findall(regx_pattern, data[0])
    date = re.findall(regx_pattern, data[1])
    code = re.findall(regx_pattern, data[2])
    cvv = re.findall(regx_pattern, data[3])

    print(f"PAN: {PAN}; date: {date}; code: {code}, CVV: {cvv}")

    if is_data_valid(PAN, date, code, cvv):
        answer = b"1"
        responses.append("1")
    else:
        answer = b"0"
        responses.append("0")
    print(''.join(responses))

    print(answer)
    p.sendline(answer)

if __name__ == "__main__":

    context.log_level = "debug"
    p = remote("puffer.utctf.live", 8625)

    data = p.recvuntil(b"Valid?")
    print(data)

    data = data.decode('utf-8').split("PAN")
    data = data[2].split(",")


    regx_pattern = r'\d+\.\d+|\d+'
    PAN = re.findall(regx_pattern, data[0])
    date = re.findall(regx_pattern, data[1])
    code = re.findall(regx_pattern, data[2])
    cvv = re.findall(regx_pattern, data[3])

    print(f"PAN: {PAN}; date: {date}; code: {code}, CVV: {cvv}")
    
    if is_data_valid(PAN, date, code, cvv):
        answer = b"1"
        responses.append("1")
    else:
        answer = b"0"
        responses.append("0")
    print(''.join(responses))

    print(answer)
    p.sendline(answer)

    while True:
        parse_and_answer(p)