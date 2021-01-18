library(tidyverse)
library(rKenyaCensus)

internetusage <- rKenyaCensus::V4_T2.35 %>%
  filter(Age != c('Total')) %>%
  filter(Age != c('Urban')) %>%
  filter(Age != c('Rural')) %>%
  filter(County != c('KENYA'))

# treemap
treemap(internetusage,
        index=c("County","Age"),
        vSize="UseofInternet",
        type="index",
        title = "Internet use by age and county\n Kenya Census #tidytuesday",
        fontfamily.title = "mono",
        fontsize.title = 24,
        fontsize.labels=c(12,9), 
        fontcolor.labels=c("white","black"),   
        fontface.labels=c(2,1),                 
        bg.labels=c("transparent"),  
        palette="RdYlGn",
        range=c(-20000,30000),   
        align.labels=list(
          c("center", "center"), 
          c("right", "top")),         
        overlap.labels=0.5,                   
        inflate.labels=F,  
)
