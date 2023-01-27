install.packages("swirl")
library(swirl)

install.packages("rafalib")
library(rafaflib)

# Q:The cars dataset is available in base R. You can type cars to see it. Use the class function to determine what type of object is cars.

class(cars)

# Q:How many rows does the cars object have?

nrow(cars)

# Q:What is the name of the second column of cars?

names(cars)[2]

# Q:The simplest way to extract the columns of a matrix or data.frame is using [. For example you can access the second column with cars[,2]. What is the average distance traveled in this dataset?

mean(cars[,2])

# Q:Familiarize yourself with the which function. What row of cars has a of distance of 85?

which(cars[,2] == 85)
