# my_list = ["p","y","t","h","o","n","i","s","f","u","n","!"]
# print(my_list[5:11])
# print(my_list[-5:-2])
# print(my_list[8:])
# print(my_list[:4])

#5-5
# string = "I am a genius!"
# a = []
# for i in range(len(string)) :
#     a.append(string[i])
# print(a)

#5-6
# c = 0
# while c<len(string) :
#     a.append(string[c])
#     c=c+1
# print(a)

numbers = [7,9,15,18,30,-3,7,12,-16,-12]
# seat = [["1","2",3],[2],[3],[4],[5],[6],[7],[8]]
# print(len(seat[1]))
#5-7
sm = 0
# for i in range(len(numbers)) :
#     sum = sum + numbers[i]
# print(sum)
#5-8
# c=0
# while c < len(numbers) :
#     sm = sm + numbers[c]
#     c=c+1
# print(sm)
c=0
while c < len(numbers) :
    if numbers[c] % 2 == 0 :
        sm = sm + numbers[c]
    c=c+1
print(sm)

#5-9
# c=1
# while c < len(numbers) :
#     sm = sm + numbers[c]
#     c=c+2
# print(sm)

#
#5-10
# file_names = ["file1.py", "file2.txt", "file3.pptx", "file4.doc"]

# for i in file_names :
#     fs = i.split(".")
#     print(fs[0],fs[1])
#5-11

# print(f"{변수} => ")