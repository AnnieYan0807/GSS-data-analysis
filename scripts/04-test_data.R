#### Preamble ####
# Purpose: Tests for simulated data.
# Author: Sakura Ariga, Annie Yan, Aliyah Maxine Ramos
# Data: 2 March 2023
# Contact: aliyahmaxine.ramos@mail.utoronto.ca
# License: MIT
# Pre-requisites: Must have simulated data.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)
#read csv
simulate_data <- read.csv(here::here("Outputs/data/simulated_data.csv"))


#### Test data ####
simulate_data$age |> class() == "integer"
simulate_data$happy|> min() >= 0
simulate_data$hours|> max() <= 24
