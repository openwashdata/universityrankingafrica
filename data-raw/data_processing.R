# description -------------------------------------------------------------

# R script to process uploaded raw data into a tidy dataframe

# load packages -----------------------------------------------------------

library(readr)
library(readxl)
library(dplyr)
library(stringr)
library(janitor)

#read data
ura_raw <- read_excel("./data-raw/African_Universities.xlsx")
countries_raw <- read_excel("./data-raw/African_Countries.xlsx")


# tidy data ---------------------------------------------------------------
ranking <- ura_raw |>
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
  ) |>
  janitor::clean_names() |>
  rename(colonial_power = colonial_power_at_independence,
         academic_system = academic_system_used,
         engineering_courses = number_of_engineering_courses)

african_countries <- countries_raw |>
  janitor::clean_names()

## write data
usethis::use_data(ranking, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata")) #exports dataset in R
write_csv(ranking, here::here("inst/extdata/ranking.csv")) #exports dataset in csv and excel
openxlsx::write.xlsx(ranking,"inst/extdata/ranking.xlsx")

usethis::use_data(african_countries, overwrite = TRUE)
write_csv(african_countries, here::here("inst/extdata/african_countries.csv")) #exports dataset in csv and excel
openxlsx::write.xlsx(african_countries,"inst/extdata/african_countries.xlsx")


