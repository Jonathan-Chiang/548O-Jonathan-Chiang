# load tidyverse
library(tidyverse)

# load datafile from each lotr movie 
fship <- read_csv(file.path("data", "The_Fellowship_Of_The_Ring.csv"))
ttow <- read_csv(file.path("data", "The_Two_Towers.csv"))
rking <- read_csv(file.path("data", "The_Return_Of_The_King.csv")) 

# check proper loading of datafiles 
fship
ttow
rking

# group data into one untidy datafile by stacking rows
lotr_untidy <- bind_rows(fship, ttow, rking)

# check the big untidy datafile
str(lotr_untidy)
lotr_untidy

write_csv(lotr_untidy, "lotr_untidy.csv")
