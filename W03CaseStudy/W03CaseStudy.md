---
title: "W03 Case Study: Give Your Visualization Wings to Fly"
author: "Alina Rojas"
date: "October 03, 2021"
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





## Data Visualization


```r
# Use this R-Chunk to plot & visualize your data!

##Install reprex package for debugging help.

##View the flights dataframe.
View(flights)

##Filter through the data so that only JFK, LGA, and EWR show up.
newFlight <- flights %>%
                filter(dep_time <=1200)

ggplot(data = newFlight, mapping = aes(x = origin, y = dep_delay)) +
  geom_boxplot()
```

![](W03CaseStudy_files/figure-html/plot_data-1.png)<!-- -->

## Conclusions
