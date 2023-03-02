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

library(haven)
library(tidyverse)

raw_2016gss_data <- read_dta("inputs/data/raw_2016gss_data.dta")

cleaned_2016gss_data <- 
  raw_2016gss_data |> 
  select(intuse, intmbile, intrecnt, twitter, facebook, instagrm, linkedin, snapchat, tumblr, whatsapp, googlesn, pinterst, flickr, vine, clssmtes, starts_with("sns"), wwwhr, wwwmin, age, race, income, rincome, educ, childs, marital, sex)

#### Save data ####
# [...UPDATE THIS...]
# change cleaned_data to whatever name you end up with at the end of cleaning
write_dta(cleaned_2016gss_data, "outputs/data/cleaned_2016gss_data.dta")

