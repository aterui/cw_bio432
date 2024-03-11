x <- 2 + 8
y <- 3 - 7
z <- 3 * 3
a <- 2 / 3
b <- 4 ^ 3

x_plus_y <- x + y
x_times_z <- x * z

## vector operation
x <- c(1, 2)
w <- c("aquatic", "ecology")

x_over_a <- x / a

#ex.1a manually create a vector using c()
x <- c(1,3,4,8)
print(x)

#ex.1b character
x <- c("a", "b", "c")
print(x)

#ex.1c logical
x <- c(TRUE, FALSE, FALSE)
print(x)

#ex.2 sequence of numbers
x <- 1:7
print(x)

#ex.3a replicate same numbers or characters
x <- rep(x = 4, times = 5) # replicate 4 five times
print(x)

x <- rep(x = 1:2, each = 3) # replicate 1 and 2, 3 times each
print(x)

#ex.3b replicate same numbers or characters
x <- rep(x = "a", times = 5) # replicate "a" five times
print(x)

#ex.4a use seq() function
x <- seq(1, 5, by = 1)
print(x)

x <- seq(1, 5, length = 10)
print(x)
