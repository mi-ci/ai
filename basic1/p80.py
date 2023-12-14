import datetime

#3 성적계산
# kor = (int)(input("국어 성적을 입력하세요"))
# eng = (int)(input("영어 성적을 입력하세요"))
# math = (int)(input("수학 성적을 입력하세요"))

# sum = kor + eng + math
# avg = round((float)(sum/3), 2)
# print(f"합계 : {sum} 평균 : {avg}")

#83 현재년도
# now = datetime.datetime.now()
# cYear = now.year
# name = input("이름을 입력하세요")
# inputYear = (int)(input("태어난 연도를 입력하세요"))
# age = 2023-inputYear
# print(f"{name}의 나이는 {age}")

# 생일 달 입력
# now = datetime.datetime.now().month
# your = (int)(input("태어난 달을 입력하세요"))
# left = your-now
# print(f"생일까지 {left}달 ")

# 86
now = datetime.datetime.now()
# year = (int)(input("년:"))
# month = (int)(input("월:"))
# day = (int)(input("일:"))
# year = now.year
# month = now.month
# day = now.day
# print(f"{year}년도 {month}월{day}일")
# now = datetime.datetime.today().weekday()
# if now == 0 :
#     print("월요일")

# if now == 1 :
#     print("화요일")

# if now == 2 :
#     print("수요일")

# if now == 3 :
#     print("목요일")

# if now == 4 :
#     print("금요일")

# if now == 5 :
#     print("토요일")

# if now == 6 :
#     print("일요일")

#87
width =10
height = 20
length = width*2 + height*2
area = width*height
print(f"둘레{length} \n넓이{area}")
if area > 100 :
    print("큰 사각형이네요")
else :
    print("작은 사각형이네요")














