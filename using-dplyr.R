library(tidyverse)

surveys <- read_csv("data/surveys.csv")
surveys

# select a subset of columns 
select(surveys, year, month, day)
select(surveys, month, day, year)

# filter based on criteria species ID = DS
filter(surveys, species_id == "DS")

# add new column based on value calculated from other columns, using mutate()
mutate(surveys, hindfoot_length_cm = hindfoot_length / 10)
surveys

# save added column to new variable
surveys_plus <- mutate(surveys,
                       hindfoot_length_cm = hindfoot_length / 10)
# or, overwrite existing variable
surveys <- mutate(surveys,
                  hindfoot_length_cm = hindfoot_length / 10)

### Exercise 3 ###
shrub_volume <- read.csv("data/shrub-volume-data.csv")

# check column names in data set 
names(shrub_volume)

# check structure of data frame
str(shrub_volume)

# select data from length column
select(shrub_volume, length)

# select data from site and experiment columns
select(shrub_volume, site, experiment)

# filter data from all the plants with height grater than 5
filter(shrub_volume, height > 5)

# create a tibble that includes all the original data and a new column containing volume
shrub_data_w_vols <- mutate(shrub_volume,
                            volume = length * width * height)
shrub_data_w_vols
