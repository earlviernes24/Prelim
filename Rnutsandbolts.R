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


