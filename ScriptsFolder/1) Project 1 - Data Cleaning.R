library(dplyr)


lines <- readLines("Health.txt") # import txt file
blocks <- split(lines, cumsum(lines == "")) # split data for each review by blank line
blocks <- blocks[sapply(blocks, function(x) any(nzchar(x)))]  # remove empties


parse_block <- function(block) {
  kv <- strsplit(block, ": ", fixed = TRUE)
  keys <- sapply(kv, `[`, 1)
  values <- sapply(kv, function(x) if (length(x) > 1) paste(x[-1], collapse=": ") else "")
  df <- as.data.frame(as.list(setNames(values, keys)), stringsAsFactors = FALSE)
  return(df) # each review data block is split into appropriate columns and rows
}
reviews_list <- lapply(blocks, parse_block)


amazonreviews <- bind_rows(reviews_list) # merge reviews
colnames(amazonreviews) <- gsub("/", "_", colnames(amazonreviews)) # clean column names
amazonreviews <- amazonreviews %>% select(-`NA.`) # remove NAs

# export as csv

write.csv(reviews, "Amazonreviews.csv", row.names = FALSE)
