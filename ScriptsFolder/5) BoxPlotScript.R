library(tidyverse)

data <- read.csv('AmazonWithScores.csv') %>% na.omit()

ggplot(data,aes(x=factor(review.score),y=compound)) + geom_boxplot() + theme_minimal() +
  labs(x='Review Score',y='Compound Score')

ggsave('Compound_Box_Plot.pdf') 
