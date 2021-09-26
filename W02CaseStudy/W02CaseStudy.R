library(tidyverse)
library(dplyr)
library(ggplot2)
library(gapminder)

ggplot(data=gapminder, aes(x=year, y=gdpPercap, by=country)) + 
  geom_line(aes(color=continent)) +
  geom_line(data=gapminder[gapminder$country == "Kuwait",], aes(color=country), size=2)


newData <- subset(gapminder, country == "Kuwait")

View(newData)
