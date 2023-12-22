# #6-2
# scores = {"김채린":85, "박수정":98, "함소희":94, "안예린":90, "연수진":93}
# sum = 0
# for i in scores :
#     sum = sum + scores[i]
# print(f"{sum} {sum/len(scores)}")

# #6-3
# admin = {"id":"admin", "pass":"12345"}
# id1 = input("아이디입력")
# pass1 = input("비번입력")
# if id1 == admin["id"] and pass1 == admin["pass"] :
#     print("접근권한 있습니다")
# else :
#     print("접근권한 없습니다")

# #6-4
# words = {"꽃":"flower", "나비":"butterfly", "학교":"school", "자동차":"car", "비행기":"plane", }
# for i in words :
#     a = input(f"{words}에 해당되는 영단어를 입력하세요")
#     if a == words[i] :
#         print("정답")
#     else :
#         print("오답")

#6-1
year_sale = {"2016":237, "2017":98, "2018":158, "2019":233, "2020":120, }
for key in year_sale :
    if key == "2017" :
        print(year_sale[key])

#6-2
sm = 0
for key in year_sale :
    if key == "2018" or key == "2019" :
        sm = sm + year_sale[key]
print(sm)

#6-3
sm = 0
for key in year_sale :
    sm = sm + year_sale[key]
print(f"{sm} {int(sm/(len(year_sale)))}")

#6-40
