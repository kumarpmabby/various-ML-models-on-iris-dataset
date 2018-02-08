#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
d<-iris[,-5]
d
require(graphics)
library(raster) 
library(RStoolbox) 
pc<-princomp(d,cor=TRUE,score=TRUE)
Summary(pc)
plot(pc)
#we should consider 0.85 values so pc1 and pc2
plot(pc,type="l")
attributes(pc)
pc$scores
