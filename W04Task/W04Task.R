##Make sure to load the readr packages.
install.packages("readr")

##Load necessary libraries.
library(tidyverse)
library(readr)
library(dplyr)

##Load the data from Github.
stock_data <- read_csv(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.csv"))

##First, separate the contest_period into separate columns.
stock_data <- stock_data %>%
  separate(contest_period, into = c("begin_date", "end_date"), sep = "-")
##Second, separate the end date to month and year.
stock_data <- stock_data %>%
  separate(end_date, into = c("end_month", "end_year"), sep = -4)
##Third, make sure that February mispells get replaced.
stock_data$end_month <- replace(stock_data$end_month, stock_data$end_month == "Febuary", "February")
##Make sure that December mispells get replaced.
stock_data$end_month <- replace(stock_data$end_month, stock_data$end_month == "Dec", "December")
##Dismiss the beginning column.
stock_data <- stock_data %>%
  select(end_month, end_year, variable, value)
##Save  your rds data.
saveRDS(stock_data, "tidy_data.rds")

stock_plot <- 
  ggplot(stock_data, aes(x=end_year, y=value, color = variable)) + 
  geom_boxplot(aes(color = variable)) +
  theme_minimal() +
  xlab("Year") +
  ylab("Six Month Returns") +
  labs(color = "Variable")

stock_plot



