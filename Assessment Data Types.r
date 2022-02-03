
#Categorical data are variables that are defined by a small number of groups.
#Ordinal categorical data have an inherent order to the categories (mild/medium/hot, for example).
#Non-ordinal categorical data have no order to the categories.
#Numerical data take a variety of numeric values.
#Continuous variables can take any value.
#Discrete variables are limited to sets of specific values.


library(dslabs)
data(heights)
names(heights)
head(heights)
x <- heights$height

length(unique(x))

tab<-table(x)
tab

#In the previous exercise we computed the variable tab which reports the number of times each unique value appears. For values reported only once tab will be 1. Use logicals and the function sum to count the number of times this happens.
sum(tab==1)