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

sum_bully_data |> ggplot(aes(x = date, y = sum)) + 
  geom_col() +
  theme(axis.text.x = element_text(angle = 45,hjust=1), 
        axis.line = element_line(colour = "black"),
        title = element_text(size = 8)) +
  labs(
    x = "Date",
    y = "Search Frequency",
    fill = "State Name"
  )

#### Tables ####


