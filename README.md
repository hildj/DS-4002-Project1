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
1. OUTPUT folder
   A. AnalysisProject1.pdf - Analysis of Project with Output (Coefficients, Confusion Matrices)
   B. boxplot.png - Box Plot of Compound Scores vs Review Score
   C. scatterplot.png - Scatter Plot of Review Score vs Review Length by Sentiment
   D. wordcloud.png - Word Cloud
2. ScriptsFolder
   A. Project 1- Data Cleaning.R
   B. ScatterPlot_EdaPlots.ipynb - Making Scatter Plots
   C. Word Clouds.Rmd - Script to make word clouds
   D. AnalysisProject1.Rmd - Analysis Script
   E. AnalysisProject1.Rmd - Updated Analysis Script with Headers Added
   F. BoxPlotScript.R - Script to make box plot
   G. MakeDatawithVader.R - Transforming Data with Vader
3. data folder
   A. AmazonWithScores.csv - ful data with VADER scores and word length etc
   B. Metadata.md - metadata md file
   C. testdata.csv - test data used on model (about 20 percent of observations from AmazonWithScores.csv)
   D. trainingdata.csv - training data used to fit model (about 80 percent of data)
   E. Amazonreviews.csv - raw data 

## Section 3: How to reproduce our results
To reproduce our results from the analysis, take the AnalysisProject1.Rmd and put it into R. You will want to download the AmazonWithScores.csv, testdata.csv, and trainingdata.csv. Put this data in the same folder as AnalysisProject1.Rmd, and run the whole script. This should allow for full reproducibility of the anlysis from the project.


Examples below
    # Main Heading
    ## Subheading
    ### Smaller Subheading

        **Bold text**
    *Italic text*
    * Unordered list item 1
    * Unordered list item 2

    1. Ordered list item 1
    2. Ordered list item 2
