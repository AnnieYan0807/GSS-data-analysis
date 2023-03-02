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
# [...ADD CODE HERE...]



set.seed(853)

simulated_bullying_data <-
  tibble(
    Date = rep(x = as.Date("2021-01-01") + c(0:364), times = 3),
    
    State = c(
      rep(x = "AK", times = 365),
      rep(x = "CA", times = 365),
      rep(x = "NY", times = 365)
    ),
    
    Cyberbullying =
      rpois(
        n = 365 * 3,
        lambda = 10
      ),
    
    Schoolbullying =
      rpois(
        n = 365 * 3,
        lambda = 20
      ),
    
    School_cyber_bullying =
      rpois(
        n = 365 * 3,
        lambda = 80
      )
    
  )


head(simulated_bullying_data)
