month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
late3 = c(1,4,6,2,4,5,1,3,2,0,1,3)
plot(month, late1, main="월별 지각 학생수", type='b', col='red', xlab='월', ylab='인원', ylim=c(1,15))
lines(month,late2, type='b', col='blue')
lines(month,late3, type='b', col='green')

install.packages('mlbench') # 패키지 다운 받기
library(mlbench)
data('BostonHousing')
head(BostonHousing)
str(BostonHousing)
myds = BostonHousing[,c('crim', 'rm', 'dis', 'tax', 'medv')]
head(myds)
grp = c()
for(i in 1:nrow(myds)){
  if(myds$medv[i] >=25.0){
    grp[i] = 'H'
  }
  else if(myds$medv[i]<=17.0){
    grp[i]='L'
  }
  else{
    grp[i]='M'
  }
}
grp
class(grp)
grp = factor(grp,levels = c('H','M','L'))
head(grp)
myds = data.frame(myds,grp)
table(myds$grp)
par(mfrow=c(2,3))
for(i in 1:5){
  hist(myds[,i])
}
head(myds)

par(mfrow=c(1,1))
boxplot(myds$crim~myds$grp.1, data=myds, main="1인당 범죄율")
boxplot(myds$rm~myds$grp.1, data=myds, main="방의 갯수에 따른 분류")
boxplot(tax~grp.1,data=myds, main='세금에 따른 분류')
BostonHousing
pairs(myds[,1:5])
point = as.integer(myds$grp.1)
unique(point)
head(point)
myds = myds[,-6]
myds
color = c('red', 'green', 'blue')
pairs(myds, col=color, pch=point)

cc= cor(myds[,1:5])
cc[1,1:5]
cc[5,1:5]

cars
boxplot(cars$dist~cars$speed)
cor(cars$speed, cars$dist)

pressure
boxplot(pressure$pressure~pressure$temperature)
cor(pressure$temperature,pressure$pressure)

head(swiss)
pairs(swiss[,1:4])

plot(iris$Petal.Length~iris$Species)
boxplot(iris$Petal.Width~iris$Species)
pairs(iris[3:5])

income = c(121,99,25,35,40,30,150,24,50,60)
edu = c(19,20,16,16,18,12,24,12,16,17)
plot(edu,income)
res = lm(income~edu)
abline(res)
cor(edu,income)
cor(income,edu)

hum =c(56,67,89,91,53,41,46,71,80,92)
bik =c(92510,74801,27168,33929,89807,92153,92045,75328,48756,21875)
plot(hum,bik)
res = lm(bik~hum)
abline(res)
cor(bik,hum)

class(st)
head(st)

st = data.frame(state.x77)
par(mfrow=c(3,3))
for(i in 1:ncol(st)){
  if(i!=2){
    plot(st$Income, st[,i], ylab=colnames(st[i]), main=cor(st$Income, st[,i]))
  }
}

par(mfrow=c(1,1))
year = c(2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026)
pop = c(51014,51245,51446,51635,51811,51973,52123,52261,52338,52504,52609,52704)
plot(year,pop,type="l")

year <- c(20144,20151,20152,20153,20154, 
          20161,20162,20163,20164,
          20171,20172,20173)
male <- c(73.9,73.1,74.4,74.2,73.5,73,
          74.2,74.5,73.8,73.1,74.5,74.2)
female <- c(51.4,50.5,52.4,52.4,51.9,50.9,
            52.6,52.7,52.2,51.5,53.2,53.1)
plot(year,male,type="l",col="blue",ylim=c(50,75))
lines(year,female,type="l",col="red")

trees
plot(trees$Height~trees$Girth)
plot(trees)
Orange
color=c('red','orange','green','blue','purple')
plot(Orange$circumference~Orange$age, col=color)

install.packages('mlbench')
library(mlbench)
data('Glass')
head(Glass)

head(LakeHuron)
class(LakeHuron)
LakeHuron
str(LakeHuron)
dim(LakeHuron)
length(LakeHuron)
plot(LakeHuron)

years = 1875:1972
hlevels = as.vector(LakeHuron)
hlevels
plot(years,hlevels,type="b", col='blue', ylab="수위", main="LakeHuron")

AirPassengers
head(AirPassengers)
str(AirPassengers)
class(AirPassengers)

year.1949 = window(AirPassengers, 1949, c(1949,12))
year.1955 = window(AirPassengers, 1955, c(1955,12))
year.1960 = window(AirPassengers, 1960, c(1960,12))
year.1955
p
plot(p)
months = 1:12
plot(months, year.1949, main='년도별 항공승객수', ylab="승객수", type='b', col='red', ylim=c(100,1000))
lines(months, year.1955, type='b', col="blue")
lines(months, year.1960, type='b', col="green")

USAccDeaths
class(USAccDeaths)
plot(USAccDeaths)
year.1973 = window(USAccDeaths, 1973, c(1973,12))
year.1975 = window(USAccDeaths, 1975, c(1975,12))
year.1977 = window(USAccDeaths, 1977, c(1977,12))
plot(months, year.1973, ylim=c(6000,12000), col="red", type="l")
lines(months, year.1975, type='l', col="blue")
lines(months, year.1977, type='l', col="green")





























