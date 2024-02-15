install.packages('car')
library(car)
head(Prestige)
dim(Prestige)
str(Prestige)

pr = Prestige[,1:4]
class(pr)
head(pr)
plot(pr, col='blue')

model = lm(income~education + women + prestige, pr)
summary(model)

install.packages('MASS')
library('MASS')

newData2 = Prestige[,1:4]
head(newData2)
model = lm(income~women + education + prestige, pr)
model2 = stepAIC(model)

summary(model2)



model = lm(Income~Illiteracy + HS.Grad, data.frame(state.x77))
model
# y = -52.64*Illiteracy + 44.55*HS.Grad + 2131.33
summary(model)
model = lm(Income~HS.Grad, data.frame(state.x77))
summary(model)

st = data.frame(state.x77)
head(st)
model = lm(Income~Illiteracy+Population, data.frame(state.x77))
model
ill = st[,3] 
pop = st[,1]
coef(model)[2]*ill+coef(model)[3]*pop+coef(model)[1]

pre = data.frame(coef(model)[2]*ill+coef(model)[3]*pop+coef(model)[1],st[,2],abs(st[,2]-(coef(model)[2]*ill+coef(model)[3]*pop+coef(model)[1])))
colnames(pre)=c('예상', '실제', '오차')   
pre













