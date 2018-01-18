
# Making a dummy dataset with a species (a-C) with an SVL value from normal
# distribution and
mydata <- data.frame(
  species = c(rep(LETTERS[1:3], 4)),
  SVL = abs(rnorm(12)),
  mass = sample(c(10, 15, 50), 12, replace = TRUE)
)
mydata

for (i in 1:10){
  print(i)
  print(paste("Hello world",i))
}

# make the empty array calle myoutput for the results
myoutput <- array(dim = c(length(unique(mydata$species)),3))
myoutput <- data.frame(myoutput)
names(myoutput) <- c("Spp", "meanSVL", "meanMass")
myoutput


# loop for the number of unique species in dataset then put results into the array
for(i in 1:length(unique(mydata$species))){
  mydata2 <- filter(mydata, species == unique(mydata$species)[i])
  print(mean(mydata2$SVL))
myoutput$Spp[i] <- unique(mydata$species)[i]
myoutput$meanSVL[i] <- mean(mydata2$SVL)
myoutput$meanMass[i] <- mean(mydata2$mass)
}
myoutput



seq(from = 1, to = 10, by = 2)




#make an adding function, set number 2 default to 5
#add_numbers <- function(number1, number2 = 5){
 #mysum <- number1 + number2
 #x <- number1 * 2
 #return(list(mysum,x))
}

#make an adding function, set number 2 default to 5
add_numbers <- function(number1, number2){
  number1 + number2
}

add_numbers(10,11)
add_numbers(number1 = 10)


mult <- function(number1, number2, number3){
  add_numbers(number1, number2) * number3
}

mult(2,3,4)

## 

# function 1
#separate into 1 species

f1 <-
makemodel <-
makeplot <-

#source("~Desktop/myfunction.R")  
source("functions/myfunction.R")
# or make your own R package?

for(all my species){
f1(mydata)
makemodel(mydata)
makeplot(mydata)
}











































