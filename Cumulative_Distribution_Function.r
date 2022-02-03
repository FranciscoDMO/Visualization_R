# load the dataset
library(dslabs)
data(heights)

histograms 
#a <- seq(min(my_data), max(my_data), length = 100)    # define range of values spanning the data set
#cdf_function <- function(x) {    # computes prob. for a single value
#  mean(my_data <= x)
#}
#cdf_values <- sapply(a, cdf_function)
#plot(a, cdf_values)

# make a table of category proportions
prop.table(table(heights$sex))


#Smooth Density Plots

#Smooth density plots can be thought of as histograms where the bin width is extremely or infinitely small. The smoothing function makes estimates of the true continuous trend of the data given the available sample of data points.
#The degree of smoothness can be controlled by an argument in the plotting function. (We will learn functions for plotting later.)
#While the histogram is an assumption-free summary, the smooth density plot is shaped by assumptions and choices you make as a data analyst.
#The y-axis is scaled so that the area under the density curve sums to 1. This means that interpreting values on the y-axis is not straightforward. To determine the proportion of data in between two values, compute the area under the smooth density curve in the region between those values.
#An advantage of smooth densities over histograms is that densities are easier to compare visually.