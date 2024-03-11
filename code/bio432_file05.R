
## read `data_cobble_size.csv` & `data_depth.csv`
## use R function to read them, and create objects `df_cb` and `df_depth`

library(tidyverse)

df_cb <- read_csv(here::here("data_raw/data_cobble_size.csv"))
df_depth <- read_csv(here::here("data_raw/data_depth.csv"))

## create a boxplot, comparing cobble size and water depth
## between riffle and pool
## - y-axis = cobble size or depth
## - x-axis = habitat type (riffle or pool)

## cobble boxplot
## g_cb <- ... saves ggplot as an object
g_cb <- df_cb %>% 
  ggplot(aes(x = habitat,
             y = size)) +
  geom_boxplot()

print(g_cb)

## depth boxplot
g_depth <- df_depth %>% 
  ggplot(aes(x = habitat,
             y = depth)) +
  geom_boxplot()

print(g_depth)

## t-test
## go to "two-group comparison" in Biostats for details

## cobble size
## - pick data for pool
y_cb0 <- df_cb %>% 
  filter(habitat == "pool") %>% 
  pull(size)

## - pick data for riffle
y_cb1 <- df_cb %>% 
  filter(habitat == "riffle") %>% 
  pull(size)

## - perform t.test()
t.test(y_cb0, y_cb1)


## water depth
y_dep0 <- df_depth %>% 
  filter(habitat == "pool") %>% 
  pull(depth)

y_dep1 <- df_depth %>% 
  filter(habitat == "riffle") %>% 
  pull(depth)

t.test(y_dep0, y_dep1)

