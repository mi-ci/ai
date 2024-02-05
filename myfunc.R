for(i in 2:9){
  for(j in 1:9){
    cat(i, '*', j, '=', i*j, '\n')
  }
}

class(iris)
head(iris)
mylabel = c()
mylabel
for (i in 1:nrow(iris)){
  if(iris$Petal.Length[i]<=1.6){
    mylabel[i]="L"
  }
  else if(iris[i,'Petal.Length']>=5.1){
    mylabel[i]="H"
  }
  else{
    mylabel[i]="M"
  }
  
}
print(mylabel)
newds = data.frame(iris$Petal.Length, mylabel)
newds


#1
sum=0
count=0
for(i in 1:100){
  if(i%%3==0){
    sum=sum+i
    count=count+1
  }
}
sum
count

for(i in 101:200){
  if(i%%3==0 & i%%4==0){
    cat(i, " ")
  }
}

for(i in 1:24){
  if(24%%i==0){
    cat(i, " ")
  }
}

facto = 1
for(i in 1:10){
  facto = facto*i
}
facto

#2
for(i in 1:6){
  j=1
  while(j<=i){
    cat('*')
    j=j+1
  }
  cat('\n')
}


#3
i=1
result=0
while(i<10){
  result=result+i^2
  i=i+1
}
result

#4
score=80
result=ifelse(score>60,'Pass','Fail')
result

#5
for(i in 2:1000){
  flag = 1
  j=2
  while(j<i){
    if(i%%j==0){
      flag = 0
      break
    }
    j=j+1
  }
  if(flag ==1){
    cat(i, " ")
  }
}


fibo = c(0,1)
fibo
while(length(fibo)<40){
  f.1=fibo[length(fibo)-1]
  f.2=fibo[length(fibo)]
  fibo = c(fibo, f.1+f.2)
}
fibo

apply(iris[,1:4], 1, mean)
apply(iris[,1:4], 2, mean)
apply(iris[,1:4], 1, sum)
apply(iris[,1:4], 2, max)

apply(mtcars[,1:dim(mtcars)[2]], 2, sum)
apply(mtcars[,1:dim(mtcars)[2]], 2, max)
apply(mtcars[,1:dim(mtcars)[2]], 2, sd)

mymax = function(x,y){
  num.max = x
  if(y>x){
    num.max=y
  }
  return(num.max)
}
mymax(10,15)

myfunction = function(x,y){
  sum=x+y
  mul = x*y
  div = x/y
  mod = x%%y
  return(list(rsum=sum,rmul=mul,rdiv=div,rmod=mod))
}

























