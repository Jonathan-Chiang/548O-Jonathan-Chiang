### Exercise 1 

# write function
pounds2grams <- function(pounds) {
  grams <- pounds*453.592
}

# try function with 3.75 pounds as input
pound_in_grams <- pounds2grams(3.75); pound_in_grams

#check answer
print(3.75*453.592)


### Exercise 2

# function estimating mass based on length for Theropoda
get_mass_from_length_theropoda <- function(length){
  mass <- 0.73 * length ^ 3.63
  return(mass)
}

# estimate mass for Spinosaurus that is 16m long 
mass_spinosaurus <- get_mass_from_length_theropoda(16); mass_spinosaurus

# 
get_mass_from_length <- function(length, a, b){
mass <-  a * length ^ b
return(mass)
}

# estimate mass for sauropoda (a = 214.44, b = 1.46) that is 26 m long
mass_sauropoda <- get_mass_from_length(26, 214.44, 1.46); mass_sauropoda

### Exercise 3 
get_mass_from_length_w_defaults <- function(length, a=39.9, b=2.6){
  mass <-  a * length ^ b
  return(mass)
}

# estimate mass of sauropoda2 (a = 214.44, b = 1.46) that is 22 m long
mass_sauropoda2 <- get_mass_from_length_w_defaults(22, 214.44, 1.46); mass_sauropoda2

#






