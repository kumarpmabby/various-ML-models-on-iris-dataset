#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
library(rpart)
library(randomForest)
s<-sample(150,100)
s 
iris_train<-iris[s,]
iris_test<-iris[-s,]
rfm<-randomForest(Species~.,iris_train)
summary(rfm)
p<-predict(rfm,iris_test,type = "class")
table(iris_test[,5],p)
mean(p==iris_test[,5])
#0.96
importance(rfm)
#MeanDecreaseGini
#Sepal.Length        8.1250643
#Sepal.Width         0.9565882
#Petal.Length       30.9693159
#Petal.Width        25.8818516

rfm
getTree(rfm,500,labelVar = TRUE)
varImpPlot(rfm)
