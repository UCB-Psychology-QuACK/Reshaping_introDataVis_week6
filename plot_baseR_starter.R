library(tidyverse)

#### Load your data ####
# Data adapted from Allison Horst and her Palmer Penguins
# https://github.com/allisonhorst/palmerpenguins

#### Load in data ####
# Load in penguin.csv


# drop nas


# After doing basic data cleaning the first step is ALWAYS to visualize your data
# Here we will use some simple plots in baseR to get a better sense of some penguin characteristics. 

#### On average, how big is a penguin? ####



# This one value doesn't help much. 
  
#### Lets plot the distribution of body mass across all penguins with a histogram. ####


  
  # lets adjust the bin width 



  # add the mean value we calculated above



#### Get the mean body mass for males and females using base R or dplyr ####




#### plot this as a barplot ####




# We aren't getting a lot of info here that we didn't already have. 

### Look at the distribution of male and female body weight with a histogram ####





# represent the mean bodyweight as a vertical line for each group


# change the breaks to 32. What do you notice? 


#### Lets visualize the group differences with a box plot #### 
# (keeping in mind the limitations of a boxplot)




#### Use a scatter plot to visualize the relationship between body mass and bill depth ####



# What do you notice? 


#### Lets look to see if there are obvious subgroups ####

# color the points by sex  



# color the points by species 




