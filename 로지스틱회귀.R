head(iris)
class(iris)
dim(iris)
str(iris)
iris.new = iris
class(iris.new)
iris.new$Species= as.integer(iris.new$Species)
head(iris.new)
str(iris.new)
tail(iris.new)

model= glm(Species~Sepal.Length+Sepal.Width+Petal.Length + Petal.Width, data=iris.new)
model
summary(model)

y= 0.22865*1.4+0.60925*0.2+1.18650
y= 0.22865*5.1+0.60925*1.8+1.18650
y= 0.22865*4.0+0.60925*2.5+1.18650
y
tail(iris.new)



unknown = data.frame(rbind(c(5.1,3.5,1.4,0.2)))
class(unknown)
class(rbind(c(5.1,3.5,1.4,0.2)))
class(c(5.1,3.5,1.4,0.2))
names(unknown)=names(iris[1:4])
unknown
predict(model,unknown)


mydata = read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata)

model = glm(admit~gre+gpa+rank, data=mydata)
model
summary(model)
unknown = data.frame(rbind(c(1,1,1)))
names(unknown) = names(mydata[2:4])
pred = predict(model,mydata[2:4])
pre = data.frame(mydata,round(pred,0))
pre

library(mlbench)
data(PimaIndiansDiabetes)
pm = PimaIndiansDiabetes
head(pm)
class(pm)
str(pm)
dim(pm)
set.seed(100)
pm
pm$diabetes=as.integer(pm$diabetes)
head(pm)
dim(pm)
sample(1:nrow(pm))[1:round(dim(pm)[1]*0.6,0)]
train = pm[sample(1:nrow(pm))[1:round(dim(pm)[1]*0.6,0)],]
head(train)
train.idx = sample(1:nrow(pm), round(dim(pm)[1]*0.6,0))
train = pm[train.idx,]
dim(train)
train
test = pm[-train.idx,]
test
dim(test)
class(test)

model = glm(diabetes~., data=train)
summary(model)
pred=predict(model,test)
res = data.frame(test$diabetes,round(pred,0), test$diabetes-round(pred,0))
nrow(res[test$diabetes-round(pred,0)==0,]) 
nrow(res)
res[test$diabetes-round(pred,0)==0,]
res

data(Glass)
head(Glass)
dim(Glass)
str(Glass)
set.seed(100)
Glass
train.idx = sample(1:nrow(Glass),nrow(Glass)*0.6)
train = Glass[train.idx,]
test = Glass[-train.idx,]
dim(train)
dim(test)
model = glm(train$Type~.,data=train)
model
summary(model)
train$Type
pred = predict(model,test)
pred = round(pred,0)
data.frame(test$Type, pred)
class(Glass)
head(Glass)
idx = sample(1:nrow(Glass), nrow(Glass)*0.6 )
a = Glass[idx,]
a
b = Glass[-idx,]
b
model = glm(Type~., data=a)
pred = predict(model,b)

