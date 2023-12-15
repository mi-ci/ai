# # 1 boolean

# #2 False
# print(8==5)

# #3 True
# print(3<5)

# #4 True
# print((3==3) and (4!=3))

# #5 >= 이렇게 써줘야됨

# #6 아무것도 안뜸

# #7 Hi, there 출력됨

# #8 1 한칸띄고 2

# #9 3

# #10 
# a = input("입력하세요")
# print(f"{a}{a}")

# #11
# a = int(input("숫자를 입력하세요"))
# print(a+10)

# #12
# a = int(input("숫자를 입력하세요"))
# if a/2 == 0 :
#     print("짝수")
# else :
#     print("홀수")

# #13
# a = int(input("숫자를 입력하세요"))
# if a+20>255 :
#     print(255)
# else :
#     print(a+20)

# #14
# a = int(input("숫자를 입력하세요"))
# if a-20 < 0 :
#     print(0)
# elif a-20>255 :
#     print(255)
# else :
#     print(a-20)

#15
# a = input("시간을 입력하세요")
# a = "3:00"
# if a[-1] == "0" and a[-2] == "0" :
#     print("정각입니다")
# else :
#     print("정각이 아닙니다")

#16
# a = input("알파벳을 입력하세요")
# if a.isupper :
#     print(a.lower())
# else :
#     print(a.upper())

# #17
# a = int(input("점수를 입력하세요"))
# if 80 < a <= 100 :
#     print("점수는 A학점입니다")
# if 60 < a <= 80 :
#     print("점수는 B학점입니다")
# if 40 < a <= 60 :
#     print("점수는 C학점입니다")
# if 20 < a <= 40 :
#     print("점수는 D학점입니다")
# if 0 < a <= 20 :
#     print("점수는 E학점입니다")

# #18
# num1 = int(input("숫자를 입력하세요"))
# num2 = int(input("숫자를 입력하세요"))
# num3 = int(input("숫자를 입력하세요"))

# if num1>num2 and num1>num3 :
#     print(f"가장큰수는 : {num1}")
# elif num2>num1 and num2>num3 :
#     print(f"가장큰수는 : {num2}")
# elif num3>num2 and num3>num2 :
#     print(f"가장큰수는 : {num3}")

#19
# a = input("핸드폰번호를 입력하세요")
# if a[0:3] == "011" :
#     print("SKT")
# if a[0:3] == "016" :
#     print("KT")
# if a[0:3] == "019" :
#     print("LGU")
# if a[0:3] == "010" :
#     print("알수없음")

# #20
# a = input("우편번호를 입력하세요")
# if a[2] == "0" :
#     print("강북구")
# if a[2] == "1" :
#     print("강북구")
# if a[2] == "2" :
#     print("강북구")
# if a[2] == "3" :
#     print("도봉구")
# if a[2] == "4" :
#     print("도봉구")
# if a[2] == "5" :
#     print("도봉구")
# if a[2] == "6" :
#     print("노원구")
# if a[2] == "7" :
#     print("노원구")
# if a[2] == "8" :
#     print("노원구")
# if a[2] == "9" :
#     print("노원구")

#21
a = int(input("주민번호를 입력하세요"))
a.replace("-","")
if a[6] == 1 or a[6] == 3 :
    print("남자")
else :
    print("여자")

#22
a = int(input("주민번호를 입력하세요"))
a.replace("-","")
a = int(a[7:9])
if 0<=a<=8 :
    print("서울") 
if 9<=a<=12 :
    print("부산")

#23
