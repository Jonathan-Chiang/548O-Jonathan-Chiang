library(tidyverse)

lotr_tidy <- read_csv(file.path("data", "lotr_tidy.csv"))

# spread; make one variable per Race
lotr_tidy %>% 
  spread(key = Race, value = Words)

# spread; make one variable per Gender
lotr_tidy %>% 
  spread(key = Gender, value = Words)

# spread; make one variable per combination of Race and Gender
lotr_tidy %>% 
  unite(Race_Gender, Race, Gender) %>% 
  spread(key = Race_Gender, value = Words)