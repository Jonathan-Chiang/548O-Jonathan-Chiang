library(tidyverse)

# install nycflights data package 
install.packages("nycflights13")
library(nycflights13)


### 13.4.6.1
# compute average delay by destination 
view(flights)
flights_avg_delay <- flights %>%
  group_by(dest) %>%
  summarize(avg_delay = mean(dep_delay, na.rm = TRUE))
view(flights_avg_delay)

# join to airports onto delay df 
airports_delay <- flights_avg_delay %>%
 left_join(airports, by = c("dest" = "faa"))
view(airports_delay)

# map of airports and delays; semi_join to only include airports present in both dfs
airport_delays_map <- airports_delay %>%
  ggplot(aes(lon, lat, colour = "avg_delay")) +
  borders("state") +
  geom_point() +
  coord_quickmap()
airport_delays_map


### 13.4.6.2

# add location data for origin and destination to flights  
flights_location <- flights %>%
  left_join(airports, by = c("origin" = "faa")) %>%
  rename(origin_lat = lat, origin_lon = lon) %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  rename(dest_lat = lat, dest_lon = lon)

view(flights_location)


### 13.4.6.3 - determine if relationship between plane_age and delays

# calculate plane_age
plane_age <- flights %>%
  left_join(planes, by = "tailnum") %>% 
  rename(dep_year = year.x, manufacture_year = year.y) %>%
  mutate(age_plane = dep_year - manufacture_year)

view(plane_age)

# measure correlation between plane_age and delays

age_delay_corr <- cor(plane_age$age_plane, plane_age$dep_delay, use = "complete.obs")
age_delay_corr  
# output: -0.01535396

  