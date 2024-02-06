mydata = c(60,62,64,65,68,69,120)
quantile(mydata, (0:10)/10)
summary(mydata)
var(mydata) # 분(얼마나 데이터들이 흩어져있나 수치화)
sd(mydata) # 표준편차(얼마나 데이터들이 흩어져있나 수치화)
range(mydata) # 범위 : 최소~최대
diff(range(mydata)) # 범위 : 최소~최대 뺀값
hist(mydata, main="점수", col="green", border="blue", las=1, breaks=5) #그래프 그려줌

head(cars)
dim(cars)
str(cars)
hist(cars[,2])
hist(cars[,1])
barplot(cars[,1])

dist = cars[,2]
boxplot.stats(dist)
boxplot(mydata)

head(iris)
unique(iris$Species)
boxplot(Petal.Length~Species, data=iris)
boxplot(Petal.Length~Species, data=iris, main="제목 : 붓꽃의 품종별 꽃잎길이",
        xlab="x축제목 : 붓꽃 품종",
        ylab="y축제목 : 붓꽃 길이(cm)")

par(mfrow=c(1,3))
hist(mydata, main="점수", col="green", border="blue", las=1, breaks=5)
boxplot(cars[,1])
boxplot(cars[,2])
par(mfrow=c(1,1))

class(esoph)
head(esoph)
head(tabaco)
class(tabaco)
tabaco
tabaco = esoph[,'tobgp']
unique(tabaco)
table(tabaco)
hist(table(tabaco))
barplot(table(tabaco))

result = c('P', 'P', 'F', 'P', 'F', 'P', 'F', 'P', 'P', 'F')
table(result)
barplot(table(result))
pie(table(result))

season = c("여름", "겨울", "봄", "가을", "여름", "가을", "겨울", "여름", "여름", "가을")
table(season)
barplot(table(season))
pie(table(season))

score = c(90,85,73,80,85,65,78,50,68,96)
names(score) = c('kor','eng','ath','hist','soc','music','bio','earth','phy','art')
score
mean(score)
median(score)
sd(score)
names(score[score==max(score)])
boxplot(score)
barplot(score)
hist(score, main="학생성적", col="purple", breaks=10)

head(mtcars)
mean(mtcars$wt)
median(mtcars$wt)
sd(mtcars$wt)
summary(mtcars$wt)
table(mtcars$cyl)
table(mtcars$wt)
hist(table(mtcars$cyl))
hist(table(mtcars$wt))
barplot(table(mtcars$cyl))
                                                                                  boxplot(mtcars$wt)
boxplot(mtcars$disp)
boxplot(mpg~gear, data=mtcars)
par(mfrow=c(1,1))



















