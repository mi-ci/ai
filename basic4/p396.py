# 클래스 : 설계도 (필드-변수, 함수-동작)
# 객체 : 클래스를 메모리 올려서 실제 자료 넣어주는것
# 메소드 : 클래스안에 있는 함수, 동작하기
# 필드 : 파이썬에서 속성

class Person :
    name = "홍길동"
    list1 = []
    def method1(self): #self 자기자신 Person 클래스 가르킨다
        print("메소드임")
    def method2(a, age) :
        print("나이는 :", age)

p1 = Person()
# print(p1.name)
# p1.list1.append("aa")
# print(p1.list1)
p1.method2(17)
print(Person.name)
Person.method1()