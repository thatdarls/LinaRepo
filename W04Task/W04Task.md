---
title: "W04 Task: Clean and Reformat (aka tidy) Stock Data"
author: "Alina Rojas"
date: "October 06, 2021"
output:
  html_document:  
    keep_md: true
    toc: true
    toc_float: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---






```r
# Use this R-Chunk to import all your datasets!
stock_data <- read_csv(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.csv"))
```

## Data Wrangling


```r
# Use this R-Chunk to clean & wrangle your data!
stock_data <- stock_data %>%
  separate(contest_period, into = c("begin_date", "end_date"), sep = "-")

stock_data <- stock_data %>%
  separate(end_date, into = c("month", "year_end"), sep = -4)

saveRDS(stock_data, "tidy_contest_period.rds")
```
