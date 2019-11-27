#this code is for the R-Ladies Miami workshop - vCtrl_wrkFlw
#this code will be modified to create merge conflicts and how to solve them

library(tidyverse)

data("mtcars")

#make a simple scatter plot of horesepower vs mpg grouped by cylinders

g <- ggplot(data = mtcars)

g + 
  geom_point(mapping = aes(x = hp, y = mpg, color = cyl)) 


