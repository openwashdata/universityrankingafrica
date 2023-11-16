
<!-- README.md is generated from README.Rmd. Please edit that file -->

# universityrankingafrica

<!-- badges: start -->
<!-- badges: end -->

The goal of universityrankingafrica is to …

``` r
data("universityrankingafrica")
top_ranked_per_country <- universityrankingafrica |> 
  select(University, Country, `Rank Africa`) |> 
  group_by(Country) |> 
  filter(`Rank Africa` == min(`Rank Africa`)) |> 
  ungroup()
world <- ne_countries(scale = "medium", returnclass = "sf")
africa_map <- left_join(world, top_ranked_per_country, by = c("name" = "Country")) |>  
  filter(continent == "Africa")
ggplot() +
  theme_void() +
  geom_sf(data = africa_map, aes(fill = `Rank Africa`), color = "white", lwd = 0) +
  scale_fill_gradientn(name = "Rank Africa", 
                       trans = "log",
                       labels = scales::label_number(accuracy = 1),
                       colors = c("#2E8B57","#9DBF9E", "#FCB97D", "#A84268"),
                       na.value = "grey80") +
  labs(title = "Top-Ranked Universities in Africa", ) +
  theme(legend.position = c(0, 0.4), legend.direction = "horizontal",
        plot.title = element_text(size = 20, hjust = 3, vjust = 0))
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

## Installation

You can install the development version of universityrankingafrica from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("openwashdata/universityrankingafrica")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(universityrankingafrica)
library(tidyverse)
## basic example code
```
