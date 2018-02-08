#author kumar abhinav
setwd("C:/Users/Lenovo/Downloads/tds/correlation")
data("iris")
plot(iris$Petal.Length,iris$Species)
iris.glm<-glm(Species~Petal.Length,data = iris,family = binomial)
summary(iris.glm)
#Call:
#  glm(formula = Species ~ Petal.Length, family = binomial, data = iris)

#Deviance Residuals: 
#  Min          1Q      Median          3Q         Max  
#-3.997e-05  -2.100e-08   2.100e-08   2.100e-08   6.429e-05  

#Coefficients:
#  Estimate Std. Error z value Pr(>|z|)
#(Intercept)    -91.67   47334.35  -0.002    0.998
#Petal.Length    37.22   18357.58   0.002    0.998

#(Dispersion parameter for binomial family taken to be 1)

#Null deviance: 1.9095e+02  on 149  degrees of freedom
#Residual deviance: 7.3324e-09  on 148  degrees of freedom
#AIC: 4

#Number of Fisher Scoring iterations: 25

#generate confidence intervals for reg. coefficients
confint(iris.glm)
exp(iris.glm$coefficients)
exp(confint(iris.glm))
