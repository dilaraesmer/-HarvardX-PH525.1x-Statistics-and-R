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

1:10
x <- 1:10
y <- rnorm(10)
plot(x,y)

dat <- read.csv("femaleMiceWeights.csv")
print(dat)
 
head(dat)

# shows data in column 2

names(dat)[2]

# What is the entry in the 12th row and second column?

dat[12,2]

# Use $ to extract the weight column and report the weight of the mouse in the 11th row.

dat$Bodyweight[11]

# How many mice are included in our dataset?

length(dat$Diet)

# What is the average weight of mice on the high fat diet?

hf <- dat$Diet == "hf"
mean(dat$Bodyweight[hf == TRUE])

# Now take a random sample of size 1 from the numbers 13 to 24 and report back the weight of the mouse represented by that row. Make sure to type set.seed(1) to ensure that everybody gets the same answer.

set.seed(1)
sample(13:24, 1)
dat[21,2]

install.packages("dplyr")


controls <- filter(dat, Diet=="chow")
View(controls)
select(controls, BodyWeight)
unlist(controls)


controls <- filter(dat, Diet=="chow") %>%
  select(Bodyweight) %>% unlist

controls
mean(controls)

url = "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url, filename)

# How many animals in the table are primates?

nrow(data)
primates = filter(data, order == "Primates")
nrow(primates)

# What is the class of the object you obtain after subsetting the table to only include primates?

class(primates)

# Now use the select() function to extract the sleep (total) for the primates. What class is this object?

data %>% filter(order == "Primates") %>%
  select(sleep_total) %>% class

# Now use the select() function to extract the sleep (total) for the primates. What class is this object?

nrow()

# Now we want to calculate the average amount of sleep for primates (the average of the numbers computed above). One challenge is that the mean() function requires a vector so, if we simply apply it to the output above, we get an error. Look at the help file for unlist() and use it to compute the desired average. What is the average amount of sleep for primates?

data %>% filter(order == "Primates") %>% 
  select(sleep_total) %>% unlist %>% mean

# For the last exercise, we could also use the dplyr summarize function. We have not introduced this function, but you can read the help file and repeat exercise 5, this time using just filter and summarize to get the answer.

data %>% filter(order == "Primates") %>%
  summarize(avg_sleep = mean(sleep_total))
 






