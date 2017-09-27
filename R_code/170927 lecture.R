#automating data analysis. writing your own functions in R. writing your own function 
# function name (argument = df true/false) when you write your own function you will be putting in your own arguments in .
# using the function function 

#the variable my function 

#function function ```{r functionExample}
#my function 
# curly brace defines start and end of funciton, additin line first multiplication line first 

```{r functionExample}
myfunction <- function (x){
  print(x)
}

```{r functionExample2}
myfunction (x=2)
myFunction (x= c(1,2,3,4)}

```{r functionExample 3)
myfunction2 <- function (x,y) {
  z= x+y
  z
}

# the point of functions in r is that it prevents you from having to write a chunk of code multiple times. pacakge them in a code, leading to more concise set of code. 
#you can use this by naming the function and then be able to run that function. 


# showing how 
mySE <- function (x){
  #assumes the input x is a vector of numbers
  # first calculate the variance
  myvar = var(x)
  #then calculate the number of values
  myn = length(x)
  #next calculate the square root of the variance divided by sample size
  mySE = sqrt(myvar/myn)
  #hte value returned will be the last object created in the function, in this case mySE
  mySE #repeating just the last variable here will cause the result to print out when run
}


#note this did not work because of the directory
source("../R_code/week6_functions.R")


#rCurl - takes URL and go to website and website will return result


#turn all of the code into the functipon, 
#you will need to get ride of line 43-48, 
#

#what sould this function evolve into,  NOAAfunction <- function(station, startDate, endDate){
# 
#
#}


# at console NOAAfunction(station=
#startDate=
# endDate= 
)


}

#POSIX elapsed seconds since midnight 1970, this is reffered to as unix epoch (time value zero, )

#this is a way of storing information into a single number, but this is not human readable. 

#have the script take the tide height. 

#use plot

plot(X = res$TimeTC, y= res$TidXT, type = 'l') #l is line graph B would be box
