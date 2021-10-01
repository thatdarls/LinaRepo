---
title: "W02 Case Study: Wealth and Life"
author: "Alina Rojas"
date: "October 01, 2021"
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
library(tidyverse)
library(dplyr)
library(ggplot2)
library(gapminder)

## View the original data plot.
ggplot(data=gapminder, aes(x=year, y=gdpPercap, by=country)) + 
  geom_line(aes(color=continent)) +
  geom_line(data=gapminder[gapminder$country == "Kuwait",], aes(color=country), size=2)
```

![](W02CaseStudy_files/figure-html/unnamed-chunk-2-1.png)<!-- -->

```r
## Remove Kuwait from the data frame.
gapminder2 <- gapminder[!gapminder$country == 'Kuwait',]

## Load ggplot2. 
## Use facet_wrap to create multiple graphs depending on year.
ggplot(data=gapminder2, aes(x=lifeExp, y=gdpPercap, by=country)) +
  geom_point(aes(color=continent, size = pop/100000))  +
  guides(size = guide_legend(order = 1), color = guide_legend(order = 2)) +
  scale_y_continuous(trans = "sqrt") +
  labs(size = "Population(100k)", x = "Life Expectancy", y = "GDP per Capita") +
  theme_bw() +
  facet_wrap(~year, nrow = 1)
```

![](W02CaseStudy_files/figure-html/unnamed-chunk-2-2.png)<!-- -->

```r
##Finalize report by saving plot as .png
ggsave("W02CaseStudy.png", width = 15)
```

