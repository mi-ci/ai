matrix(1:30, nrow=5, ncol=6, byrow=T)
matrix(101:200, nrow=10, ncol=10)

x = 1:5
x
y = 8:12
y
sum.xy = cbind(x,y)
sum.xy

sum.xy1 = rbind(x,y)
sum.xy1

a=1:5
b=101:105
c=201:205
sum.abc = rbind(a,b,c)
sum.abc

a=12:9
b=8:5
c=4:1
sum.abc = rbind(a,b,c)
sum.abc

z = matrix(12:1, nrow=3, ncol=4, byrow=T)
z
rownames(z) = c('v1','v2','v3')
z[2,4]
z[1,]
z[,2:3]
z[1]+z[2]
z[,c(2,4)]

score = matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4, ncol=3)
score
rownames(score) = c('John', 'Tom', 'Mark', 'Jane')
score
colnames(score) = c('국어', '영어', '수학')

score['Jane','국어']
score['국어','Jane']
mean(score[,'수학'])

rownames(score)[2]
z = matrix(12:1, nrow=3, ncol=4, byrow=T)
z
colnames(z) = c('a1','a2','a3','a4')
z
v1=1:7
z = rbind(z,v1[v1%%2==1])
z
z[4,]
z[2:4,c(1,3)]
colnames(z)[3]

city = c('서울', '도쿄', '워싱턴')
rank= c(1,3,2)
etc = c(T, T, F)
city.info = data.frame(city, rank, etc )
city.info
city.info[2,1]
colnames(city.info)

iris
head(iris, n=10)
tail(iris)
head(iris[, c(1:2)])
head(iris[, "Petal.Width"])
dim(iris)
unique(iris[,5])
iris[,5]
iris
table(iris[,"Species"])
colSums(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

st=data.frame(state.x77)
head(st)
dim(st)
str(st)
rownames(st)
colnames(st)
dim(st)[1]
str(st)
rowSums(st)
colSums(st)
colMeans(st)
colSums(st)
st['Florida',]
st[,'Income']
st['Texas','Area']
st['Ohio',c('Population','Income')]
st[st[,1]>5000,]
st[st[,2]>4500,c(1,2,8)]
dim(st[st[,2]>4500,c(1,2,8)])[1]
st[st[,8]>100000&st[,7]>120,]
st[st[,1]<2000&st[,5]<12,]
abs(mean(st[st[,3]>=2,2])-mean(st[st[,3]<2,2]))
st[st[,4]==max(st[,4]),]
rownames(st[st[,2]>st['Pennsylvania',2],])

city.info
t(city.info)
subset(st, Population>=5000)
subset(st, Income>4500)[,c(1,2,8)]
dim(subset(st, Income>4500))[1]

class(iris)
is.matrix(iris)
is.data.frame(iris)
class(st)
class(iris)
iris.matrix = as.matrix(iris)
class(iris.matrix)
iris.matrix
st
iris$Species
tom = c(20,'M',180, T)
jane = c(23,'F',160, T)
nick = c(26,'M',175, F)

name = c('Tom', 'Jane', 'Nick')
age = c(20,23,26)
gender = c('M',"F",'M')
height = c(180,160,175)
student = c(T,T,F)
human = data.frame(name,age,gender,height,student)
human
human.new = list(name='Mary', age=24, gender='F', height=155, student=T)
human.new
human = rbind(human, human.new)
human
str(human)
dim(human)
class(human)
mean(human$age)
human['age']
human[,'age']
human[2]
human[,2]
mean(human$height)
colnames(human)
colnames(human[-4])
table(human$gender)

setwd("C:/ai/study/r_study") #파일 불러올 경로
air = read.csv('airquality.csv')
air
class(air)
air['Ozone']

air3=read.csv(file.choose())
head(air3)

iris.setosa = subset(iris,Species=='setosa')
iris.setosa
write.csv(iris.setosa, 'irisfilename.csv')
write.csv(iris.setosa, 'irisFile1.csv', row.names = F)
write.csv(iris.setosa, file.choose())























