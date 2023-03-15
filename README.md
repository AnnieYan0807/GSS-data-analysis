# Paper Overview

In this study, we investigated the 2016 United States General Social Survey to gain an understanding of the characteristics of the people that use the Internet the most, such as age, marital status, number of children, and level of happiness. We did this by comparing the average number of weekly Internet use across population groups. We found that young adults that have never been married or have children and who are not satisfied with their general happiness are those that use the Internet the most. In an era in which the Internet is becoming more and more used in the US, it is important to understand which population group uses the Internet the most in order to inform public policies surrounding Internet addiction and mental health. 

# File Structure

This repo is structured as follows:

1.   The "inputs" folder contains 1 folder: "data". 
1.1  The "data" folder contains the raw 2016 United States General Social Survey (GSS) dataset that we imported from the US GSS website. This dataset is titled "raw_2016gss_data.csv"

2.   The "outputs" folder contains 2 folders: "data" and "paper". 
2.1  The "data" folder contains our cleaned dataset (titled "cleaned_2016gss_data.csv") and our calculations of the means of our variables (the CSV files that begin with "mean_"). It also contains our simulated data (titled "simulated_data.csv"). 
2.2  The "paper" folder contains our final paper (both in its Quarto form and PDF form, titled "paper.qmd" and "paper.pdf" respectively), our references list (titled "references.bib"), and our supplementary survey (titled "US GSS supplementary Survey for Weekly Internet Use"). 

3.   The "scripts" folder contains 4 scripts that simulate our data, that downloads our data, that cleans our data, and that tests our data (titled "00-simulate_data.R", "01-download_data.R", "02-data_cleaning.R", and "03-test_data.R" respectively).
