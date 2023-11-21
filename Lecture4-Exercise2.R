library(tidyverse)

surveys <- read.csv("data/surveys.csv")

# subset surveys into new df 
surveys_subset1 <- select(surveys, year, month, day, species_id)

# create a new subset df with weights of each individual, omiting null weights
surveys_subset2 <- select(surveys, year, species_id, weight)
surveys_subset2_omit <- na.omit(surveys_subset2)
surveys_weightKG <- mutate(surveys_subset2_omit, weightKG = weight/1000)
surveys_weightKG

# subset for all rows from species SH
SH_weightKG <- filter(surveys_weightKG, species_id == "SH")
SH_weightKG

# count the number of individuals in each species ID 
surveys_grouped_weightKG <- group_by(surveys_weightKG, species_id)
summarize(surveys_grouped_weightKG, abundance = n())

# count the number of individuals in each species in each year 
surveys_grouped_weightKG_year <- group_by(surveys_weightKG, species_id, year)
surveys_grouped_weightKG_year
summarize(surveys_grouped_weightKG_year, abundance = n())

# calculate mean mass of species DO in each year 
DO_mass <- filter(surveys_weightKG, species_id == "DO")
DO_grouped_mass <- group_by(DO_mass, weight)
DO_avg_mass <- summarize (DO_grouped_mass,
                           avg_weight = mean(weight, na.rm = TRUE))
DO_avg_mass
