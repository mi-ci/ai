# #7-1
# # def add (a,b):
# #     c = a+b
# #     print(f"{a}+{b}={c}")

# #7-2
# def sum_int(start, end) :
#     total = 0
#     for i in range(start,end+1):
#         total = total + i
#     print(total)

# #7-3
# def member(*args) :
#     for i in (len(args)):
#         result = result + args[i]
#     print(result)


#7-4
# num = [10,20,30,40,50]
# def multiply(num):
#     for i in range (len(num)):
#         num[i] = num[i] *10
#     print(num)

# multiply(num)
# multiply(num)

#7-5
# width = 10
# height = 15
# def tri_area(a,b) :
#     print(f"넓이 : {a*b/2}")

# tri_area(width,height)

#7-6
# def mult(a) :
#     sum = 0 
#     for i in range(1, 101) :
#         if i%a == 0 :
#             sum = sum + i
#     print(sum)
# a = int(input("구하고자 하는 배수를 입력하세요"))
# mult(a)

#7-7
# def count(s):
#     c = 0
#     for i in s :
#         if i == " " :
#             c=c+1
#     print(c)
# string = "python is easy and powerful"
# count(string)

#7-8
# def get_item(userid) :
#     game_items = {"kim":"총", "lee":"대포", "choi":"전투기"}
#     for key in game_items :
#         if key == userid :
#             item = game_items[key]
#     return item

# print(get_item("kim"))

def func3() :
    global y
    y = 300
    y = y-10
    print(y)

func3()
print(y)






