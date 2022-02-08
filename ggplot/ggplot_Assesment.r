library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
data(murders)
p <- ggplot(murders)
class(p)

data(heights)
# define ggplot object called p like in the previous exercise but using a pipe 
p<- heights %>% ggplot()

#define x and y 
murders %>% ggplot(aes(x = population , y =total )) +
  geom_point()

#use lables instead of points 
murders %>% ggplot(aes(population, total,label=abb)) +
  geom_label()
#change  all lables to blue 
murders %>% ggplot(aes(population, total,label= abb)) +
  geom_label(color = "blue")
#change  do different colours 
murders %>% ggplot(aes(population, total, label = abb,color = region)) +
  geom_label()

# redifine the scale 
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) + geom_label()
p+scale_x_log10()  + scale_y_log10()

# adding the title 
p + scale_x_log10() + 
  scale_y_log10() + ggtitle("Gun murder data")


###Create a ggplot object called p using the pipe to assign the heights data to a ggplot object.
###Assign height to the x values through the aes function.
p <- heights %>% ggplot(aes(x=height))
#create hist
p+geom_histogram()
#now with proper binwith
p+geom_histogram(binwidth=1)

heights %>% 
  ggplot(aes(height)) + geom_density()

#Create separate smooth density plots for males and females by defining group by sex. Use the existing aes function inside of the ggplot function.
heights %>% 
  ggplot(aes(height, group=sex))+geom_density()
#adding colour
heights %>% 
  ggplot(aes(height, group = sex , color=sex ))+ 
  geom_density()
#We can also assign groups using the fill argument. When using the geom_density geometry, color creates a colored line for the smooth density plot while fill colors in the area under the curve.
#using alpha to change density 
heights %>% 
  ggplot(aes(height, fill = sex)) + 
  geom_density(alpha=0.2) 