#### Preamble ####
# Purpose: Simulates raw data.
# Author: Sakura Ariga, Annie Yan, Aliyah Maxine Ramos
# Data: 2  March 2023
# Contact: aliyahmaxine.ramos@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to know where to get survey data.
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# simulate variables: internet useage, hours, age, race, income, sex, education, numbers of children, marital and happiness



set.seed(853)

simulated_data <-
  tibble(
    
    int_use = c(
      rep(x = "Yes", times = 365),
      rep(x = "No", times = 365),
      rep(x = "N/A", times = 365)
    ),
    
    hours =
      rpois(
        n = 365 * 3,
        lambda = 7
      ),
    
    age =
      rpois(
        n = 365 * 3,
        lambda = 40
      ),
    
    race =
      rpois(
        n = 365 * 3,
        lambda = 1
      ),
    
    
    income =
      rpois(
        n = 365 * 3,
        lambda = 12
      ),
    
    edu =
      rpois(
        n = 365 * 3,
        lambda = 16
      ),
    
    child =
      rpois(
        n = 365 * 3,
        lambda = 2
      ),
    
    marital = c(
      rep(x = "Yes", times = 365),
      rep(x = "No", times = 365),
      rep(x = "N/A", times = 365)
    ),
    
    sex = c(
      rep(x = "F", times = 365),
      rep(x = "M", times = 365),
      rep(x = "Other", times = 365)
      ),
    
    happy =
      rpois(
        n = 365 * 3,
        lambda = 2
      )
  )


head(simulated_data)


write_csv(simulated_data, "outputs/data/simulated_data.csv") 



