import datetime

bYear = int(input("태어난 년도를 입력하세요"))
cYear = datetime.datetime.now().year
age = cYear-bYear
ticket = 2500
if age < 0 :
    print("올바른 년도를 입력해주세요")
else :
    print(f"당신의 나이는 : {age}")
    if age >= 60 :
        ticket = 0
        print(f"티켓값은? : {ticket}")
    elif 40 <= age < 60 :
        ticket = 1000
        print(f"티켓값은? : {ticket}")
    elif 30 <= age < 40 :
        ticket = 1500
        print(f"티켓값은? : {ticket}")
    elif 20 <= age < 30 :
        ticket = 2000
        print(f"티켓값은? : {ticket}")
    elif age <= 10 :
        ticket = 0
        print(f"티켓값은? : {ticket}")