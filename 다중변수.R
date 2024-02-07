class(mtcars)
head(mtcars)
mtcars$wt
plot(mtcars$wt,mtcars$mpg, main="중량-연비 그래프")
par(mfrow=c(1,1))

vars = c('mpg','disp','drat','wt')
head(mtcars)
target = mtcars[, vars]
target
pairs(target)
dim(mtcars)
dim(target)

iris
head(iris)
iris.2 = iris[,3:4]
iris.2
point = as.numeric(iris$Species)
color = c('red','green','blue')
plot(iris.2, main="붓꽃의 꽃잎 길이와 넓이 상관관계", pch=c(point), col=color)
?pch

x = c(2,3,5,6)
y = c(4,3,3,10)
tbl = data.frame(x,y)
tbl
cor(x,y)
plot(tbl)

beers = c(5,2,9,8,3,7,3,5,3,5) 			# 자료 입력 
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07, 	# 자료 입력
         0.06,0.02,0.05)

tbl = data.frame(beers, bal)
plot(tbl, col="red", pch=3)
cor(beers, bal)
res = lm(bal~beers, data=tbl)
abline(res)

head(iris)
tbl2=iris[,1:4]
class(tbl2)
tbl2
plot(tbl2)

t1=iris$Petal.Length
t2=iris$Petal.Width
tbl3=data.frame(t1,t2)
plot(t1,t2)
res = lm(t2~t1, data = tbl3)
abline(res)
cor(t1,t2)
cor(iris[,1:4])

month=1:12
late=c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month,late, main="월별 지각생수", type="o", lty=1)


install.packages('mlbench')
library(mlbench) #활성 시키는것 import?
data('BostonHousing')
head(BostonHousing)
str(BostonHousing)
var = c('crim','rm','dis','tax','medv')
getOption("max.print")
options(max.print=999999)
bh = BostonHousing[,var]
bh
head(bh)
grp = c()
for(i in 1:nrow(bh)){
  if(bh$medv[i]>=25.0){
    grp[i]='H'
  }
  else if(bh$medv[i]<=17.0){
    grp[i]='L'
  }
  else{
    grp[i]='M'
  }
}
class(grp)
bh[grp[grp=='M'],]
grp=factor(grp)
grp
levels(grp)
factor(grp, levels=c('H','M','L'))
myds=data.frame(bh,grp)
myds
head(myds)

par(mfrow=c(2,3))
for(i in 1:5){
  hist(myds[,i], main=colnames(myds[i]), xlab=colnames(myds[i]), ylab='빈도수')
}























