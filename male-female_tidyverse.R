library(tidyverse)

male <- read_csv(file.path("data", "Male.csv"))
female <- read_csv(file.path("data", "Female.csv"))

mf_lotr_untidy <- bind_rows(male, female)
mf_lotr_untidy

# write grouped untidy df to csv file 
write_csv(mf_lotr_untidy, "mf_lotr_untidy.csv")

# compute the total number of words spoken by each race
  ## input gender-specific df 
mf_race_tidy <-
  pivot_longer(mf_lotr_untidy, cols=c(Elf, Hobbit, Man), names_to = 'Race', values_to = 'Words')
mf_race_tidy <- arrange(mf_lotr_tidy, Race)
mf_race_tidy

  ## input lotr_tidy df as input 
lotr_race_tidy <- arrange(lotr_tidy, Race)
lotr_race_tidy
