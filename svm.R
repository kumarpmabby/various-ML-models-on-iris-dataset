#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
library(e1071)
plot(iris)
plot(iris$Sepal.Length,iris$Sepal.Width,col=iris$Species)
plot(iris$Petal.Length,iris$Petal.Width,col=iris$Species)
s<-sample(150,100)
col<-c("Petal.Length","Petal.Width","Species")
iris_train<-iris[s,col]
iris_test<-iris[-s,col]
svmfit<-svm(Species~.,data=iris_train,kernel="linear",cost=.1,scale = FALSE)
print(svmfit)
#Parameters:
#  SVM-Type:  C-classification 
#SVM-Kernel:  linear 
#cost:  0.1 
#gamma:  0.25 

#Number of Support Vectors:  47

plot(svmfit,iris_train[,col])
#some cross validation
tuned<-tune(svm,Species~.,data=iris_train,kernel="linear",ranges=list(cost=c(0.001,0.01,0.1,1,10,100)))
summary(tuned)

#Parameter tuning of 'svm':
  
#  - sampling method: 10-fold cross validation 

#- best parameters:
#  cost
#1

#- best performance: 0.02 

#- Detailed performance results:
#  cost error dispersion
#1 1e-03  0.62 0.17511901
#2 1e-02  0.38 0.19321836
#3 1e-01  0.03 0.04830459
#4 1e+00  0.02 0.04216370
#5 1e+01  0.04 0.06992059
#6 1e+02  0.03 0.04830459

p<-predict(svmfit,iris_test[,col],type="class")
plot(p)
table(iris_test[,3],p)
mean(p==iris_test[,3])
#p
#               setosa versicolor virginica
#setosa         12          0         0
#versicolor      0         18         0
#virginica       0          6        14