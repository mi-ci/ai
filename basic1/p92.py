# a=10
# b=20
# c=10+20

# print("10+20=30")

# #2-4
# a = "사과"
# b = "딸기"
# print(a, "와 ", b, "는 내가 좋아하는 과일이다")

# #2-5
# print(a,"와 ",b, "는 내가 좋아하는 과일이다", sep="")

# #2-6
# print(f"{a}와 {b}는 내가 좋아하는 과일이다")

# #2-7
# a=5
# b=3
# print(a/b)

# #2-8
# print(round((a/b),3))

# #2-9
# a="hong"
# b="naver.com"
# print(a+"@"+b)

# #2-10
# # name = input("이름을 입력하세요")
# # addr = input("주소를 입력하세요")
# # tele = input("전화번호를 입력하세요")
# # print(name, addr, tele)

# #2-11
# a=10
# b=20
# h=5
# print((a+b)*5/2)

#2-12
a="가는 말이 고와야 오는 말이 곱다"
print(a[6:14])

#2-13
# kg = input("변환할 킬로그램(kg)")

#2-14
a = "010-1234-5678"
b=""
# print(type(a))
# for i in range(0,len(a),1) :
#     if a[i] == "-" :
#         pass
#     else :
#         b=b+a[i]
# print(b)

for i in range(0,len(a),1) :
    try :
        c = (int)(a[i])+1
        b=b+a[i]
    except :
        pass
print(b)

# b = a.split("-")
# c=""
# for i in range(0,len(b),1):
#     c=c+b[i]
# print(c)
# print(a.replace("-",""))
# print((len(a)))
# for i in range(0,len(a),1) :
#     if a[i]










