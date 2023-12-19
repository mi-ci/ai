# fac = 1
# for i in range (1,11):
#     fac = fac*i
# print(fac)

#4-1
# count = 0
# for i in range(1,1001):
#     if i%3 != 0 :
#         print(i, end=" ")
#         count = count +1
#         if count >= 10 :
#             print()
#             count = 0
# a=0
# count = 0
# while 1==1 :
#     a=a+1
#     if a>1000 :
#         break
#     else :
#         if a%3 != 0 :
#             print(a, end=" ")
#             count = count + 1
#             if count >= 10 :
#                 print()
#                 count = 0

# while 1==1 :
#     a = int(input("점수를 입력하세요"))
#     if a > 90 :
#         print("수")
#     elif a > 80 :
#         print("우")
#     elif a > 70 :
#         print("미")
#     elif a > 60 :
#         print("양")
#     elif a <= 60 :
#         print("가")
#     a = input("계속하시겠습니까?(y,q)")
#     if a == "y" :
#         pass
#     elif a == "q" :
#         break
#     else :
#         break

#4-3
# a = int(input("시작수를 입력하세요"))
# b = int(input("끝수를 입력하세요"))
# count = 0
# for i in range (a,b+1) :
#     for j in range(2,i) :
    #     if i%j == 0 :
    #         c = int(i/j)
    #     else :
    #         c = i/j
    #     if type(c) != type(1) :
    #         count = count +1
    # if count == i-2 :
    #     print(i)
    # count = 0
    #     if i%j == 0 :
    #         break
    #     else :
    #         count = count + 1
    # if count == i-2 :
    #     print(i)
    # count = 0