### Exercise 1 

w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
colors <- c("red", "blue", "green")
masses <- c(45.2, 36.1, 27.8, 81.6, 42.4)
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"

# print whether w is greater than 10
w > 10
# print whether green is in colors
"green" %in% colors
# print whether x is greater than y
x > y
# print whether each value in masses is greater than 40
masses > 40


### Exercise 2
# if statement that sets y <- 10 if age_class is equal to sapling
age_class = "sapling"
if (age_class == "sapling"){
  y <- 10
}
y


### Exercise 3 
# if statement that sets y to 10 if age_class is equal to sapling, and y to 5 if age_class is equal to seedling
age_class <- "seedling"
if (age_class == "sapling"){
  y <- 10
} else if (age_class == "seedling"){
  y <- 5
}
y

# if statement that sets y to 10 if age_class == sapling, y to 5 if age_class == seedling, and y to 0 if age_class is something else
age_class <- "adult"
if (age_class == "sapling"){
  y <- 10
} else if (age_class == "seedling"){
  y <- 5
} else {
  y <- 0
}
y


### Exercise 4 
# get_mass_from_length function from lecture 7 exercise
get_mass_from_length <- function(length, a, b){
  mass <-  a * length ^ b
}
# create function that estimates mass, taking length and dinosaur group name as arugments
get_mass_from_length_by_name <- function(length, dino_name) {
  if (dino_name == "Stegosauria") {
    a <- 10.95
    b <- 2.64
  } else if (dino_name == "Theropoda") {
    a <- 0.73
    b <- 3.63
  } else if (dino_name == "Sauropoda") {
    a <- 214.44
    b <- 1.46
  } else {
    a <- NA
    b <- NA
  } 
  mass <- get_mass_from_length(length, a, b)
  return(mass)
}

# for Stegosauria that is 10 meters long
get_mass_from_length_by_name(10, "Stegosauria")
# for Theropoda that is 8 meters long
get_mass_from_length_by_name(8, "Theropoda")
# for Sauropoda that is 12 meters long
get_mass_from_length_by_name(12, "Sauropoda")
# for Ankylosaur that is 13 meters long 
get_mass_from_length_by_name(13, "Ankylosauria")

