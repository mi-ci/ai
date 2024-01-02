def add(a,b):
    c = a+b
    return c
def sub(a,b):
    c = a-b
    return c
def mul(a,b):
    c = a*b
    return c
def div(a,b):
    c = a//b
    return c
def mm(a,b):
    c = b*b + a
    return c
def ss(a,b,c):
    if a>b :
        if c>b :
            return b
    elif b>a :
        if c>a :
            return a
    else :
        return c