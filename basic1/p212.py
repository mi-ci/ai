jumsu = [[10,20],[30,40,50],[50]]
# sum = 0
# for i in range(len(jumsu)) :
#     for j in range(len(jumsu[i])) :
#         sum = sum + jumsu[i][j]
# print(sum)

# sm = 0
# a = [1,2,3]
# print(sum(a))
# print(sum(jumsu[0]+jumsu[1]+jumsu[2]))
# for i in range(len(jumsu)) :
#     sm = sm + sum(jumsu[i])
# print(sm)

#217쪽
# cafe = [["원두커피", "라떼", "콜라"], ["우동", "국수", "피자", "파스타"]]
# print(cafe[1][1])
# cafe[1].remove("피자")
# cafe[1].remove("파스타")
# cafe[0][0] = "아메리카노"
# print(cafe)
# findIndex = 110
# for i in range(len(cafe)) :
#     if type(cafe[i].index("아메리카노")) == type(2) :
#         findIndex == cafe[i].index("아메리카노")
#     else :
#         pass
#     if findIndex != 110 :
#         findIndex0 = i
# print(cafe[i][findIndex])
# print(cafe[0].index("아메리카노"))

# 
# cafe = [["원두커피", "라떼", "콜라"], ["우동", "국수", "피자", "파스타"]]
# cafe = ",".join(cafe)
# print(cafe)

seats = [[0,0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,0,0], 
         [0,0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,0,0], 
         [0,0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,0,0]]
# seats2 = [[], [], [], [], [], [], [], []]
for i in range(len(seats)) :
    print(f"{i}행", end = " ")
    for j in range(len(seats[i])) :
        if seats[i][j] == 0 :
            seats[i][j] = "□"
            print(seats[i][j], end=" ")
        else :
            seats[i][j] = "■"
            print(seats[i][j], end=" ")
    print()

    # seat[1][3]
number = ["가","나","다","라","마"]
# print(number[0])
# print(number[1])
# print(number[2])
# print(number[3])
# print(number[4])

print(0) 
print(1)
print(2)
print(3)
print(4)

print(number[0])    
print(number[1])
print(number[2])
print(number[3])
print(number[4])

# for i in range(0,5) :
#     print(i)

# print(number[0])
# print(number[1])
# print(2)
# print(3)
# print(4)