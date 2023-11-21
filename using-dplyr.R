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



# group dataframe by 


