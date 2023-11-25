library(tidyverse)

# install nycflights data package 
install.packages("nycflights13")
library(nycflights13)


### 13.5.1.2

# filter flights to only show flights with planes that have flown at least 100 times
planes_100flights <- flights %>%
  semi_join(planes, by = "tailnum") %>%
  group_by(tailnum) %>%
  summarize(flights_plane = n()) %>%
  filter(flights_plane >= 100)

view(planes_100flights)


### 13.5.1.5
anti_join(flights, airports, by = c("dest" = "faa"))
# only returns observations from flights where there is no match in "faa" column of airports

anti_join(airports, flights, by = c("faa" = "dest"))
# only returns observations from airports where there is no match in "dest" column of flights 



