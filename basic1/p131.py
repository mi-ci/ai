num1 = int(input("첫번째 정수는?"))
num2 = int(input("두번째 정수는?"))
num3 = int(input("세번째 정수는?"))
if num1>num2 and num1>num3 :
    print("가장큰수는:",num1)
if num2>num1 and num2>num3 :
    print("가장큰수는:",num2)
if num3>num2 and num3>num1 :
    print("가장큰수는:",num3)

# if num1<num2 and num1<num3 :
#     print("가장작은수는:",num1)
# elif num2<num1 and num2<num3 :
#     print("가장작은수는:",num2)
# elif num3<num2 and num3<num1 :
#     print("가장작은수는:",num3)

if num1<num2 and num1<num3 :
    a = num1
elif num2<num1 and num2<num3 :
    a = num2
elif num3<num2 and num3<num1 :
    a = num3

if num1>num2 and num1>num3 :
    b = num1
if num2>num1 and num2>num3 :
    b = num2
if num3>num2 and num3>num1 :
    b = num3

if num1 != a and num1 != b :
    print(num1)
