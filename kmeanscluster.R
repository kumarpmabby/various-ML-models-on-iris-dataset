#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
iris.features<-iris[,c(-5)]
results<-kmeans(iris.features,3)
results
results$cluster
results$centers
results$size
results$iter
#comparisons of actual and cluster
table(iris$Species,results$cluster)
#            1  2  3
#setosa      0  0 50
#versicolor 48  2  0
#virginica  14 36  0
plot(iris[c("Petal.Length","Petal.Width")],col=results$cluster)
plot(iris[c("Petal.Length","Petal.Width")],col=iris$Species)
plot(iris[c("Sepal.Length","Sepal.Width")],col=iris$Species)
plot(iris[c("Sepal.Length","Sepal.Width")],col=results$cluster)
