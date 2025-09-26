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

## Section 3 – Instructions for Reproducing Our Results

Follow these steps to fully reproduce the analyses and figures from this project.

1. **Clone or Download the Repository**  
   - Clone using Git:  
     ```bash
     git clone https://github.com/hildj/DS-4002-Project1.git
     ```  
   - Or click **Code → Download ZIP** and extract the folder.

2. **Required Data Files**  
   Make sure the following CSV files remain in the **same directory** as `AnalysisProject1.Rmd`:
   - `AmazonWithScores.csv`
   - `trainingdata.csv`
   - `testdata.csv`

3. **Software and Packages**  
   - **R** (version 4.0 or higher) with RStudio recommended.  
   - Install these R packages if they are not already installed:
     ```r
     install.packages(c("tidyverse", "dplyr", "ggplot2",
                        "tidytext", "caret", "knitr", "rmarkdown"))
     ```

4. **Run the Analysis**  
   - Open `AnalysisProject1.Rmd` in RStudio.  
   - Click **Knit** (or run all code chunks) to execute the script.

5. **Output**  
   - A knitted HTML or PDF report will be produced containing all plots, tables, and model results that appear in the project deliverables.

These steps will recreate the cleaned dataset analysis, sentiment scoring, and predictive modeling exactly as presented in our report.


