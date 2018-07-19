z <- 12
z

z <-c(12, FALSE)
z

m <-c(10,13,15,33)
n <-c(13,22,88,110)
rbind(m, n)

z <- list(22, "a", "c", FALSE)
z[[2]]

z <- 10:40
y <- 3
z + y

x <-c(117, 114, 14, 15, 113, 112, 110)
x[x >=101 ] <- 14
x



# install package if doesnt exist 
install.packages("data.table")
library("data.table")

# Reading in data
quiz_data <- fread('hw1_data.csv')

# Column names of the dataset 
names(quiz_data)

# First twelve rows 
quiz_data[c( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)]


tail(quiz_data, 8)

quiz_data[112, Wind]
quiz_data[42, Temp]
quiz_data[82, Solar.R]




hw1 = read.csv('hw1_data.csv')
sub = subset(quiz_data, is.na(Ozone))
nrow(sub)

hw1 = read.csv('hw1_data.csv')
sub = subset(quiz_data, is.na(Solar.R))
nrow(sub)

hw1 = read.csv('hw1_data.csv')
sub = subset(quiz_data, is.na(Wind))
nrow(sub)

hw1 = read.csv('hw1_data.csv')
sub = subset(quiz_data, is.na(Temp))
nrow(sub)


hw1 = read.csv('hw1_data.csv')
sub = subset(hw1, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean)

hw1 = read.csv('hw1_data.csv')
sub = subset(hw1, !is.na(Wind), select = Wind)
apply(sub, 2, mean)

hw1 = read.csv('hw1_data.csv')
sub = subset(hw1, !is.na(Temp), select = Temp)
apply(sub, 2, mean)



quiz_data = read.csv('hw1_data.csv')
sub = subset(quiz_data, Ozone > 26 & Temp > 80, select = Solar.R)
apply(sub, 2, mean)

quiz_data = read.csv('hw1_data.csv')
sub = subset(hw1, Month == 8, select = Temp)
apply(sub, 2, mean)

quiz_data = read.csv('hw1_data.csv')
sub = subset(hw1, Month == 6, select = Temp)
apply(sub, 2, mean)



quiz_data = read.csv('hw1_data.csv')
sub = subset(quiz_data, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)