#5
st= data.frame(state.x77)
st
st.1 = st[st[,2]>5000,c(2,1,8)]
write.csv(st.1,"C:/ai/study/r_study/rich_state.csv")
ds = read.csv("C:/ai/study/r_study/rich_state.csv")
ds
#6
score = matrix(c(10,21,40,60,60,70,20,30), nrow=4, ncol=2, byrow=T)
colnames(score) = c('m','f')
score
score[2,]
score[,'f']
score[3,2]
#7
class(mtcars)
dim(mtcars)
class(mtcars[2,2])
mt = data.frame(mtcars)
mt[mt[,1]==max(mt[,'mpg']),]
mt[mt['mpg']==min(mt[mt[,'gear']==4,'mpg']),]
mt[rownames(mt)=='Honda Civic',]
mt[mt['mpg']>mt[rownames(mt)=="Pontiac Firebird",'mpg'],]
mean(mt[,'mpg'])
table(mt$gear)
unique(mt$gear)

source('C:/ai/study/r_study/myfunc.r')
a = myfunction(100,50)
a$rsum
a$rmul












