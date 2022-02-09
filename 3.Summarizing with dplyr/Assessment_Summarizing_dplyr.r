library(dplyr)
library(NHANES)
data(NHANES)
## Filter the NHANES dataset so that only 20-29 year old females are included and assign this new data frame to the object tab.
tab <- NHANES %>% filter(  Age <= 29 & Age>=20 & Gender == "female")
#or 
ref <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female")

#Complete the line of code to save the average and standard deviation of systolic blood pressure as average and standard_deviation to a variable called ref.
ref <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female") %>% 
  summarise(average = mean(BPSysAve ,na.rm =TRUE ),standard_deviation = sd(BPSysAve,na.rm =TRUE) )

# use dot to only save the average
ref_avg <- NHANES %>%
  filter(AgeDecade == " 20-29" & Gender == "female") %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE)) %>% .$average

#Report the min and max values for the same group as in the previous exercises.
NHANES %>%
  filter(AgeDecade == " 20-29"  & Gender == "female") %>% summarize( minbp = min(BPSysAve, na.rm=TRUE), maxbp = max(BPSysAve, na.rm=TRUE) )  

# compute the average and standard deviation of systolic blood pressure for females for each age group separately
NHANES %>%
  filter(Gender == "female") %>% group_by(AgeDecade)%>%summarise(average = mean(BPSysAve ,na.rm =TRUE ),standard_deviation = sd(BPSysAve,na.rm =TRUE) )

NHANES %>%
  filter(Gender == "male") %>% group_by(AgeDecade)%>%summarise(average = mean(BPSysAve ,na.rm =TRUE ),standard_deviation = sd(BPSysAve,na.rm =TRUE) )


#group by age and gender 
NHANES %>%
  group_by(AgeDecade, Gender)%>%summarise(average = mean(BPSysAve ,na.rm =TRUE ),standard_deviation = sd(BPSysAve,na.rm =TRUE) )


#Compute the average and standard deviation for each value of Race1 for males in the age decade 40-49.
NHANES %>%
  filter(AgeDecade == " 40-49" ,Gender == "male") %>% group_by(Race1)%>%summarise(average = mean(BPSysAve ,na.rm =TRUE ),standard_deviation = sd(BPSysAve,na.rm =TRUE) ) %>% arrange(average)
