x <- 1
print(x)
x <- 1:20
x

q <- 1L
q


x <- 1.3
x <- c(0.5, 0.6)
x


x <- c(T, F)
x
x <- c("a", "b", "c")

f <- c(0.1, 0.7)  ## numeric
f

g <- c(TRUE, FALSE)  ## logical
g

h <- c(T, F)  ## logical
h

y <- c(1.7, "a")  ##character
y

x <- 9:40  ## integer
x

t <- c(1+0i, 2+4i)
t


x <- 0:100
x
class(x)
x

as.numeric(x)

as.logical(x)

as.character(x)



y <- c("a", "b", "c")
as.numeric(y)

as.logical(y)

as.complex(y)




y <- list(1, "a", TRUE, 1 + 6i)
y



m <- matrix(nrow = 5, ncol = 4)
m
dim(m)
as.complex(m)
attributes(m)


b <- factor(c("good", "bad", "good", "bad"))
b
table(b)
b

unclass(b)

x <- c(1,NA,2,3,5)
is.na(x)


is.nan(x)

x <- c(1,2,Nan,Na,4)
is.na(x)

x <- data.frame(foo = 1:6, bar = c(T, T, F, F, F, T))
x

nrow(x)

ncol(x)

x <- 1:10
names(x)

names(x) <- c("foo", "bar", "norf")
x

names(x)

x <- list(a = 1, b = 2, c = 3)
x

m <- matrix

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

y <- data.frame(a = 1, b = "a")
dput(y)

dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")
y

x

str(file)

con <- file("foo.txt", "r")
data <- read.csv(con)
close(con)

con <- gzfile("words.gz")
x <- readLines(con, 10)
x

## This might take time
con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)





p <- c("a", "b", "c", "c", "d", "a")
p[1]

p[2]

p[1:4]

p[p > "a"]

u <- p > "a"
u


t <- list(foo = 1:4, bar = 0.6)
t[1]

t[[1]]

t$bar


t[["bar"]]

t["bar"]


d <- list(foo = 1:4, bar = 0.6, baz = "hello")
d[c(1, 3)]


x <- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "foo"
x[[name]] ## element 'name' doesn't exist!

x$name ## element 'name' doesn't exist!

x$foo

j <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
j[[c(1, 3)]]

j[[1]][[3]]

j[[c(2,1)]]


g <- matrix(1:6, 2, 3)
g[1,2]

g[2, 1]

g[1, ]

g[, 2]


c <- matrix(1:6, 2, 3)
c[1, 2]


c[1, 2, drop = FALSE]

a <- matrix(1:6, 2, 3)
a[1, ]

a[1, , drop = FALSE]


h <- list(aardvark = 1:5)
h$A


x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good

x[good]

y[good]



x <- 1:4; y <- 6:9
x + y



x > 2

x >= 2

y == 8

x * y


x / y

x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x * y ## element-wise multiplication

x / y

x %*% y ## true matrix multiplication
