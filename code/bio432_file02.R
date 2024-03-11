
# recap -------------------------------------------------------------------

# task 1: create three objects with scalar numeric
# Ctrl + Enter or Command + Enter
# - this hot key excute the script in console

x <- 2
y <- 8
z <- 0

# task 2: create three objects with one character element

a <- "abc"
b <- "xyz"
d <- "gh"

# task 3: create a vector of three numeric elements

## use c() function
v <- c(1, 2, 3)

## use ":"
v <- 1:3

## use seq()
v <- seq(1, 3, by = 1)

# task 4: divide vector v by 4

## this works
v / 4

## this does not work
# v / "4"


# new materials in week 2 -------------------------------------------------

# access element(s)
## vector 1 to 3
v <- c(1, 2, 3)
x <- c(2, 6, 1)

## access element 2
v[2]
x[2]

## access element 3
v[3]
x[3]

# data frame
## to use data frame, install "tidyverse" package
## install.packages("tidyverse")
library(tidyverse)

## create a tibble
df0 <- tibble(x = c(1, 2, 3),
              y = c("a", "b", "c"))

## convert iris to tibble
iris2 <- as_tibble(iris)

## access columns
iris2$Sepal.Length
iris2$Species

## access the first five elements in Sepal.Width
iris2$Sepal.Width[1:5]

## access specific elements
iris2$Sepal.Width[c(1, 5, 100)]

## access rows with specific attributes
## filter() function

## select rows for "virginica"
filter(iris2, Species == "virginica")

## select rows with > 5 Sepal.Length
### this does not save the output
filter(iris2, Sepal.Length > 5)

### this saves the output as df1
df1 <- filter(iris2, Sepal.Length > 5)

## select columns using select() function
### select Sepal.Length
select(iris2, Sepal.Length) 

### select Sepal.Length and Sepal.Width
select(iris2, c(Sepal.Length, Sepal.Width))

### exclude Sepal.Length and Sepal.Width
select(iris2, -c(Sepal.Length, Sepal.Width))

### specify starting text/ending text
select(iris2, starts_with("Sepal"))

select(iris2, starts_with("Petal"))

select(iris2, ends_with("Length"))

select(iris2, ends_with("Width"))
