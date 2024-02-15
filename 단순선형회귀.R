plot(dist~speed, cars, ylab = '제동거리', ylim=c(-20,100), xlim=c(-5,25))
model = lm(dist~speed,cars) 
abline(model)
coef(model)[1]
coef(model)
y= 3.932409*30-17.579095
y= 3.932409*50-17.579095
y

head(cars)
speed = cars[,1]
speed
w=coef(model)[2]
b=coef(model)[1]
pred=w*speed+b
pred
pre = data.frame(pred,cars[,2],abs(cars[,2]-pred))
colnames(pre)=c('예상', '실제', '오차')           
head(pre)

Loblolly
head(Loblolly)
dim(Loblolly)
str(Loblolly)
model = lm(height~age,Loblolly)
coef(model)
plot(height~age,Loblolly)
w = coef(model)[2]
b = coef(model)[1]
abline(model)
w*10+b
w*15+b
w*20+b

head(airquality)
plot(Temp~Wind, airquality)
model = lm(Temp~Wind, airquality)
model
abline(coef(model))
w=coef(model)[2]
b=coef(model)[1]
10*w+b
15*w+b
20*w+b

head(pressure)
plot(pressure~temperature, pressure)
model = lm(pressure~poly(temperature,2), pressure)
model
abline(model)
coef(model)
w = coef(model)[2]
b = coef(model)[1]

65*w+b
95*w+b
155*w+b
350*w+b













