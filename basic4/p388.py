try :
    # x = 10
    print(x)
    # def divide(a,b):
    #     c = a/b
    #     print(c)
    # divide(10, 0)
except NameError :
    print("변수의 값이 없습니다")
except ZeroDivisionError :
    print("0으로 나눌 수 없습니다")
finally :
    print("모두 출력")

# try:
#     x = int(input('나눌 숫자를 입력하세요: '))
#     y = 10 / x
#     print(y)
# except:    # 예외가 발생했을 때 실행됨
#     print('예외가 발생했습니다.')
