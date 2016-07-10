# TODO: Add comment
# 
# Author: sridhar
#https://github.com/apsridhar/Bridge-Week1-R
###############################################################################

#1. Write a loop that calculates 12-factorial

v <- 1:12
result=1
for (i in v) {
	result=result*i
}
print(paste('Factorial of 12 is ', result))

factorial <- function(x){
	if(x ==0 || x ==1){
		1
	}
	else{
		x* factorial(x-1)
	}
}
print(paste('Factorial of 12 is ', factorial(12)))


#2. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.

seqnums <- seq(20,50, by=5)
print(cat("seq numbers by step of 5 between 20 and 50:", seqnums))


#3 Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.
###
##Quadratic equation formula to find roots
## x =  (-B + SQRT(B2-4AC))/2A  
## x =  (-B - SQRT(B2-4AC))/2A 
####
a =readline(prompt="Enter an integer value for a: ")
repeat {
	if (!is.null(a) && (!grepl("^-?[0-9]+$",a))){
		a =readline(prompt="Enter an integer value for a: ")
	}else{
		a <- as.integer(a)
		break
	}
	
}


b =readline(prompt="Enter an integer value for b: ")
repeat {
	if (!is.null(a) && (!grepl("^-?[0-9]+$",b))){
		b =readline(prompt="Enter an integer value for b: ")
	}else{
		b <- as.integer(b)
		break
	}
	
}


c =readline(prompt="Enter an integer value for c: ")
repeat {
	if (!is.null(a) && (!grepl("^-?[0-9]+$",c))){
		c =readline(prompt="Enter an integer value for c: ")
	}else{
		c<- as.integer(c)
		break
	}
	
}

print (paste("You entered a as ", a))
print (paste("You entered b as  ", b))
print (paste("You entered c as  ", c))

result <- (-b - sqrt(b^2 - (4*a*c)))/(2*a)
print(paste("- x root is ", result))
result <- (-b + sqrt(b^2 - (4*a*c)))/(2*a)
print(paste("+ x root is ", result))
