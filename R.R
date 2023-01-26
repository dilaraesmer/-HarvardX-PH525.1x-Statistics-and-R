2 + 2
install.packages("rafalib")
library(rafalib)


install.packages("swirl")
library(swirl)
# Initialize variable with the sum 
my.sum = 0
for(i in 1:8){
  current = (xvalues[i]*yvalues[i])-284400*(i)
  # Update variable storing sum
  my.sum = my.sum + current
}
> my.sum
