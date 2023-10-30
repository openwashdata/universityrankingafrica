# description -------------------------------------------------------------

# R script to process uploaded raw data into a tidy dataframe

# load packages -----------------------------------------------------------

library(readr)
library(readxl)
library(dplyr)
library(stringr)

#read data
ura_raw <- read_excel("./data-raw/African_Universities.xlsx")


# tidy data ---------------------------------------------------------------

universityrankingafrica <- ura_raw %>%
  dplyr::mutate(
    across(
      c("Rank Africa", "Rank World","Impact Rank","Openness Rank","Excellence Rank","Number of Engineering Courses", "Years of study", "Yearly fee", "Number of Students"),
      as.integer
    ),
    across(
      c("Website Function"),
      as.factor
    ),
    `access date` = as.Date(`access date`, format = "%d.%m.%Y")
  )


## write data
usethis::use_data(universityrankingafrica, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata")) #exports dataset in R
write_csv(universityrankingafrica, here::here("inst/extdata/universityrankingafrica")) #exports dataset in csv and excel
openxlsx::write.xlsx(universityrankingafrica,"inst/extdata/universityrankingafrica")
