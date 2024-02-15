mydata = iris[,1:4]
head(mydata)
fit = kmeans(x=mydata, center=3)
fit
fit$cluster
iris[107:127,]
fit$centers
fit$size
fit$totss

library(cluster)
clusplot(mydata, fit$cluster, color=T, shade=T, labels=2, lines=1)

# clusplot(mydata 군집화 대상 데이터셋, 
#             
#         fit$cluster 군집화 결과에서 관측값별 군집번호, 
#             
#         color=T 군집을 표시하는 원의 색깔을 군집별로 다르게 할 지 여부 결정, 
#             
#         shade=T 군집을 표시하는 원안에 빗금을 표시할지 여부를 결정, 
#             
#         labels=2 군집화 대상 데이터셋에서 개별 관측값을 그래프상에 어떻게 나타낼지를 지정 1:관측값을 ○ △ + 와 같은 기호로 표시 2: 관측값을 숫자로 표시, 
#             
#         lines = 0 군집의 중심점과 중심점을 연결하는 선을 표시할지 여부를 결정 0:표시하지 않음 1: 표시함 ) 
# 
# 

mydata.2 = subset(mydata, fit$cluster==2)
head(mydata.2)
clusplot(mydata.2, fit$cluster, color=T, shade=T, labels=2, lines=1)
nrow(mydata.2)


mydata = iris[,1:4]
fit = kmeans(x=mydata, centers=3)
fit

# 표준화하기
std = function(x){
  return((x-min(x)) / (max(x)-min(x)))
}

mydata = apply(iris[,1:4],2,std)
mydata

ds = data.frame(name=c('A','B'), 키=c(180,170), 시력=c(1.2,0.9))
ds
ds.std = apply(ds[,-1],2,std)
ds.std

set.seed(91)

install.packages("class")
library(class)

idx = c(1:25, 51:75, 101:125)
idx
ds.tr.q = iris[idx, 1:4]
ds.tr.a = iris[idx, 5]
ds.tr.a

ds.test.q = iris[-idx,1:4]
ds.test.q
ds.test.a = iris[-idx,5]
ds.test.a

pred = knn(ds.tr.q, ds.test.q, ds.tr.a, k=3, prob=T)
pred
data.frame(ds.test.a,pred, ds.test.a==pred)
mean(pred==ds.test.a)
table(pred,ds.test.a)

########################
head(Seatbelts)
class(Seatbelts)
dim(Seatbelts)
str(Seatbelts)

std = function(x){
  return((x-min(x)) / (max(x)-min(x)))
}


ds = Seatbelts[,1:7]
head(ds)
ds.std = apply(ds, 2, std)
head(ds.std)
fit = kmeans(x=ds.std,centers=2)
fit

library(cluster)
clusplot(ds.std, fit$cluster, color=T, shade=T, labels=2, lines=1)

fit$cluster==2
fit$centers

########################
library(mlbench)
data("Sonar") # 데이터셋 불러오기
head(Sonar)
class(Sonar)
dim(Sonar)
sn = Sonar[,-61]
sn.std = apply(sn, 2, std)
head(sn.std)
fit = kmeans(x=sn.std, centers=2)
fit
clusplot(sn.std, fit$cluster, color=T, shade=T, labels=2, lines=1)


sw = swiss
sw.std = apply(sn, 2, std)
head(sw.std)
fit = kmeans(x=sw.std, centers=3)
fit
clusplot(sw.std, fit$cluster, color=T, shade=T, labels=2, lines=1)


ro = rock
ro.std = apply(ro, 2, std)
head(ro.std)
fit = kmeans(x=ro.std, centers=3)
fit
clusplot(ro.std, fit$cluster, color=T, shade=T, labels=2, lines=1)

#######################
library(mlbench)
data("Soybean")
head(Soybean)
dim(Soybean)
class(Soybean)
str(Soybean)
ds.new= Soybean[complete.cases(Soybean),]
dim(ds.new)
a = 1:562
a
idx = a[a%%2==0]
idx

ds.tr.q = ds.new[idx, 2:36]
ds.tr.q
ds.tr.a = ds.new[idx, 1]
ds.test.q = ds.new[-idx, 2:36]

pred = knn(ds.tr.q, ds.test.q, ds.tr.a, k=7, prob=T)
pred
mean(ds.tr.a==pred)
table(ds.tr.a,pred)

install.packages('cvTools')
library(cvTools)
k=10
folds=cvFolds(nrow(iris), K=k)
folds
acc = c()
for(i in 1:k){
  ts.idx = folds$which==i
  ds.train.q = iris[-ts.idx,1:4]
  ds.train.a = iris[-ts.idx,5]
  ds.test.q = iris[ts.idx,1:4]
  ds.test.a = iris[ts.idx,5]
  pred = knn(ds.train.q, ds.test.q, ds.train.a, k=5)
  acc[i] = mean(pred == ds.test.a)
}
acc
################
library(mlbench)
data("BreastCancer") # 데이터셋 불러오기
head(BreastCancer)
dim(BreastCancer)

ds.new= BreastCancer[complete.cases(BreastCancer),]
k=10
folds=cvFolds(nrow(ds.new), K=k)
folds
acc = c()
for(i in 1:k){
  ts.idx = folds$which==i
  ds.train.q = ds.new[-ts.idx,2:10]
  ds.train.a = ds.new[-ts.idx,11]
  ds.test.q = ds.new[ts.idx,2:10]
  ds.test.a = ds.new[ts.idx,11]
  pred = knn(ds.train.q, ds.test.q, ds.train.a, k=5)
  acc[i] = mean(pred == ds.test.a)
}
acc

######
library(mlbench)
data("PimaIndiansDiabetes") # 데이터셋 불러오기
head(PimaIndiansDiabetes)
dim(PimaIndiansDiabetes)

ds.new= PimaIndiansDiabetes[complete.cases(PimaIndiansDiabetes),]
k=10
folds=cvFolds(nrow(ds.new), K=k)
folds
acc = c()
for(i in 1:k){
  ts.idx = folds$which==i
  ds.train.q = ds.new[-ts.idx,1:8]
  ds.train.a = ds.new[-ts.idx,9]
  ds.test.q = ds.new[ts.idx,1:8]
  ds.test.a = ds.new[ts.idx,9]
  pred = knn(ds.train.q, ds.test.q, ds.train.a, k=5)
  acc[i] = mean(pred == ds.test.a)
}
acc
#######
library(mlbench)
data("Vehicle") # 데이터셋 불러오기
head(Vehicle)
dim(Vehicle)

ds.new= Vehicle[complete.cases(Vehicle),]
k=10
folds=cvFolds(nrow(ds.new), K=k)
folds
acc = c()
for(i in 1:k){
  ts.idx = folds$which==i
  ds.train.q = ds.new[-ts.idx,1:18]
  ds.train.a = ds.new[-ts.idx,19]
  ds.test.q = ds.new[ts.idx,1:18]
  ds.test.a = ds.new[ts.idx,19]
  pred = knn(ds.train.q, ds.test.q, ds.train.a, k=5)
  acc[i] = mean(pred == ds.test.a)
}
acc

#########
library(mlbench)
data("Vowel") # 데이터셋 불러오기
dim(Vowel)
head(Vowel)

ds.new= Vowel[complete.cases(Vowel),]
k=10
folds=cvFolds(nrow(ds.new), K=k)
folds
acc = c()
for(i in 1:k){
  ts.idx = folds$which==i
  ds.train.q = ds.new[-ts.idx,1:10]
  ds.train.a = ds.new[-ts.idx,11]
  ds.test.q = ds.new[ts.idx,1:10]
  ds.test.a = ds.new[ts.idx,11]
  pred = knn(ds.train.q, ds.test.q, ds.train.a, k=5)
  acc[i] = mean(pred == ds.test.a)
}
acc
mean(acc)



























