##W02 Task: Visualizing Large Distributions

##Load the necessary libraries.
library(tidyverse)
library(ggplot2)
library(dplyr)
library(nycflights13)

##View the data.
nycflights13::flights

##View the flights data set.
View(flights)

## Filter through data to create a smaller sample set.
fly <- filter(flights, arr_delay >5)
ggplot(data = fly) +
  geom_point(mapping = aes(x = month, y = air_time))
##  geom_point(mapping = aes(x = carrier, y = arr_delay))


?mpg

