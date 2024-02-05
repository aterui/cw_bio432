
library(tidyverse)

# refresh tidyverse -------------------------------------------------------

# task 1: create a numeric vector with seq() function; length = 50
x <- seq(1, 50, by = 1)
y <- seq(1, 2, length = 50)

# task 2: use rep() function to 
# create a vector of 1, 2, 3, each repeated 3 times 
z1 <- rep(1:3, times = 3)
z2 <- rep(1:3, each = 3)

# task 3: create a data frame
# iris is a raw dataframe
# convert to tibble
# use as_tibble() to convert,
# and name the new df as df_iris
df_iris <- as_tibble(iris)

# task 4: choose rows with Species "setosa"
# use df_iris, and function filter()
df_setosa <- filter(df_iris, Species == "setosa")

# task 5: select columns starting with text "Petal"
# apply to df_iris, use select() function

## ineffective way
select(df_iris, c(Petal.Length, Petal.Width))

## more effective
select(df_iris, starts_with("Petal"))

# Piping
## naive approach
df_setosa <- filter(df_iris, Species == "setosa")
df_final <- select(df_setosa, starts_with("Petal"))

## piping for filter()
df_iris %>% 
  filter(Species == "setosa")

## piping for select()
df_iris %>% 
  select(starts_with("Petal"))

## piping at once
df_iris %>% 
  filter(Species == "setosa") %>% 
  select(starts_with("Petal"))

## and more
df_iris %>% 
  filter(Species == "setosa") %>% 
  select(starts_with("Petal")) %>% 
  filter(Petal.Length > 1.6)


# ggplot ------------------------------------------------------------------

## basic scatter plot
ggplot(df_iris,
       aes(x = Petal.Width,
           y = Petal.Length)) +
  geom_point()

## change color
ggplot(df_iris,
       aes(x = Petal.Width,
           y = Petal.Length)) +
  geom_point(color = "salmon")

## change color by species
ggplot(df_iris,
       aes(x = Petal.Width,
           y = Petal.Length)) +
  geom_point(aes(color = Species))

## change color by species
ggplot(df_iris,
       aes(x = Petal.Width,
           y = Petal.Length,
           color = Species)) +
  geom_point()

## combine with pipe
df_iris %>% 
  ggplot(aes(x = Petal.Width,
             y = Petal.Length,
             color = Species)) +
  geom_point()

## boxplot
df_iris %>% 
  ggplot(aes(x = Species,
             y = Petal.Length,
             color = Species)) +
  geom_boxplot()

## boxplot
df_iris %>% 
  ggplot(aes(x = Species,
             y = Petal.Length,
             color = Species)) +
  geom_boxplot() +
  geom_point()


  