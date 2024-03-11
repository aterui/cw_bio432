
library(tidyverse)

# read data ---------------------------------------------------------------

## use read_csv() function
## this function calls data from a csv file

df0 <- read_csv(here::here("data_raw/nc_fish_data.csv"))

# explore data
## using df0, find the site that has the highest species richness

### with pipe
df0 %>% 
  arrange(desc(n_species))

### without pipe
arrange(df0, desc(n_species))


## using df0, select sites with > 20 species
## use filter()

df0 %>% 
  filter(n_species > 20)

filter(df0, n_species > 20)


# visualization -----------------------------------------------------------

## create a scatter plot figure, showing the relationship bw fish species richness
## and the most important predictor you believe
## use ggplot()

## drainage area
df0 %>% 
  ggplot(aes(x = drainage_area,
             y = n_species)) +
  geom_point()

## do
df0 %>% 
  ggplot(aes(x = do,
             y = n_species)) +
  geom_point()

## pH
df0 %>% 
  ggplot(aes(x = ph,
             y = n_species)) +
  geom_point()

## forest
df0 %>% 
  ggplot(aes(x = forest,
             y = n_species)) +
  geom_point()

## wetland
df0 %>% 
  ggplot(aes(x = wetland,
             y = n_species)) +
  geom_point()


