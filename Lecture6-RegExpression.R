library(stringr)
install.packages("gapminder")
gDat <- gapminder::gapminder
str(gDat)

print("a/nb")
cat("a/nb")

### Exercise 1
# find countries in gDat 'country' column that have "ee". pull these values into ee_countries
ee_countries <- grep("e{2}", levels(gDat$country), value = TRUE)
ee_countries

## Exercise 2
# pull names of files in current directory into project_dir
project_dir <- dir()
project_dir
# find files that end with ".R" in the directory
R_files <- grep(".R$", project_dir, value = TRUE)
R_files

### Exercise 3
  # find countries with "i" or "t" and ends with "land", then replace "land" with "LAND"
it_land <- grep("[it]", levels(gDat$country), value = TRUE, ignore.case = TRUE) %>%
  grep("land$", ., value = TRUE) %>% 
  gsub("land", "LAND", .)
it_land

### Exercise 4 
# find continents in gapminder dataset with "o" in it 
o_continents <- grep("[o]", levels(gDat$continent), value = TRUE, ignore.case = TRUE)
o_continents





