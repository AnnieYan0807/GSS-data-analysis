#### Preamble ####
# Purpose: Cleans the raw survey data.
# Author: Sakura Ariga, Annie Yan, Aliyah Maxine Ramos
# Data: 2 March 2023
# Contact: aliyahmaxine.ramos@mail.utoronto.ca
# License: MIT
# Pre-requisites: None.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)
library(haven)


#### Clean data ####

raw_2016gss_data <- read_csv("inputs/data/raw_2016gss_data.csv")

cleaned_2016gss_data <- 
  raw_2016gss_data |> 
  select(intuse, intmbile, intrecnt, wwwhr, wwwmin, age, race, income, rincome, educ, childs, marital, sex, happy)
  # focus on internet and other variables

#### Save data ####
# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(cleaned_2016gss_data, "outputs/data/cleaned_2016gss_data.csv")

