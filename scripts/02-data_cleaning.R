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
# Import raw data 
raw_2016gss_data <- read_csv("inputs/data/raw_2016gss_data.csv")

# Focus on internet variables and demographic variables
cleaned_2016gss_data <- 
  raw_2016gss_data |> 
  select(age, sex, race, income, rincome, degree, childs, marital, happy, wwwhr)

# Rename ages to age groups 
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 18] <- "Ages 18 - 20"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 19] <- "Ages 18 - 20"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 20] <- "Ages 18 - 20"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 21] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 22] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 23] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 24] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 25] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 26] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 27] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 28] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 29] <- "Ages 21 - 29"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 30] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 31] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 32] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 33] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 34] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 35] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 36] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 37] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 38] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 39] <- "Ages 30 - 39"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 40] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 41] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 42] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 43] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 44] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 45] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 46] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 47] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 48] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 49] <- "Ages 40 - 49"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 50] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 51] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 52] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 53] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 54] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 55] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 56] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 57] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 58] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 59] <- "Ages 50 - 59"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 60] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 61] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 62] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 63] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 64] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 65] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 66] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 67] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 68] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 69] <- "Ages 60 - 69"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 70] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 71] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 72] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 73] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 74] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 75] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 76] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 77] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 78] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 79] <- "Ages 70 - 79"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 80] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 81] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 82] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 83] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 84] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 85] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 86] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 87] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 88] <- "Ages 80 - 88"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == 89] <- "Ages 89+"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == -100] <- "NA"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == -99] <- "No answer"
cleaned_2016gss_data$age [cleaned_2016gss_data$age == -98] <- "Do not know"

# Rename sex to be more understandable 
cleaned_2016gss_data$sex [cleaned_2016gss_data$sex == 1] <- "Male"
cleaned_2016gss_data$sex [cleaned_2016gss_data$sex == 2] <- "Female"
cleaned_2016gss_data$sex [cleaned_2016gss_data$sex == -100] <- "NA"
cleaned_2016gss_data$sex [cleaned_2016gss_data$sex == -99] <- "No answer"
cleaned_2016gss_data$sex [cleaned_2016gss_data$sex == -97] <- "Did not answer"

# Rename race to be more understandable 
cleaned_2016gss_data$race [cleaned_2016gss_data$race == 1] <- "White"
cleaned_2016gss_data$race [cleaned_2016gss_data$race == 2] <- "Black"
cleaned_2016gss_data$race [cleaned_2016gss_data$race == 3] <- "Other"
cleaned_2016gss_data$race [cleaned_2016gss_data$race == -100] <- "NA"

# Rename family income to be more understandable 
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 1] <- "<$1,000"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 2] <- "$1,000 to $4,999"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 3] <- "$1,000 to $4,999"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 4] <- "$1,000 to $4,999"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 5] <- "$5,000 to $9,999"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 6] <- "$5,000 to $9,999"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 7] <- "$5,000 to $9,999"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 8] <- "$5,000 to $9,999"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == 12] <- "$25,000+"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == -100] <- "NA"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == -99] <- "No answer"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == -98] <- "Do not know"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == -97] <- "Skipped"
cleaned_2016gss_data$income [cleaned_2016gss_data$income == -90] <- "Refused"

# Rename personal income to be more understandable 
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 1] <- "<$1,000"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 2] <- "$1,000 to $4,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 3] <- "$1,000 to $4,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 4] <- "$1,000 to $4,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 5] <- "$5,000 to $9,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 6] <- "$5,000 to $9,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 7] <- "$5,000 to $9,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 8] <- "$5,000 to $9,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 9] <- "$10,000 to $14,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 10] <- "$15,000 to $19,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 11] <- "$20,000 to $24,999"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == 12] <- "$25,000+"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == -100] <- "NA"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == -99] <- "No answer"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == -98] <- "Do not know"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == -97] <- "Skipped"
cleaned_2016gss_data$rincome [cleaned_2016gss_data$rincome == -90] <- "Refused"

# Rename degree to be more understandable 
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == 0] <- "Less than high school"
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == 1] <- "High school"
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == 2] <- "Associate/junior college"
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == 3] <- "Bachelor's"
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == 4] <- "Graduate"
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == -99] <- "No answer"
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == -98] <- "Do not know"
cleaned_2016gss_data$degree [cleaned_2016gss_data$degree == -97] <- "Skipped"

# Rename childs to be more understandable 
cleaned_2016gss_data$childs [cleaned_2016gss_data$childs == 8] <- "8+"
cleaned_2016gss_data$childs [cleaned_2016gss_data$childs == -100] <- "NA"
cleaned_2016gss_data$childs [cleaned_2016gss_data$childs == -99] <- "No answer"
cleaned_2016gss_data$childs [cleaned_2016gss_data$childs == -98] <- "Do not know"
cleaned_2016gss_data$childs [cleaned_2016gss_data$childs == -97] <- "Skipped"

# Rename marital to be more understandable 
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == 1] <- "Married"
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == 2] <- "Widowed"
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == 3] <- "Divorced"
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == 4] <- "Separated"
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == 5] <- "Never married"
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == -99] <- "No answer"
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == -98] <- "Do not know"
cleaned_2016gss_data$marital [cleaned_2016gss_data$marital == -97] <- "Skipped"

# Rename happy to be more understandable 
cleaned_2016gss_data$happy [cleaned_2016gss_data$happy == 1] <- "Very happy"
cleaned_2016gss_data$happy [cleaned_2016gss_data$happy == 2] <- "Pretty happy"
cleaned_2016gss_data$happy [cleaned_2016gss_data$happy == 3] <- "Not too happy"
cleaned_2016gss_data$happy [cleaned_2016gss_data$happy == -100] <- "NA"
cleaned_2016gss_data$happy [cleaned_2016gss_data$happy == -99] <- "No answer"
cleaned_2016gss_data$happy [cleaned_2016gss_data$happy == -98] <- "Do not know"
cleaned_2016gss_data$happy [cleaned_2016gss_data$happy == -97] <- "Skipped"

# Renaming column titles to more understandable labels
#cleaned_2016gss_data <-
#  cleaned_2016gss_data %>%
#  rename(
#    "Age Group" = age,
#    "Sex" = sex,
#    "Race" = race,
#    "Personal Income" = income,
#    "Total Family Income" = rincome,
#    "Highest Education Obtained" = degree,
#    "Number of Children" = childs,
#    "Marital Status" = marital, 
#    "Level of Happiness" = happy, 
#    "Weekly Total of Internet Use (Hours)" = wwwhr
#  )


#### Save data ####
# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(cleaned_2016gss_data, "outputs/data/cleaned_2016gss_data.csv")
