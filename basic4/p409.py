# class Student :
#     pet = []
#     def push_pet(self,x) :
#         self.pet.append(x)


# john = Student()
# john.push_pet("고양이")
# print(Student.pet)
# john.push_pet("강아지")
# print(Student.pet)

class Student :
    pet = [] # 클래스 속성, 값을 계속 유지함
    # def __init__(self) -> None:
    #     pass
    # def __init__(self) :
    #     self.pet = []
    def push_pet(self,x) :
        self.pet.append(x)

john = Student()
john.push_pet("고양이")
print(john.pet)
sally = Student()
sally.push_pet("강아지")
print(sally.pet)
