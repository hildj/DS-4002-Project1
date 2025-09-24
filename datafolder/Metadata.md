# Data Summary

Our dataset consists of Amazon product reviews, specifically focused on Health-related products. It includes 1,265 rows and 17 columns with information such as product name, product ID, reviewer name, reviewer ID, product rating, text review, and a sentiment score generated using the VADER sentiment analysis tool. Product examples include armrest covers, foot cushions, socks, and medicine, with prices ranging from $1–$99. The dataset has been cleaned and transformed from its original TXT format into a CSV file to allow for structured analysis. The cleaned dataset is available in our GitHub repository: DS-4002-Project1 / datafolder / AmazonWithScores.csv https://github.com/hildj/DS-4002-Project1 

# Provenance

The dataset originates from the Stanford Network Analysis Platform (SNAP), which compiles product review data from Amazon. The full dataset includes over 34 million reviews from more than 6 million users, spanning June 1995 to March 2013. For this project, we narrowed our scope to the Health products subset. We removed uninformative columns, restructured the TXT file into CSV format, and ran VADER sentiment analysis in Python to generate sentiment scores. These scores were merged back into the dataset to support our exploratory analysis.

# License

The original dataset is made publicly available through SNAP. Our cleaned version and analysis outputs will be shared in our GitHub repository under the same open-use conditions, following SNAP’s licensing requirements and citing SNAP usage.

# Ethical Statements

review.UserID (User IDs) will be treated as anonymous identifiers to protect privacy. Since reviews concern health products, we acknowledge that they may not always reflect medical accuracy or reliability. Customer opinions are subjective and sentiment analysis should be interpreted cautiously in this context. We use reviews strictly for analytical and educational purposes, not for making health-related claims

# Data Dictionary



# Exploratory Plots
