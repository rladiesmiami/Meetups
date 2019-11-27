#this code is for the R-Ladies Miami workshop - vCtrl_wrkFlw
#this code intentionally has a bug for the purposes for creating an issue on 
#GitHub 

library(tidyverse)

data("mtcars")

#want to get the average mpg by number of cylinders

averageMPG <- mtcars %>%
  group_by(cyl) %>%
  summarise(avg_mpg = sum(mpg))



#correct code

# averageMPG <- mtcars %>% 
#   group_by(cyl) %>% 
#   summarise(avg_mpg = mean(mpg))

