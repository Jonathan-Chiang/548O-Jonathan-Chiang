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



# group dataframe by species_id
group_by(surveys, species_id)
# save new grouped df to variable 
surveys_by_species <- group_by(surveys, species_id)

# count number of rows for each group
summarize(surveys_by_species, abundance = n())

# group by species_id and plot_id
surveys_by_species_plot <- group_by(surveys, species_id, plot_id)
# count number of rows for each group 
summarize(surveys_by_species_plot, abundance = n())

# calculate average weight and store in df 
species_weight <- summarize(surveys_by_species, avg_weight = mean(weight))
  ## ouputs NA because missing some values for weight

# fix by using na.rm = TRUE, to ignore missing values during calculation
species_weight <- summarize(surveys_by_species,
                            avg_weight = mean(weight, na.rm = TRUE))

# omit rows that do not have a weight
na.omit(species_weight)


# determine the mean weight of DS in each year, using intermediate variables
ds_data <- filter(surveys, species_id == "DS")
ds_data_by_year <- group_by(ds_data, year)
ds_weight_by_year <- summarize(ds_data_by_year,
                               avg_weight = mean(weight, na.rm = TRUE))



