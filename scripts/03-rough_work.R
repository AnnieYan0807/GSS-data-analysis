#### Preamble ####
# Purpose: Rough work.
# Author: Sakura Ariga, Annie Yan, Aliyah Maxine Ramos
# Data: 2  March 2023
# Contact: aliyahmaxine.ramos@mail.utoronto.ca
# License: MIT
# Pre-requisites: None.
# Any other information needed? None

#### Graphs ####

library(tidyverse)
library(lessR)
library(dplyr)
library(tidyr)
library(reshape2)
library(ggplot2)


#read csv
cleaned_2016gss_data <- read_csv("outputs/data/cleaned_2016gss_data.csv")


### BAR GRAPHS OF EACH VARIABLE to show how many respondents for each option ###

# age
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Age Group`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Age", y = "Number of Respondents")

# sex
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = Sex)) +
  geom_bar() +
  labs(x = "Sex", y = "Number of Respondents")

# race
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = Race)) +
  geom_bar() +
  labs(x = "Race", y = "Number of Respondents")

# personal income
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Personal Income`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Personal Income", y = "Number of Respondents")

# total family income
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Total Family Income`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Total Family Income", y = "Number of Respondents")

# education
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Highest Education Obtained`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Education", y = "Number of Respondents")

# number of children
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Number of Children`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Number of Children", y = "Number of Respondents")

# marital status
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Marital Status`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Marital Status", y = "Number of Respondents")

# level of happiness
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Level of Happiness`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Level of Happiness", y = "Number of Respondents")

# weekly total of internet use (hours) - could be graphed differently...
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = `Weekly Total of Internet Use (Hours)`)) +
  geom_bar() +
  labs(x = "Weekly Total of Internet Use (Hours)", y = "Number of Respondents")


### AVERAGES OF EACH VARIABLE AGAINST INTERNET USE HOURS ###

## Age VS. Internet Hours ##
mean_age<- cleaned_2016gss_data %>%
  select(`Age Group`,`Weekly Total of Internet Use (Hours)`) %>%
  group_by(`Age Group`)%>%
  summarise(Mean_total = mean(`Weekly Total of Internet Use (Hours)` , na.rm=TRUE) )%>%
  pivot_wider(names_from = "Age Group", values_from = c("Mean_total"))

## mutate from wide to long 
mean_age <- melt(mean_age)  #the function melt reshapes it from wide to long
mean_age <- mean_age[-10,]  # delete NA row

# save mean data
write_csv(mean_age, "outputs/data/mean_age.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_age |> ggplot(aes(x = variable, y = value)) + 
  geom_point() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Age Group",
    y = "Internet Usage Hours"
  )






## Income VS. Internet Hours ##
mean_income<- cleaned_2016gss_data %>%
  select(`Total Family Income`,`Weekly Total of Internet Use (Hours)`) %>%
  group_by(`Total Family Income`)%>%
  summarise(Mean_total = mean(`Weekly Total of Internet Use (Hours)` , na.rm=TRUE) )%>%
  pivot_wider(names_from = "Total Family Income", values_from = c("Mean_total"))

## mutate from wide to long 
mean_income <- melt(mean_income)  #the function melt reshapes it from wide to long
mean_income <- mean_income[-8,]  # delete NA row

# save mean data
write_csv(mean_income, "outputs/data/mean_income.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_income |> ggplot(aes(x = variable, y = value)) + 
  geom_point() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Total Family Income",
    y = "Internet Usage Hours"
  )






## Education VS. Internet Hours ##
mean_edu<- cleaned_2016gss_data %>%
  select(`Highest Education Obtained`,`Weekly Total of Internet Use (Hours)`) %>%
  group_by(`Highest Education Obtained`)%>%
  summarise(Mean_total = mean(`Weekly Total of Internet Use (Hours)` , na.rm=TRUE) )%>%
  pivot_wider(names_from = "Highest Education Obtained", values_from = c("Mean_total"))

## mutate from wide to long 
mean_edu <- melt(mean_edu)  #the function melt reshapes it from wide to long
mean_edu <- mean_edu[-6,]  # delete NA row

# save mean data
write_csv(mean_edu, "outputs/data/mean_edu.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_edu |> ggplot(aes(x = variable, y = value)) + 
  geom_point() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Highest Education Obtained",
    y = "Internet Usage Hours"
  )






## Sex VS. Internet Hours ##
mean_sex<- cleaned_2016gss_data %>%
  select(`Sex`,`Weekly Total of Internet Use (Hours)`) %>%
  group_by(`Sex`)%>%
  summarise(Mean_total = mean(`Weekly Total of Internet Use (Hours)` , na.rm=TRUE) )%>%
  pivot_wider(names_from = "Sex", values_from = c("Mean_total"))

## mutate from wide to long 
mean_sex <- melt(mean_sex)  #the function melt reshapes it from wide to long

# save mean data
write_csv(mean_sex, "outputs/data/mean_sex.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_sex |> ggplot(aes(x = variable, y = value)) + 
  geom_point() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Sex",
    y = "Internet Usage Hours"
  )






## Race VS. Internet Hours ##
mean_race<- cleaned_2016gss_data %>%
  select(`Race`,`Weekly Total of Internet Use (Hours)`) %>%
  group_by(`Race`)%>%
  summarise(Mean_total = mean(`Weekly Total of Internet Use (Hours)` , na.rm=TRUE) )%>%
  pivot_wider(names_from = "Race", values_from = c("Mean_total"))

## mutate from wide to long 
mean_race <- melt(mean_race)  #the function melt reshapes it from wide to long

# save mean data
write_csv(mean_race, "outputs/data/mean_race.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_race |> ggplot(aes(x = variable, y = value)) + 
  geom_point() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Race",
    y = "Internet Usage Hours"
  )





#### Tables ####


