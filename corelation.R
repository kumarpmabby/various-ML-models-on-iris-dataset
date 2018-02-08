#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
head(iris)
d<-iris
plot(d)
d<-iris[,c(-5)]
d
cor(d)
cor(d,method = "kendall")
cor(d,method = "spearman")
library(corrplot)
cr<-cor(d)
corrplot(cr)
corrplot(cr,method = "circle")#same as above
corrplot(cr,method="pie")
corrplot(cr,method="color")
corrplot(cr,method="number")
corrplot(cr,type="lower")
