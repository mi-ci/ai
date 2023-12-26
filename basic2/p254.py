# def hello() :
#     print("hi")

# def goodMorning() :
#     print("good morning")

# hello()

# def me(name,height):
#     print(f"나는{name}야 키가 {height}이야")

# me("민수",170)

# def average(*args) :
#     num_args = len(args)
#     sum = 0
#     for i in args :
#         sum = sum + i
#     print(sum/len(args))
# average(100,90,80,70,60)

def printAll(*args) :
    for i in args :
        print(f"{i}", end=" ")
printAll("a","b","c","d")