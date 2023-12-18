# start = int(input("시작수는?"))
# stop = int(input("마지막수는?"))
# increase = int(input("증가수는?"))
# for x in range(start, stop, increase) :
#     print(x)

#1~100까지 합
# sum = 0
# for x in range (1, 101, 1) :
#     sum = sum + x
# print(sum)

# sum = 0
# sum2 = 0
# for x in range (1,101,1) :
#     sum = sum + x
#     sum2 = sum2 + sum
# print(sum2)

# for x in range(10) :
#     print(x)

# for x in range (1,11) :
#     print(x)

# for x in range (1,10,2) :
#     print(x)

# for x in range (20, 0, -2) :
#     print(x)

# 2024년도 1월 1일 부터 2024년 1월 31일까지 출력하기

# for x in range (1,32) :
#     print(f"2024 / 1 / {x}")

# 1~100까지 합계 구하기 3000이 넘어가면 멈추고 합계 찍기
# sum = 0
# for x in range(0,101,1) :
#     sum = sum + x
#     if sum > 3000 :
#         print(sum,x)
#         break

# sum = 0
# for x in range( 100, 10001, 5) :
#     sum = sum + x
#     if sum > 5000 :
#         print(sum, x)
#         break

# for x in "abcdefg" :
#     print(x)

# count = 0
# for x in "this is python" :
#     if x == "t" :
#         count = count + 1
# print(count)
# count = 0
# for x in "this is python" :
#     if x == " " :
#         count = count + 1
# print(count)

# for x in range(1,10) :
#     print("", x,"단")
#     for y in range(2,10) :
#         print("%2dx%2d=%2d"%(x, y, x*y), end = ' ')
#     print()


# for x in range(1,10) :
#     print()
#     for y in range(1,x+1) :
#         print("*"*y)

# for i in range (20,1,-2) :
#     print(" "*int(((20-i)/2)), end="")
#     print("*"*i)
# print("          *")
# for i in range (2,21,2) :
#     print(" "*int(((20-i)/2)), end="")
#     print("*"*i)
# print("   *     *")
# print(" ****    *           Merry Christmas")
# print(" *  *    *")
# print(" ****    *")

# for i in range(1,20) :
#     for j in range(1,20-i) :
#         print(" ", end = "")
#     for k in range(1,2*i) :
#         print("*", end="")
#     print()

# 152
# print("-"*30)
# print("  섭씨  화씨")
# print("-"*30)
# for c in range(-20,31,5) :
#     f = c * 9.0/5 +32
#     print("%5d %6.1f"%(c,f))
# print("-"*30)

# 154 C4-1 200~800 정수중 5의 배수 중 아닌것을 출력
# j = 1
# for i in range(200,801,1) :
#     if i%5 != 0 :
#         print(i, end=" ")
#         j = j+1
#         if j > 10 :
#             print()
#             j = 1
#154 C4-2
# print("-"*40)
# print("    cm   mm      m    inch")
# print("-"*40)
# for i in range (1,100) :
#     mm = i * 100
#     m = i * 0.01
#     inch = i *0.3937
#     print ("%5d %5d %6.1f %6.1f" %(i,mm,m,inch))

# #154 C4-5
# num = input("숫자를 입력하세요")
# count = 0

# for i in range(0,len(num),1) :
#     if int(num[i])%2 !=0 :
#         count = count +1
# print("홀수의 개수는 :", count)

#154 C4-6
# print("-"*50)
# print("  킬로그램    파운드      온스")
# print("-"*50)
# for i in range(1,21,1) :
#     lbs = i * 2.20462
#     oz = i *35.274
#     print("%7.3fkg %7.3flbs %7.3foz"%(i,lbs,oz))

#154 C4-7
# for i in range(5):
#     print("* "*10)

#154 C4-8
# for i in range(9,0,-1):
#     for j in range(1,i+1):
#         print(i,end=" ")
#     print()









