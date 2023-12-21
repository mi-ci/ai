# string1 = "Python is fun!"
# print(string1)
# a = string1.find("k")
# print(a)

# studentName = "홍길동, 이순신, 이경미, 최수진"
# if studentName.find("최수진") == -1 :
#     print("우리반 아닙니다")
# else :
#     print("우리반 입니다")

# studentName = studentName.replace("최수진", "정수진")
# print(studentName)

# data = "홍길동/이순신/최경주"
# data = data.replace("/", " ")
# print(data)

# data 쪼개기
# a = "have a good day; Happy new Year; Merry Chistmas"
# a = a.split(";", 1)
# print(a)

# data join
# names = ["황애리", "홍지수", "안지영"]
# x = "/".join(names)
# print(x)

# phoneNumber = ["010", "8744", "3334"]
# x = "-".join(phoneNumber)
# print(x)

#5-25
# p = ["010-3654-2637", "010-3984-5377", "010-3554-0973"]
# p2 = []
# for i in p :
#     x = i.replace("-","")
#     p2.append(x)
# print(p2)

#5-26
# s = ["Love me, love my dog", "No news is good news", "Blood is thicker than water"]
# for i in s:
#     x = i.replace(" ", "_")
#     print(x)

# C5-5
# questions = ["s_hool", "compu_er", "deco_ation", "windo_", "hi_tory"]
# answers = ["c","t","r","w","s"]
# j = 0
# for i in questions :
#     x = input(f"{i} : 밑 줄에 들어갈 알파벳은? ")
#     if x == answers[j] :
#         print("정답!")
#     else:
#         print("오답")
#     j=j+1

# C5-6
s =[]
while 1==1 :
    x = int(input("성적을 입력하세요"))
    if x==-1:
        break
    else :
        s.append(x)
print(f"{sum(s)} {sum(s)/len(s)}")
