z = c(1,2,3,NA,5,NA,8)
sum(z)
sum(z, na.rm=T)
is.na(z)
class(is.na(z))
na.omit.new = na.omit(z)
na.omit.new
na.new.ds = as.vector(na.omit.new)
na.new.ds

x = iris[1:50,]
x
x[1,2]=NA; x[1,3]=NA; x[2,3]=NA; x[3,4]=NA;
head(x)
is.na(x[1:5,])
for(i in 1:ncol(x)){
  this.na=is.na(x[,i])
  cat(i, sum(this.na), '\n')
}
for(i in 1:5){
  this.na=is.na(x[i,])
  cat(i, sum(this.na), '\n')
}
for(i in 1:5){
  is.na(x[i,])=1
}

ds=mtcars
head(ds)
is.na(ds[2,])
ds[2,3]=NA; ds[3,1]=NA; ds[2,4]=NA; ds[4,3]=NA

for(i in 1:nrow(ds)){
  this.na=is.na(ds[i,])
  cat(i, sum(this.na), '\n')
}
for(i in 1:nrow(ds)){
  if(sum(is.na(ds[i,]))>0){
    print(ds[i,])
  }
}

na.omit(ds)
head(ds)
 
st1 = data.frame(state.x77)
boxplot.stats(st$Population)
st$Population
boxplot.stats(st$Population)$out
popu.out = boxplot.stats(st$Population)$out
popu.out
st$Population[st$Population==1]=NA
sum(is.na(st$Population))

mt2=data.frame(mtcars)
mt2
ncol(mt)
par(mfrow=c(3,4))
par(mfrow=c(1,1))
for(i in 1:ncol(mt)){
  mt.out=boxplot.stats(mt[,i])$out
  mt[,i][mt[,i] %in% mt.out]=NA
}
boxplot(mt2[,6])

mt3 = mt[complete.cases(mt), ]
mt3
mt4=na.omit(mt)
mt4

aq2 = airquality
aq
head(aq)
class(aq)
str(aq)
dim(aq)

for(i in 1:ncol(aq)){
  cnt = sum(is.na(aq[,i]))
  cat(colnames(aq[i]), cnt, '\n')
}

for(i in 1:nrow(aq)){
  cnt = sum(is.na(aq[i,]))
  cat(i, cnt, '\n')
  
}
na.omit(aq)
aq[complete.cases(aq),]

for(i in 1:ncol(aq)){
  means = mean(aq[,i][!is.na(aq[,i])])
  aq[,i][is.na(aq[,i])]=means
}
# aq[,1][is.na(aq[,1])]
# !is.na(aq[,i])
# aq[,1][!is.na(aq[,1])]
aq
colMeans(aq[1])

#########################################
head(iris)
sort(iris$Sepal.Length)
sort(iris$Sepal.Length, decreasing=T)
order(iris$Sepal.Length)
class(iris)
order(head(iris[,1], n=15))

iris[order(iris$Sepal.Length, decreasing = T),]

#4
st = data.frame(state.x77)
st[order(st$Population),]
st[order(st$Income, decreasing = T),]
head(st[order(st$Illiteracy),3,drop=FALSE], n=10)

head(iris)
a= split.data.frame(iris,iris$Species ,drop=FALSE)
str(iris)
head(a$setosa)
summary(a)
nrow(a$virginica)
mt.gear = split.data.frame(mtcars,mtcars$gear)
mt.gear
summary(mt.gear)
class(mt.gear$'4')

mt.gear.3 = mt.gear$`3`
mt.gear.5 = mt.gear$`5`
rbind(mt.gear.3, mt.gear.5)
mt.wt = split.data.frame(mtcars,mtcars$wt)
mt.wt
mtcars
mtcars[mtcars[,6]>=1.5 & mtcars[,6]<=3.0,]

head(iris)
subset(iris, Species=="setosa")
subset(iris, Sepal.Length>7.6)[,c('Species')]

x=1:100
set.seed(100)
sample(x,size=10,replace=F)

idx = sample(1:nrow(iris),size = 20, replace=F)
iris[idx,]

mt10 = sample(1:nrow(mtcars), size=10, replace = F)
mt10
mtcars[mt10,]
mt.other=mtcars[-mt10,]
mt.other
dim(mtcars)
as=iris
as = as[-(1:150),]
as
a = split.data.frame(iris,iris$Species)
for( i in 1:nlevels(iris$Species)){
  as= rbind(as,iris[sample(1:nrow(data.frame(a[i])),size=10, replace=T),])
}
as
nrow(iris$Species)
nlevels(iris$Species)
class(a[1])
nrow(data.frame(a[1]))

combn(1:4,2)
#11
sp = unique(iris$Species)
combn(sp,2)
#12
combn(c('banana', 'apple', 'melon', 'peach', 'mango'),3)
aggregate(iris[,1:4], by=list('품종'=iris$Species), FUN = mean)
aggregate(iris[,1:4], by=list('품종'=iris$Species), FUN = sum)
aggregate(iris[,1:4], by=list('품종'=iris$Species), FUN = sd)
aggregate(iris[,1:4], by=list('품종'=iris$Species), FUN = var)
aggregate(iris[,1:4], by=list('품종'=iris$Species), FUN = max)

aggregate(mtcars, by=list(cyl=mtcars$cyl), FUN = mean)
aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs), FUN = mean)
mtcars[mtcars$vs==1,]

library(mlbench)
data("Ionosphere")
myds=Ionosphere
myds
aggregate(myds[,3:10],by=list(myds$Class, myds$V1), FUN = sd)

subway = read.csv('C:/ai/study/r_study/subway.csv', header=T, fileEncoding = 'CP949', encoding = 'UTF-8')
subway.latlong = read.csv('C:/ai/study/r_study/subway_latlong.csv', header=T, fileEncoding = 'CP949', encoding = 'UTF-8')
subway
subway.latlong
subway.tot = merge(subway,subway.latlong, by.a)






















