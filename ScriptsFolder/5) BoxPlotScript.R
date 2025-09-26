# -------------------------------------------------------
# Script: BoxPlot.R
# Purpose: Visualize distribution of sentiment scores across review ratings.
# Key Info: Helps check whether sentiment scores align with star ratings.
# Input: Dataset with sentiment scores
# Output: Boxplot images for exploratory analysis
# -------------------------------------------------------


library(tidyverse)

data <- read.csv('AmazonWithScores.csv') %>% na.omit()

ggplot(data,aes(x=factor(review.score),y=compound)) + geom_boxplot() + theme_minimal() +
  labs(x='Review Score',y='Compound Score')

ggsave('Compound_Box_Plot.pdf') 
