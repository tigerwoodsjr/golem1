## code to prepare `my_dataset` dataset goes here
library(tidyquant)
path <- "C:/Users/conno/OneDrive/Desktop/Winter 24/"
my_dataset <- readr::read_csv(file =  paste0(path, "FAT/data/NSWGenerationbysource.csv")) %>%
  dplyr::select(1:15) %>%
  tidyr::pivot_longer(cols = 2:15,
               names_to = "GenSource", values_to = "GWh")


