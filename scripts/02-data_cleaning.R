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
# [...UPDATE THIS...]

#### Clean data ####
# [...UPDATE THIS...]
raw_data <- read_csv("inputs/data/raw_data.csv")




#### Save data ####
# [...UPDATE THIS...]
# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(cleaned_data, "outputs/data/cleaned_data.csv")

