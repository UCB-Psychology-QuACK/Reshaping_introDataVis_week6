# Quack 2020
# Week 6 - Practice reshaping Data
# Elena Leib


# Description: Practice reshaping data using tidyr functions gather and spread.

# Note: Recently, a new version of tidyr was released with new functions that replace gather and spread. We are still teaching them here, since they are still the most popular, but it will also be good to familiarize yourself with this new group of functions called pivot: https://tidyr.tidyverse.org/articles/pivot.html
# The principles of data reshaping still apply, just *how* you go about doing it with functions is what is changing, with the goal that it will be even more intuitive and easy to use!

#### Set global options ####
options(stringsAsFactors = FALSE)

##### Import Packages #####
library(tidyverse)
library(tidylog)


#### Read in data ####
# Data collected by Melina Uncapher and the Project iLead Network, with funding from an NSF Science of Learning Grant.
## NOTE: These data are not yet published. Our collaborators have generously allowed me to use this data set for teaching purposes. Please do not share these data with anyone!
## Email Elena to get the data for this activity.

## Data were collected to study EF development, as well as ask questions linking EFs to math and reading ability, plus many other questions.
## We have data for over 1,000 kids at 4 time points!

source.folder <- "data/"

# Read in these three CSV files.

# This is the data file that we were given by our collaborators.
# It has all the data we need, but the format is not particularly friendly to work with.
ef.data_wide <- read.csv(paste0(source.folder, "EFA_Data_Wide_2019-05-08.csv"))

# Here are the data in another format.
ef.data_long <- read.csv(paste0(source.folder, "EFA_Data_Long_2019-05-08.csv"))

# Here is the format we want to end up with.
ef.data <- read.csv(paste0(source.folder, "EFA_Data_2019-05-08.csv"))


# We are going to build an understanding of how to go from ef.data_wide to the format we want in ef.data.


num_participants_wide <- ef.data_wide %>% 
  group_by(pid) %>% 
  count()

num_participants_long <- ef.data_long %>% 
  group_by(pid) %>% 
  count()

############
## Part 1 ##
############

# 1) Examine ef.data_wide and answer the following questions:
#   How many total rows are there? # 1263 rows
#   How many rows per participant are there? # 1 row / pid
#   How many total columns are there? # 42
#   How many columns per time point? # 10, one for each task
#   How many columns per task are there? # 4, one for each time point



# 2) Examine ef.data_long and answer the following questions:
#   How many total rows are there? # 50520
#   For a given time point, how many rows per participant are there? # 10 rows / time point / pid because there are 10 tasks
#   How many total rows per participant are there (across all time points)? # 40 rows total
#   How many total columns are there? # 5
#   How many columns per task are there? # 1 / arguably 2, one for the name of the task, and one for the score


# 3) Examine ef.data and answer the following questions:
#   How many total rows are there? # 5052
#   How many rows per participant are there? # 4 rows / pid
#   How many rows per participant per time point are there? # 1 row / pid / time point
#   How many total columns are there? # 13 (3 "informational" about the subject and 10 with task information)
#   How many columns per task are there? # 1 col / task



##### END 9/29/2020 #####
# This is where we left off on 9/29. We will pick up here next week!


############
## Part 2 ##
############

# Play around with the function "gather" using the ef.data_wide data frame. [Hint: Enter ?gather below and select the second link to get more information about how to use this function!]



# What does gather do? What happens to your data frame when you use it?



############
## Part 3 ##
############

# Play around with the function "spread" using the ef.data_long data frame. [Hint: Enter ?spread below and select the second link to get more information about how to use this function!]



# What does spread do? What happens to your data frame when you use it?


############
## Part 4 ##
############

# Do you have any ideas for how to get our data from wide format in ef.data_wide into the format of ef.data?
# I encourage you to play around with your different ideas using code. It is okay if you don't solve it exactly, the point is for you to practice thinking about these kinds of problems that come up all the time!