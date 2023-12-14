# import datetime
# # 3-2
# month = int(input("현재 달을 입력하세요"))
# if 0 < month < 4 :
#     print(f"{month}월은 봄")
# if 3 < month < 7 :    
#     print(f"{month}월은 여름")
# if 6 < month < 10 :
#     print(f"{month}월은 가을")
# if 9 < month < 13 :
#     print(f"{month}월은 겨울")
# else :
#     print("올바른 달을 입력하세요 1-12")

# 3-3
# jumin = input("주민번호를 입력하세요")
# jumin = jumin.replace(" ","")
# if len(jumin) == 13 :
#     if jumin[6] == 1 or 3 :
#         print("남자")
#     elif jumin[6] == 2 or 4 :
#         print("여자")
# if len(jumin) == 14 :
#     jumin = jumin.replace("-","")
#     if jumin[6] == 1 or 3 :
#         print("남자")
#     elif jumin[6] == 2 or 4 :
#         print("여자")
# else :
#     print("올바른 주민번호를 입력해주세요")

#3-4
j = ""
m = ""
word = input("영어단어를 입력하세요")
for i in range (0,len(word),1) :
    if word[i] == "a" or word[i] == "e" or word[i] == "i" or word[i] == "o" or word[i] == "u" :
        m = m + word[i] + " "
    else :
        j = j + word[i] + " "
print(f"입력하신 단어의 모음은 : {m} 자음은 : {j}")

#3-5 다이어트 필요성
# h = int(input("키를 입력하세요"))
# w = int(input("몸무게를 입력하세요"))

# if w/h > 0.4 :
#     print("비만입니다")
# else :
#     print("정상체중입니다")

#3-6
# if a == 남자 :
#   print("남자입니다")
# elif a == 트젠 :
#   print("트젠입니다")
# else :
#   print("여자입니다.")
#



