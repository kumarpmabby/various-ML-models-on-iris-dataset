#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
s<-sample(150,150)
iris<-iris[s,]
summary(iris)
normalize<-function(x){
  return ((x-min(x))/(max(x)-min(x)))
}
normalize(c(10,20,30,40,50))
iris_new<-as.data.frame(lapply(iris[,c(1,2,3,4)],normalize))
iris_train<-iris_new[1:129, ]
iris_test<-iris_new[130:150, ]
iris_train_target<-iris[1:129,5]
iris_test_target<-iris[130:150,5]
require(class)
sqrt(150)#nearly 13 as odd value for k will give easier k to vote
knnm<-knn(train = iris_train,test=iris_test,cl=iris_train_target,k=13)
knnm
#predicted above in knnm for 21 values
table(iris_test_target,knnm)
#iris_test_target setosa versicolor virginica
#setosa          11          0         0
#versicolor      0          6         0
#virginica       0          0         4