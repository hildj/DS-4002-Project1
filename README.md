# Amazon Product Reviews
This repo contains a dataset of Amazon product reviews, which we have condensed to just health-related products in order to compare review text to review ratings. 

## Contents of this repository
This repository contains everything needed to reproduce the analyses and results for **<Amazon Product Reviews>**: raw and processed data (where allowed), data-preparation scripts, analysis notebooks/R Markdown files that produce figures and tables, and final results (figures, tables, HTML/PDF report). Use the sections below for software requirements, a map of the folder structure, and exact reproduction steps.

## Section 1: Software and platform
**Software used**
- **Python** using the VADER package to calculate sentiment scores
- **R** for data cleaning, EDA, and building logistic regression model
- **Jupyter Notebook** for ...
- **Git** for version control and GitHub for hosting.

**Add-on R packages required (install with `install.packages()` or via `renv`)**
- `tidyverse` (includes `dplyr`, `ggplot2`, `readr`, `tibble`, etc.)
- `rmarkdown`, `knitr` (rendering reports) , `vader`

## Section 2: Map of Documentation
1. OUTPUT Folder
AnalysisProject1.pdf – Full project analysis with output (coefficients, confusion matrices). <br>
boxplot.png – Box plot of compound scores vs. review score. <br>
scatterplot.png – Scatter plot of review score vs. review length by sentiment. <br>
wordcloud.png – Word cloud visualization. <br>
2. ScriptsFolder
Project 1- Data Cleaning.R – Data cleaning script. <br>
ScatterPlot_EdaPlots.ipynb – Exploratory scatter plots. <br>
Word Clouds.Rmd – Script for generating word clouds. <br>
AnalysisProject1.Rmd – Main analysis script. <br>
AnalysisProject1 (Updated).Rmd – Updated analysis script with headers added. <br>
BoxPlotScript.R – Script to generate box plot. <br>
MakeDatawithVader.R – Script for transforming data with VADER sentiment analysis. <br>
3. data Folder
AmazonWithScores.csv – Full dataset with VADER scores, word length, etc. <br>
Metadata.md – Metadata description file. <br>
testdata.csv – Test dataset (≈20% of observations from AmazonWithScores.csv). <br>
trainingdata.csv – Training dataset (≈80% of observations). <br>
Amazonreviews.csv – Raw dataset. <br>

## Section 3 – How to Reproduce Our Results

If you want to reproduce our analysis and see all the figures and tables from our project, follow these steps:

1. **Get the Repository**
   - Clone the repo using Git:
     ```bash
     git clone https://github.com/hildj/DS-4002-Project1.git
     ```
   - Or download it as a ZIP file and extract it.
   - Open RStudio and set your working directory to the project folder.

2. **Make Sure the Data Files Are There**
   - The following CSV files need to be in the **same folder** as `AnalysisProject1.Rmd`:
     - `AmazonWithScores.csv`
     - `trainingdata.csv`
     - `testdata.csv`
   - These files are included in the repository, so you shouldn’t need to download anything else.

3. **Install R and Packages**
   - We used **R** (version 4.0 or higher) and RStudio.
   - Install the packages we used if you don’t already have them:
     ```r
     install.packages(c("tidyverse", "dplyr", "ggplot2",
                        "tidytext", "caret", "knitr", "rmarkdown"))
     ```

4. **Run the Analysis**
   - Open `AnalysisProject1.Rmd` in RStudio.
   - Click **Knit** to run all the code and generate the full report.
   - This will produce the HTML (or PDF) report with all of our results, including plots, tables, and model outputs.

5. **Troubleshooting**
   - Make sure your working directory is the project folder and the CSV files are in the right place.
   - If anything seems off, you can run `sessionInfo()` in R to check your package versions.

Following these steps will let you reproduce everything from our project exactly as we did.



