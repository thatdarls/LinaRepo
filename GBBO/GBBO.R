##Load the necessary libraries.
remotes::install_github("apreshill/bakeoff")
library(bakeoff)
library(tidyverse)
library(dplyr)

##Learn more about the ratings dataset.
?ratings

##Create a ggplot showcasing the different viewer counts per episode.
ggplot(data = ratings, aes(x = episode, y = viewers_7day, group=series, by = series)) +
  geom_point(aes(color = series)) +
  geom_line(aes(color =series)) +
  theme_bw() +
  facet_wrap(~series, nrow = 2) +
  xlab("Episodes(in a Season)") +
  ylab("Viewers in 7-day Window (in millions)") +
  labs(color = "Series")

##View the ratings data frame.
View(ratings)

##Create a new data frame removing seasons with less than 10 episodes.
newRating <- ratings %>%
              filter(ratings, as.numeric(series) > 2)
##Add a new column where you get the mean channel's ranking.
newRating <- newRating %>% 
              group_by(series) %>%
              mutate(mean = mean(channels_rank))

##View the new data frame.
View(newRating)

##Plot the new data frame with the mean.
ggplot(data = newRating, aes(x = episode, y = viewers_7day, group=series, by = series)) +
  geom_point(aes(color = series)) +
  geom_line(aes(color =series)) +
  geom_line(data = newRating, mapping = aes(x = episode, y = mean)) +
  geom_point(data = newRating, mapping = aes(x = episode, y = mean)) +
  theme_bw() +
  facet_wrap(~series, nrow = 2) +
  xlab("Episodes(in a Season)") +
  ylab("Viewers in 7-day Window (in millions)") +
  labs(color = "Series")
