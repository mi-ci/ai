class Members :
    # def __init__(self) :
    #     self.name = None
    #     self.age = None
    #     self.gender = None
    def __init__(self) -> None:
        pass
    def __init__(self, name, age) :
        self.name = name
        self.age = age
    def __init__(self, name, age, gender) :
        self.name = name
        self.age = age
        self.gender = gender
    def show_info(self) :
        print("이름 :", self.name)
        print("나이 :", self.age)
        print("성별 :", self.gender)
        

m1 = Members("홍길동", 10)
m1.show_info()
# print(globals())
# m2 = Members("홍길동", 20, True)
# m2.show_info()

