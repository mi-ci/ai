10/4
log(10, base=2.718)
sqrt(4)
max(10,5,9)
abs(-10)
factorial(5)
sin(pi/2)s
factorial(100)
sin(60)

pi
pie()
rm(pi)
pi
name = '홍길동'
name
.name = '홀길동'
.name 
sqrt(-3)
Inf

25+99
456-123
2*(3+4)
(3+5*6)/7
(7-4)*3
210+35
1256%%7
184%%5
1976/24
16*25+186*5-67*22
# 안녕하세요
pi=3.14

10^2*pi
12^2*pi
15^2*pi
y = log(sqrt(8), base=2)
y = log(sqrt(12), base=2)
y = log(sqrt(16), base=2)
log(4, base=2)

x = c(1,2,F)
y = c('a','b','c')
z = c('a', TRUE, FALSE)
x = c(1,3,'a','b')
num = 200:500
num
c(100:300, 400:500)
sequence(1,2,10)
help(seq)
seq(1,100,2)
seq(99,1,-2)
help(rep)
rep(1:4,2)
rep(1:4,each=2)
rep(1:4, c(2,2,2,2))
rep(T,20)

score = c(90,85,70)
score
names(score)
names(score) = c('김수진', '이영미', '최진수')
score[1]
score['이영미']
score[2:3]
score[c('이영미', '최진수')]


v1 = c(1,5,7,8,9)
v1[c(1,5)] = c(10,20)
v1

x = 10:14
y = 20:25
x
y
x+y
x*y

d=1:10
sum(d)
length(d)
mean(d)
max(d)
min(d)
sort(d)
sort(d, decreasing = T)
d=1:9
d
d[d>5]
d[d!=5]
d[d>4 & d<9]

d=100:200
d
d[10]
sort(d, decreasing = T)[c(1:10)]
for(i in d){
  if(i%%3==0){
    cat(i," ")
  }
}
seq(min(d)+1,max(d),2)
seq(min(d)+2,max(d),3)
d.20 = d[c(1:20)]
d.20
d.20[1:length(d.20)!=5]
d.20[1:length(d.20)!=5 & 1:length(d.20)!=7 & 1:length(d.20)!=9]

absent = c(10, 8, 14, 15, 9, 10, 15, 12, 9, 7, 8, 7)
names(absent) = c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')
absent
absent['May']
absent[c('Jul', 'Sep')]
sum(absent[1:6])
sum(absent[7:12])

d1 = 1:50
d2 = 51:100
d1
d2
length(d2)
d1+d2
d2-d1
d1*d2
d2/d1
sum(d1)
sum(d2)
sum(d1)+sum(d2)
min(d2)
max(d2)
mean(d1)
mean(d2)
mean(d2)-mean(d1)
sort(d1, decreasing = T)
d11 = sort(d1,decreasing = F)[1:10]
d22 = sort(d2,decreasing = F)[1:10]
d3=c(d11,d22)
d3

v1 = 51:90
v1[v1<60]
length(v1[v1<70])
sum(v1[v1>65])
v1[v1>60 & v1<73]
v1[v1>80 | v1<65]
for(i in v1){
  if(i%%7==3){
    cat(i ," ")
  }
}
for(i in v1){
  if(i%%7==0){
    v1[i-50]=0
  }
}
v1[v1%%7==3]
v1[v1%%7==0] = 0
sum(v1[v1%%2==0])
v1[v1%%2==1 | v1>80]
v1[v1%%3==0 | v1%%5==0]
v1[v1%%2==0] = v1[v1%%2==0]*2
v1
v1 = 51:90
v1[!v1%%7==0] 

ds = c(90,85,70,84)
my.info = list(name="Tom", age=60, status=TRUE, score=ds)
my.info
my.info$score

bt = c('A', 'B', 'B', 'O', 'AB')
bt.new = factor(bt)
bt.new
bt.new[1:3]
levels(bt.new)
as.integer(bt.new)
bt.new[6]='A'
bt.new
bt.new[7]='O'
bt.new[8]='C'

nn = c('동', '서', '남', '북', '북', '북')
nn.new = factor(nn)
nn.new
as.integer(nn.new)
nn.new[7]='동'

a = 4
b = 5
c=a+b
c
x=6
x=8
x=10
y=2*2+5*x+10
y

val.a = 10
val.b=10
sum.ab = val.a+val.b
sum.ab
vc.1 = c(95, 86, 47, 55, 68)
vc.1
































































































