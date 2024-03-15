## code to prepare `my_dataset` dataset goes here
library(tidyquant)
my_dataset <- tidyquant::tq_get("AAPL",
                                from = "2010-01-01",
                                to = "2020-01-01",
                                get = "stock.prices")
usethis::use_data(my_dataset, overwrite = TRUE)
