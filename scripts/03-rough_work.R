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

### COMPARE SEX, RACE, DEGREE WITH AGE ###

# age sex and race
# cleaned_2016gss_data |>
#   ggplot(mapping = aes(x = age, fill = race)) +
#     geom_bar() +
#     theme_minimal() +
#     theme(axis.text.x = element_text(angle = 45,hjust=1)) +
#     labs(
#       x = "Age-group of respondent",
#       y = "Number of respondents",
#       fill = "Voted for"
#     ) +
#     facet_wrap(
#       vars(sex),
#       dir = "v",
#       scales = "free"
#     ) +
#     theme(legend.position = "bottom")

# age
# cleaned_2016gss_data |>
#   ggplot(mapping = aes(x = age)) +
#   geom_bar() +
#   theme(axis.text.x = element_text(angle = 45,hjust=1)) +
#   labs(x = "Age", y = "Number of Respondents")

# sex
# cleaned_2016gss_data |>
#   ggplot(mapping = aes(x = sex)) +
#   geom_bar() +
#   labs(x = "Sex", y = "Number of Respondents")

# age and sex
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = age, fill = sex)) + 
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  geom_bar(position = "dodge2")

# race
# cleaned_2016gss_data |>
#   ggplot(mapping = aes(x = race)) +
#   geom_bar() +
#   labs(x = "Race", y = "Number of Respondents")

# age and race
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = age, fill = race)) + 
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  geom_bar(position = "dodge2")

# age and education
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = age, fill = degree)) + 
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  geom_bar(position = "dodge2")

### PERSONAL VS TOTAL FAMILY INCOME ###

# personal income
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = factor(income, level=c('<$1,000', '$1,000 to $4,999', '$5,000 to $9,999', '9', '10', '11', '$25,000+', 'NA')))) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Personal Income", y = "Number of Respondents")

# total family income
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = factor(rincome, level=c('<$1,000', '$1,000 to $4,999', '$5,000 to $9,999', '$10,000 to $14,999', '$15,000 to $19,999', '$20,000 to $24,999', '$25,000+', 'NA')))) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Total Family Income", y = "Number of Respondents")

# education
# cleaned_2016gss_data |>
#   ggplot(mapping = aes(x = degree)) +
#   geom_bar() +
#   theme(axis.text.x = element_text(angle = 45,hjust=1)) +
#   labs(x = "Education", y = "Number of Respondents")

### NUMBER OF CHILDREN AND MARITAL ###

# number of children
# cleaned_2016gss_data |>
#   ggplot(mapping = aes(x = childs)) +
#   geom_bar() +
#   theme(axis.text.x = element_text(angle = 45,hjust=1)) +
#   labs(x = "Number of Children", y = "Number of Respondents")

# marital status
# cleaned_2016gss_data |>
#   ggplot(mapping = aes(x = marital)) +
#   geom_bar() +
#   theme(axis.text.x = element_text(angle = 45,hjust=1)) +
#   labs(x = "Marital Status", y = "Number of Respondents")

# number of children and marital status
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = childs, fill = marital)) + 
  geom_bar(position = "dodge2")

### OTHER VARIABLES :) ###

# level of happiness
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = happy)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45,hjust=1)) +
  labs(x = "Level of Happiness", y = "Number of Respondents")

# weekly total of internet use (hours) - could be graphed differently...
cleaned_2016gss_data |>
  ggplot(mapping = aes(x = wwwhr)) +
  geom_bar() +
  labs(x = "Weekly Total of Internet Use (Hours)", y = "Number of Respondents")



#### Tables ####
# Summary statistics of our GSS data 
install.packages("vtable")
install.packages("kableExtra")
library(vtable)
library(kableExtra)
summ_gss <- cleaned_2016gss_data %>% 
  select(age, sex, race, income, rincome, 
         degree, childs, marital,
         happy, wwwhr)
sumtable(cleaned_2016gss_data,  title = 'Summary Statistics of Our Variables', out = 'kable')