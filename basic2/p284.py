# def printSum(sList) :
#     global r
#     r = 0
#     for s in sList :
#         r = r + s
#     return r

# sList = [1,3,5,6,2]
# printSum(sList )
# print(r)

#7-1 - x는 함수 속 지역변수

#7-2 - 200, 100
# def func() :
#     x = 200
#     print(x)
# x=100
# func()
# print(x)
#7-3 - 200, 200
# def func():
#     global x
#     x = 200
#     print(x)

# x=100
# func()
# print(x)

#7-4
# def cal():
#     m = k*0.621371
#     print(f"{k}키로미터는 {m}마일이다") 

# def k2m() :
#     global k
#     k = int(input("킬로미터를 입력하세요"))
#     cal()

# k2m()

#7-5
# def plus() :
#     print(f"{a1}+{a2}={a1+a2}")
# def minus() :
#     print(f"{a1}-{a2}={a1-a2}")
# def multi() :
#     print(f"{a1}*{a2}={a1*a2}")
# def div() :
#     print(f"{a1}/{a2}={a1/a2}")
# def cal():
#     global a1,a2
#     print("-선택 옵션")
#     print("1. 더하기")
#     print("2. 빼기")
#     print("3. 곱하기")
#     print("4. 나누기")
#     a = int(input("원하는 연산을 선택하세요(1/2/3/4) : "))
#     a1 = int(input("첫 번째 숫자를 입력하세요 : "))
#     a2 = int(input("두 번째 숫자를 입력하세요 : "))
#     if a == 1 :
#         plus()
#     if a == 2 :
#         minus()
#     if a == 3 :
#         multi()
#     if a == 4 :
#         div()
# cal()

#7-6
# def ct(a,b) :
#     count = 0
#     for i in a :
#         if i == b :
#             count = count +1
#     return count
# def pr():
#     s = input("영어 문장을 입력하세요 : ")
#     a = input("알파벳 하나를 입력하세요 : ")
#     c = ct(s,a)
#     print(f"{s}에 포함된 {a}의 개수는 {c}개이다")

# pr()

#7-7
# def sa(a) :
#     sum = 0
#     for i in a :
#         sum = sum + i
#     print("튜플의 합계 :",sum)

# tup1 = (10,20,30,40,50)
# sa(tup1)

#7-8
# def rev(a) :
#     b = ""
#     for i in range (len(a)) :
#         b = b + a[-(i+1)]
#     print(b)
# def reverse():
#     a = input("문자열을 입력하세요 : ")
#     rev(a)
# reverse()

#7-9
# def blank(a) :
#     a = a.replace(" ","-")
#     print(a)
# def program():
#     a = input("문자열을 입력하세요")
#     blank(a)
# program()

#7-10
# def length(a):
#     result = a * 0.393701
#     print(result)
# def weight(a):
#     result = a * 2.204623
#     print(result)
# def program():
#     print("-선택 옵션")
#     print("1. 길이 환산(cm->inch)")
#     print("2. 무기 환산(kg->lbs)")
#     a = int(input("원하는 환산 단위를 선택하세요.(1/2) : "))
#     if a == 1 :
#         l = int(input("센티미터 단위의 길이를 입력하세요"))
#         length(l)
#     if a == 2 :
#         w = int(input("센티미터 단위의 길이를 입력하세요"))
#         weight(w)
# program()

#7-1
# def primec(a):
#     for i in range(2,a+1) :
#         count = True
#         for j in range(2, i) :
#             if i%j == 0 :
#                 count = False
#                 break
#         if count == True :
#             print(i, end=" ")
# def prime():
#     a = int(input("n값을 입력하세요"))
#     primec(a)

# prime()

#7-2
# eng_dict = {"house" : "집", "piano" : "피아노", "christmas" : "크리스마스", "friend" : "친구", "bread" : "빵", }


# def quiz(dict):
#     a = input(f"집에 맞는 영어 단어는? ")
#     if dict.get(a) == "집" :
#         print("참 잘했어요")
#     else :
#         print("틀렸어요")
#     a = input(f"피아노에 맞는 영어 단어는? ")
#     if dict.get(a) == "피아노" :
#         print("참 잘했어요")
#     else :
#         print("틀렸어요")
#     a = input(f"크리스마스에 맞는 영어 단어는? ")
#     if dict.get(a) == "크리스마스" :
#         print("참 잘했어요")
#     else :
#         print("틀렸어요")
#     a = input(f"친구에 맞는 영어 단어는? ")
#     if dict.get(a) == "친구" :
#         print("참 잘했어요")
#     else :
#         print("틀렸어요")
#     a = input(f"빵에 맞는 영어 단어는? ")
#     if dict.get(a) == "빵" :
#         print("참 잘했어요")
#     else :
#         print("틀렸어요")

# quiz(eng_dict)

#7-3
# def square(n):
#     a = []
#     for i in range(1,n+1) :
#         a.append(i*i)
#     print(a)

# def program():
#     a = int(input("n값을 입력하세요 : "))
#     square(a)

# program()

# def 내계산기() :
#     print(3)

# 아무숫자를 입력하면 소수를 찾는 프로그램 만들기
# 100
# 2~100까지 찾아
# 소수를 찾으려면 2~100 까지 숫자 하나하나 다 확인해봐야되요
for i in range(2,101):
    print(i)