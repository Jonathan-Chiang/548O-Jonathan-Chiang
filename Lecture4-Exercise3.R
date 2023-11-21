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

# create a dataframe that includes all the original data and a new column containing volume
shrub_data_w_vols <- mutate(shrub_volume,
                            volume = length * width * height)
shrub_data_w_vols