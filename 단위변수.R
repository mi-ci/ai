favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER', 'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite
table(favorite)/length(favorite)

ds = table(favorite)
barplot(ds, main='좋아하는 계절') 
pie(ds)

favorite.color <- c(2, 3, 2, 1, 1, 2, 2, 1, 3, 2, 1, 3, 2, 1, 2)
ds2 = table(favorite.color)
ds2
colors = c('green', 'red', 'blue')
pie(ds2, main="좋아하는 색깔", col=colors)

weight = c(60,62,64,65,68,69)
weight.heavy = c(weight,120)
weight.heavy
mean(weight.heavy)
median(weight.heavy)
