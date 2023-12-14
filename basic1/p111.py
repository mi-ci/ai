import random

#111 페이지
# start = int(input("시작수는? "))
# end = int(input("끝수는? "))
# num = int(input("정수를 입력하세요"))

# result = print(f"{num}은 {start}~{end} 사이에 있습니다")
# result2 = print(f"{num}은 {start}~{end} 사이에 없습니다")
# if start <= num <= end :
#     print(result)
# else :
#     print(result2)
# print(random.random())
# print(random.randrange(1,7))

n = random.randint(1,30)
c = 0
while 1==1 :
    a = int(input("답은?"))
    if n > a :
        print("큽니다")
        c=c+1
    elif n == a :
        print("정답입니다")
        c=c+1
        break
    elif n < a :
        print("작습니다")
        c=c+1
    else :
        print("1-30 까지 입력해주세요")
print(c,"번만에 맞췄습니다")

