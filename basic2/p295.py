#c8-1
# def cal(x):
#     sum = 0
#     for i in range(1,x+1):
#         if(i==x) :
#             print(f"{i}*{i}*{i} = ", end = "")
#             sum = sum + i*i*i
#         else :
#             print(f"{i}*{i}*{i} + ", end = "")
#             sum = sum + i*i*i
#     print(f"{sum}")
# def oddsq():
#     a=int(input("N의 값을 입력하세요 : "))
#     cal(a)

# oddsq()


#c8-2
# def cal(x):
#     sum = 0
#     for i in range(1,x+1):
#         if i%2 == 1:
#             if(i==x-1) :
#                 print(f"{i}*{i}*{i} = ", end = "")
#                 sum = sum + i*i*i
#             else :
#                 print(f"{i}*{i}*{i} + ", end = "")
#                 sum = sum + i*i*i
#     print(f"{sum}")
# def oddsq():
#     a=int(input("N의 값을 입력하세요 : "))
#     cal(a)

# oddsq()

#회문 구하는 알고리즘
# def palin(x):
#     flag = True
#     if len(x) % 2 == 0 :
#         print("회문이 아닙니다")
#     else :
#         for i in range(int(len(x)/2)) :
#             if x[i] == x[-(i+1)] :
#                 pass
#             else :
#                 flag = False
#     if flag == True :
#         print("회문입니다")
#     else :
#         print("회문이 아닙니다")
# def pal():
#     a = input("단어를 입력하세요")
#     palin(a)

# pal()


## 선형탐색, 순차탐색, 앞에서 부터 차례대로 찾기, 정렬이 안된자료 찾기

# def find_max(n):
#     mx = n[0]
#     i=1
#     while i < len(n):
#         if mx < n[i] :
#             mx = n[i]
#         i=i+1
#     return mx


# data = [5, -3, 12, 8, 2]
# max_value = find_max(data)
# print(str(max_value))

#이진검색 - 정렬이 되어있어야만 검색할 수 있음

# def bin(data, search):
#     m = int((len(data)-1)/2)
#     if search >= data[m] :
#         for i in range(m, len(data)) :
#             if search == data[i] :
#                 result = i
#     else :
#         for i in range(m):
#             if search == data[i]:
#                 result =i
#     return result
# data = [7,16,23,35,40,52,68,78,82]
# search_num = 16
# index = bin(data, search_num)
# print(index)

#322 8-3
sentence = "강아지/사슴/거북/고릴라/청개구리"
ss = sentence.split("/")
for i in ss :
    print(f"{i} : {len(i)}")

