# f = open("./basic3/score.txt", "r", encoding="utf-8")
# lines = f.readlines()
# # print(lines)
# for line in lines : 
#     data = line.split()
#     # print(data)
#     i=0
#     sum=0
#     while i <len(data):
#         if i == 0 :
#             print(data[i], end=" : ")
#         else :
#             sum = sum + int(data[i])
#         i=i+1
#     print(sum, sum/(len(data)-1))
# f.close()










f = open("basic3/data.txt" , "r", encoding="utf-8")
lines = f.readlines()
for line in lines:
    a = line.split(",")
    sum = 0
    for i in range(len(a)):
        if i == 0 :
            print(a[i], end=" ")
        else :
            sum = sum + int(a[i])
    print(sum)


















