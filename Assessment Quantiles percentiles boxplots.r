library(dslabs)
data(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]

length(male)
length (female )
#Create two five row vectors showing the 10th, 30th, 50th, 70th, and 90th percentiles for the heights of each sex called these vectors female_percentiles and male_percentiles.
p <- seq(0.10,0.90,0.20)
male_percentiles <-quantile(male, p)
female_percentiles <-quantile(female, p)
#create data frame 
df <- data.frame(female = female_percentiles, male = male_percentiles)
