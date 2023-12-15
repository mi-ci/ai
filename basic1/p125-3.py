#간단 계산기 만들기 ver3.0
a = "네"
while a=="네" :
    print("기능 선택")
    print("1.더하기")
    print("2.빼기")
    print("3.곱하기")
    print("4.나누기")

    s = input("계산기 기능을 선택하세요 (1/2/3/4)")
    b = int(input("계산할 숫자 개수를 입력하세요 (2,3)"))
    if b == 2 :
        num1 = int(input("첫번째 숫자를 입력하세요"))
        num2 = int(input("두번째 숫자를 입력하세요"))

        if s =="1" :
            print(f"{num1} + {num2} = {num1+num2}")
        elif s =="2" :
            print(num1-num2)
        elif s =="3" :
            print(num1*num2)
        elif s =="4" :
            print(num1/num2)
    elif b ==3 :
        num1 = int(input("첫번째 숫자를 입력하세요"))
        num2 = int(input("두번째 숫자를 입력하세요"))
        num3 = int(input("세번째 숫자를 입력하세요"))

        if s =="1" :
            print(f"{num1} + {num2} + {num3} = {num1+num2+num3}")
        elif s =="2" :
            print(num1-num2-num3)
        elif s =="3" :
            print(num1*num2*num3)
        elif s =="4" :
            print(num1/num2/num3)
    else :
        print("2또는3만입력해주세요")
    a = input("계속 하시겠습니까? '네' 입력")
    if a=="네" :
        print("")