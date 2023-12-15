#간단 계산기 만들기
a = "네"
while a=="네" :
    print("기능 선택")
    print("1.더하기")
    print("2.빼기")
    print("3.곱하기")
    print("4.나누기")

    s = input("계산기 기능을 선택하세요 (1/2/3/4)")

    num1 = int(input("첫번째 숫자를 입력하세요"))
    num2 = int(input("두번째 숫자를 입력하세요"))
    num3 = int(input("세번째 숫자를 입력하세요"))

    if s =="1" :
        print(f"{num1} + {num2} + {num3} = {num1+num2+num3}")
    if s =="2" :
        print(num1-num2-num3)
    if s =="3" :
        print(num1*num2*num3)
    if s =="4" :
        print(num1/num2/num3)
    a = input("계속 하시겠습니까? '네' 입력")
    if a=="네" :
        print("")