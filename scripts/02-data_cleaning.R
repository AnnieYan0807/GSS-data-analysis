#### Preamble ####
# Purpose: Cleans the raw survey data.
# Author: Sakura Ariga, Annie Yan, Aliyah Maxine Ramos
# Data: 2 March 2023
# Contact: aliyahmaxine.ramos@mail.utoronto.ca
# Pre-requisites: None.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)
library(haven)
library(reshape2)


#### Clean data ####

### main data set ###
## Import raw data ##
raw_2016gss_data <- read_csv("inputs/data/raw_2016gss_data.csv")

## Focus on internet variables and demographic variables ##
cleaned_2016gss_data <- 
  raw_2016gss_data |> 
  select(age, sex, race, childs, marital, happy, wwwhr)

##  Rename ages to age groups ##
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


## Save data ##
# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(cleaned_2016gss_data, "outputs/data/cleaned_2016gss_data.csv")


#### AVERAGES OF EACH VARIABLE AGAINST INTERNET USE HOURS ####

## Age VS. Internet Hours ##
mean_age<- cleaned_2016gss_data %>%
  select(age,wwwhr) %>%
  group_by(age)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "age", values_from = c("Mean_total"))
# mutate from wide to long #
mean_age <- melt(mean_age)  #the function melt reshapes it from wide to long
mean_age <- mean_age[-10,]  # delete NA row
# save mean data #
write_csv(mean_age, "outputs/data/mean_age.csv")

## Sex VS. Internet Hours ##
mean_sex<- cleaned_2016gss_data %>%
  select(sex,wwwhr) %>%
  group_by(sex)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "sex", values_from = c("Mean_total"))
## mutate from wide to long 
mean_sex <- melt(mean_sex)  #the function melt reshapes it from wide to long
# save mean data
write_csv(mean_sex, "outputs/data/mean_sex.csv")

## Race VS. Internet Hours ##
mean_race<- cleaned_2016gss_data %>%
  select(race,wwwhr) %>%
  group_by(race)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "race", values_from = c("Mean_total"))
# mutate from wide to long 
mean_race <- melt(mean_race)  #the function melt reshapes it from wide to long
# save mean data
write_csv(mean_race, "outputs/data/mean_race.csv")

## Marital Status VS. Internet Hours ##
mean_marital<- cleaned_2016gss_data %>%
  select(marital,wwwhr) %>%
  group_by(marital)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "marital", values_from = c("Mean_total"))
# mutate from wide to long 
mean_marital <- melt(mean_marital)  #the function melt reshapes it from wide to long
mean_marital <- mean_marital[-6,]  # delete NA row
# save mean data
write_csv(mean_marital, "outputs/data/mean_marital.csv")

## Number of Children VS. Internet Hours ##
mean_childs<- cleaned_2016gss_data %>%
  select(childs,wwwhr) %>%
  group_by(childs)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "childs", values_from = c("Mean_total"))
# mutate from wide to long 
mean_childs <- melt(mean_childs)  #the function melt reshapes it from wide to long
mean_childs <- mean_childs[-10,]  # delete NA row
# save mean data
write_csv(mean_childs, "outputs/data/mean_childs.csv")

## Level of Happiness VS. Internet Hours##
mean_happy<- cleaned_2016gss_data %>%
  select(happy,wwwhr) %>%
  group_by(happy)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "happy", values_from = c("Mean_total"))
## mutate from wide to long 
mean_happy <- melt(mean_happy)  #the function melt reshapes it from wide to long
mean_happy <- mean_happy[-4,]  # delete NA row
# save mean data
write_csv(mean_happy, "outputs/data/mean_happy.csv")