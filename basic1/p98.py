#98
x = 10
y = 20
# if x > 0 :
#     print("양수입니다")
# else :
#     print("음수입니다")
# print(x)

# if x >= 0 and y >= 0 :
#     print("양수")

# xx = 10
# print(xx%2 == 0 and xx%3 == 0)

# a=5
# b=7
# c=a+b

# print(1.1+0.1 == 1.2)

# hobby1 = "영화감상"
# hobby2 = "수영"
# my_hobby = "독서"
# print(my_hobby==hobby1 or my_hobby==hobby2)

pilgi = 90
silgi = 70
if pilgi >= 80 and silgi >= 80 :
    print("합격")
else :
    print("불합격")

#12월을 입력받아서 1,2,3월이면 1사분기
a = int(input("월을 입력하세요"))
if a < 1  or a > 12: 
    print("잘못된 달 입니다")
if  0 < a < 4 :
    print("1사분기")
elif 3< a < 7 :
    print("2사분기")
elif a > 6 and a < 10 :
    print("3사분기")
elif a > 9 and a < 13 :
    print("4사분기")