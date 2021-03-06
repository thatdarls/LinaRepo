---
title: "W03 Great British Bake off"
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





# Data Visualization
In the plot you can see that viewership per episode gradually increases as the show goes on. There's a vast difference from the beginning series episode, to their last premiered. There's a point where the series rapidly declines in viewers after the seventh season, where in there's almost no difference in beginner and ending viewership. Seems as if people did not tune in to see the finales towards the end.


```r
# Use this R-Chunk to plot & visualize your data!

##Create a ggplot showcasing the different viewer counts per episode.
ggplot(data = ratings, aes(x = episode, y = viewers_7day, group=series, by = series)) +
  geom_point(aes(color = series)) +
  geom_line(aes(color =series)) +
  theme_bw() +
  facet_wrap(~series, nrow = 2) +
  xlab("Episodes(in a Season)") +
  ylab("Viewers in 7-day Window (in millions)") +
  labs(color = "Series")
```

![](GBBO_files/figure-html/unnamed-chunk-2-1.png)<!-- -->


```r
##Create a new data frame removing seasons with less than 10 episodes.
newRating <- filter(ratings, as.numeric(series) > 2)
##Add a new column where you get the mean channel's ranking.
newRating <- newRating %>% 
              group_by(series) %>%
              mutate(mean = mean(channels_rank))
```



```r
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
```

![](GBBO_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

Conclusion

I went ahead and searched the reason for the series 8 abrupt drop in viewership after series 7 and I learned of a couple of factors that may have caused the change. First, the Great British Bake Off had to change production to a new channel and second, one of the beloved hosts, Mary Berry, decided to stay behind and not transition to the new set. Although ratings seem to have increased after the transition, viewership did not follow and views remained stagnant towards the end of series 10.
