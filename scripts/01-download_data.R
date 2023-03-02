#### Preamble ####
# Purpose: Downloads and saves the data from General Social Survey Data Explorer.
# Author: Sakura Ariga, Annie Yan, Aliyah Maxine Ramos
# Data: 2 March 2023
# Contact: aliyahmaxine.ramos@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to know where to get survey data.
# Any other information needed? None.


#### Workspace setup ####
<<<<<<< HEAD
library(haven)
=======
>>>>>>> 63a9385e6e37c8970f7df55844df1669c4164ed1
library(tidyverse)

#### Download data ####

raw_2016gss_data <- read_dta("GSS2016.dta")

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(raw_2016gss_data, "inputs/data/raw_2016gss_data.csv") 

         