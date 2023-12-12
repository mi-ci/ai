#1
letters = "java programming"
print(letters[5],letters[1],letters[8])

#2
pn = "43다 6521"
print(pn[4:])

#3
string = "홀짝홀짝홀짝홀짝홀짝"
print(string[1::2])

#4
string = "PYTHON"
print(string[::-1])

#5
phone_number = "010-888-9999"
print(phone_number.replace("-",""))

#6
phone_number = "010-888-9999"
print(phone_number.replace("-"," "))

#7
url = "http://gmail.com"
print(url.split(".")[1])

#8
lang ="java python"
# lang[0] = "K"
print(lang)

#9
lang = lang.replace("j","K")
print(lang)

#10
# ab!defABCDEFab!

#11
# abcdefABCDEFabc

#12
a="123"
b="456"
print(a+b)

#13
print("Hi!"*5)

#14
print("+"*150)

#15
s1 = "python"
s2 = "c++"
s3 = "java"
print((s1+" "+s2+" "+s3+" ")*6)

#16
print("H"*5+"\n"+"I"*5+"\n"+"!"*5)

#
lowerWord = "python is very good"
upperWord = lowerWord.upper()
print(upperWord[0].lower())

#
filename = "abc.csv"
print(filename.endswith("csv" or "xlxs"))