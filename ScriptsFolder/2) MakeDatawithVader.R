# -------------------------------------------------------
# Script: MakeDataWithVader.R
# Purpose: Generate sentiment features using VADER for each review.
# Key Info: Adds compound, pos, neu, and neg sentiment scores.
# Defines sentiment categories: positive, neutral, negative.
# Input: Cleaned CSV from DataCleaning.R
# Output: CSV with added sentiment scores for analysis
# -------------------------------------------------------

library(vader)
library(tidyverse)
library(stringr)


data1 <-  read.csv('Amazonreviews.csv')

scores <- vader_df(data1$review.text)


merged_df<- merge(data1, scores, by = "row.names")


data1 <- merged_df %>% mutate(Num_Exclamations = str_count(review.text, fixed("!"))) # add column for number of exclamations

data1 <- data1 %>% mutate(Num_Characters = nchar(review.text)) # add column for number of characters

data1 <- data1 %>% mutate(Num_Words = str_count(review.text, boundary("word"))) # add column for number of words
data1 <- data1[, -c(1, 7, 9,12)] # remove columns row.names, review.helpfulness, review.time, and redundant text column



write.csv(data1,'AmazonWithScores.csv',row.names=F)








