library(tidyverse)

surveys <- read.csv("data/surveys.csv")

# create data frame with year, species_id, and weight in KG for each individual, without null points 
surveys_weightKG <- surveys %>% 
  select(year, species_id, weight) %>% 
  na.omit() %>% 
  mutate(weightKG = weight/1000)
surveys_weightKG

# subset for year, month, day, and species_id and only pull rows where species_id is SH
SH_date <- surveys %>%
  filter(species_id == "SH") %>%
  select(year, month, day, species_id)
SH_date 

# count the number of individuals in each species ID
count_within_species <- surveys %>%
  group_by(species_id) %>%
  summarize(abundance = n())
count_within_species

# count the number of individuals in each species ID, within each year
count_species_year <- surveys %>%
  group_by(species_id, year) %>%
  summarize(abundance = n())
count_species_year

# get mean mass of species DO in each year
DO_avg_mass_year <- surveys %>%
  filter(species_id == "DO") %>%
  group_by(year) %>%
  summarize (avg_mass = mean(weight, na.rm = TRUE))
DO_avg_mass_year


