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
  ggplot(mapping = aes(x = factor(income, level=c('<$1,000', '$1,000 to $4,999', '$5,000 to $9,999', '$10,000 to $14,999', '$15,000 to $19,999', '$20,000 to $24,999', '$25,000+', 'NA')))) +
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


### AVERAGES OF EACH VARIABLE AGAINST INTERNET USE HOURS ###

## Age VS. Internet Hours ##
mean_age<- cleaned_2016gss_data %>%
  select(age,wwwhr) %>%
  group_by(age)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "age", values_from = c("Mean_total"))

## mutate from wide to long 
mean_age <- melt(mean_age)  #the function melt reshapes it from wide to long
mean_age <- mean_age[-10,]  # delete NA row

# save mean data
write_csv(mean_age, "outputs/data/mean_age.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_age |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Age Group",
    y = "Internet Usage Hours"
  )






## Total Family Income VS. Internet Hours ##
mean_income<- cleaned_2016gss_data %>%
  select(rincome,wwwhr) %>%
  group_by(rincome)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "rincome", values_from = c("Mean_total"))

## mutate from wide to long 
mean_income <- melt(mean_income)  #the function melt reshapes it from wide to long
mean_income <- mean_income[-8,]  # delete NA row

# save mean data
write_csv(mean_income, "outputs/data/mean_income.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_income |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Total Family Income",
    y = "Internet Usage Hours"
  )



## Personal Income VS. Internet Hours ##
mean_pincome<- cleaned_2016gss_data %>%
  select(income,wwwhr) %>%
  group_by(income)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "income", values_from = c("Mean_total"))

## mutate from wide to long 
mean_pincome <- melt(mean_pincome)  #the function melt reshapes it from wide to long
mean_pincome <- mean_pincome[-8,]  # delete NA row

# save mean data
write_csv(mean_pincome, "outputs/data/mean_income.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_pincome |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Personal Income",
    y = "Internet Usage Hours"
  )





## Education VS. Internet Hours ##
mean_edu<- cleaned_2016gss_data %>%
  select(degree,wwwhr) %>%
  group_by(degree)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "degree", values_from = c("Mean_total"))

## mutate from wide to long 
mean_edu <- melt(mean_edu)  #the function melt reshapes it from wide to long
mean_edu <- mean_edu[-6,]  # delete NA row

# save mean data
write_csv(mean_edu, "outputs/data/mean_edu.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_edu |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Highest Education Obtained",
    y = "Internet Usage Hours"
  )






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

# use tidyverse-style code to pivot and summarise the data 
mean_sex |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Sex",
    y = "Internet Usage Hours"
  )






## Race VS. Internet Hours ##
mean_race<- cleaned_2016gss_data %>%
  select(race,wwwhr) %>%
  group_by(race)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "race", values_from = c("Mean_total"))

## mutate from wide to long 
mean_race <- melt(mean_race)  #the function melt reshapes it from wide to long

# save mean data
write_csv(mean_race, "outputs/data/mean_race.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_race |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Race",
    y = "Internet Usage Hours"
  )




## Marital Status VS. Internet Hours ##
mean_marital<- cleaned_2016gss_data %>%
  select(marital,wwwhr) %>%
  group_by(marital)%>%
  summarise(Mean_total = mean(wwwhr , na.rm=TRUE) )%>%
  pivot_wider(names_from = "marital", values_from = c("Mean_total"))

## mutate from wide to long 
mean_marital <- melt(mean_marital)  #the function melt reshapes it from wide to long
mean_marital <- mean_marital[-6,]  # delete NA row

# save mean data
write_csv(mean_marital, "outputs/data/mean_marital.csv")

# use tidyverse-style code to pivot and summarise the data 
mean_marital |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Marital Status",
    y = "Internet Usage Hours"
  )






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

# use tidyverse-style code to pivot and summarise the data 
mean_happy |> ggplot(aes(x = variable, y = value)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 12)) +
  labs(
    x = "Level of Happiness",
    y = "Internet Usage Hours"
  )





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