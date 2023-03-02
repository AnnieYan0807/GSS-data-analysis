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

# Age VS. Internet Hours
cleaned_2016gss_data |> ggplot(aes(x = age, y = wwwhr)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 8)) +
  labs(
    x = "Age",
    y = "Internet Hours"
  )

# Income VS. Internet Hours
cleaned_2016gss_data |> ggplot(aes(x = income, y = wwwhr)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 8)) +
  labs(
    x = "Income",
    y = "Internet Hours"
  )

# Education VS. Internet Hours
cleaned_2016gss_data |> ggplot(aes(x = educ, y = wwwhr)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 8)) +
  labs(
    x = "Education",
    y = "Internet Hours"
  )
# REMINDER: find average THEN graph

# Sex VS. Internet Hours
cleaned_2016gss_data |> ggplot(aes(x = sex, y = wwwhr)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 8)) +
  labs(
    x = "Sex",
    y = "Internet Hours"
  )
# REMINDER: find average THEN graph

# Race VS. Internet Hours
cleaned_2016gss_data |> ggplot(aes(x = race, y = wwwhr)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 8)) +
  labs(
    x = "Race",
    y = "Internet Hours"
  )
# REMINDER: find average THEN graph

#### Tables ####


