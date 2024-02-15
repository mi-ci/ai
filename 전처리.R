z = c(1,2,3,NA,5,NA,8)
sum(z)
mean(z)
is.na(z)
sum(is.na(z))
sum(!is.na(z))
sum(z, na.rm=T)
z1=z
z2 = c(5,8,1,NA,3,NA,7)
z2
sum(is.na(z2))
is.na(z1)
z1[is.na(z1)]=as.integer(mean(z1, na.rm=T))
z1
as.integer(mean(z1, na.rm=T))

z3=as.vector(na.omit(z2))
z3

class(iris)
x=iris
head(x)
x[1,2]=NA
x[1,3]=NA
x[2,3]=NA
x[3,4]=NA
head(x)

for(i in 1:ncol(x)){
  this.na = + is.na(x[i,])
  this.na[,]
  print(this.na)
}























