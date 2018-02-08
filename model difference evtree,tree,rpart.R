#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
library(rpart)
library(evtree)
library(tree)
#rpart model 
s<-sample(150,100)
s 
iris_train<-iris[s,]
iris_test<-iris[-s,]
dtmodel<-rpart(Species~.,iris_train,method = "class")
dtmodel
plot(dtmodel)
text(dtmodel)
library(rpart.plot)
rpart.plot(dtmodel)
rpart.plot(dtmodel,type = 4,extra=101)
p<-predict(dtmodel,iris_test,type = "class")
plot(p)
summary(p)
table(iris_test[,5],p)
mean(p==iris_test[,5])
#[1] 0.98
#tree
dtmodel<-tree(Species~.,iris_train,method = "class")
plot(dtmodel)
text(dtmodel)
p<-predict(dtmodel,iris_test,type = "class")
table(iris_test[,5],p)
mean(p==iris_test[,5])
#[1] 1
#evtree
dtmodel<-evtree(Species~.,iris_train,method = "class")
plot(dtmodel)
text(dtmodel)
p<-predict(dtmodel,iris_test,type = "class")
table(iris_test[,5],p)
mean(p==iris_test[,5])