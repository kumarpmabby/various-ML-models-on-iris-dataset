#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
library(rpart)
library(evtree)
s<-sample(150,100)
s 
iris_train<-iris[s,]
iris_test<-iris[-s,]
dtmodel<-rpart(Species~.,iris_train,method = "class")
dtmodel
plot(dtmode)
text(dtmodel)
library(rpart.plot)
rpart.plot(dtmodel)
rpart.plot(dtmodel,type = 4,extra=101)
p<-predict(dtmodel,iris_test,type = "class")
plot(p)
summary(p)
table(iris_test[,5],p)
