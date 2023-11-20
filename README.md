
<!-- README.md is generated from README.Rmd. Please edit that file -->

# universityrankingafrica

<!-- badges: start -->
<!-- badges: end -->

This packages combines data collected as part of an MSc. Thesis Project.
The goal of this project was to build an openly accessible database with
data from the top ranked universities of each African country.The
project was supported by the Global Health Engineering group at ETH
Zurich, Switzerland.

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" style="display: block; margin: auto;" />

## Installation

You can install the development version of universityrankingafrica from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("openwashdata/universityrankingafrica")
```

Alternatively, you can download the dataset as a CSV or XLSX file from
the table below.

| dataset                 | CSV                                                                                                              | XLSX                                                                                                               |
|:------------------------|:-----------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------|
| universityrankingafrica | [Download CSV](https://github.com/openwashdata/universityrankingafrica/inst/extdata/universityrankingafrica.csv) | [Download XLSX](https://github.com/openwashdata/universityrankingafrica/inst/extdata/universityrankingafrica.xlsx) |

## MSc. Thesis Project

### Description and Research Question

For research at GHE about African universities and their performance on
an international scale, a comprehensive database was needed. Such a
database would also prove useful to gain a broad picture of the
institutions present on the continent, and potential new opportunities
for academic collaborations. The first research question that can be
tackled after the data collection is “Which attributes of an African
university correlate with its performance in an international ranking?”.

### Data

For the data collection at hand, it was decided to only consider the 3
(at most) highest ranked universities of each African country. The
gathered data offers interesting insights into the African academic
landscape, mostly through the process of combing through more than 140
websites in the search for information. Generally, this data collection
process gets more and more difficult the further down the ranking
performance goes: Navigation is more confusing and useful information
scarcer. Assisting institutions in improving the quality of their web
contents could be one possible avenue for cooperation with African
universities in the future.

The package provides access to one data set.

``` r
library(universityrankingafrica)
```

The `universityrankingafrica` data set has 27 variables and 141
observations. For an overview of the variable names, see the following
table.

``` r
universityrankingafrica
```

| variable_name                  | variable_type                            | description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:-------------------------------|:-----------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| University                     | string                                   | Name of the University                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Country                        | drop-down from List of African countries | Country where the University is located                                                                                                                                                                                                                                                                                                                                                                                                                     |
| City                           | string                                   | City where the University is located                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ROR entry correct              | y / n                                    | Is the entry on the ror.org-website corresponding to the University correct? In most “n”-cases, the stated website is incorrect                                                                                                                                                                                                                                                                                                                             |
| URL                            | URL                                      | Official website of the University                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Website Secure                 | y / n                                    | Does the website use https? Is there no security related pop-up upon opening the website?                                                                                                                                                                                                                                                                                                                                                                   |
| Website up to date             | y / n                                    | Are news articles on the website up to date OR is the copyright date of the website the current year?                                                                                                                                                                                                                                                                                                                                                       |
| Website Function               | good / medium / poor / defunct           | Good: navigating through the website is smooth, no OR very few dead or redundant links. Medium: some dead links within the webpage, some placeholders (“lorem ipsum”) still visible, some blank or empty pages. Poor: Navigating through the website is very difficult. Defunct: the official link of the university’s website is no longer hosted, or is otherwise inaccessible. Note: Does NOT indicate how much information can be found on the website. |
| Website Language               | string                                   | Default language of the landing site                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Colonial Power at Independence | string                                   | The colonial Power from which the country gained independence, if it ever was colonized or became independent.                                                                                                                                                                                                                                                                                                                                              |
| Rank Africa                    | int                                      | The rank of the University in Africa, according to <https://www.webometrics.info/en/Ranking_africa>                                                                                                                                                                                                                                                                                                                                                         |
| Rank World                     | int                                      | The rank of the University in the World, according to <https://www.webometrics.info/en/Ranking_africa>                                                                                                                                                                                                                                                                                                                                                      |
| Impact Rank                    | int                                      | The impact rank of the University, according to <https://www.webometrics.info/en/Ranking_africa>                                                                                                                                                                                                                                                                                                                                                            |
| Openness Rank                  | int                                      | The openness rank of the University, according to <https://www.webometrics.info/en/Ranking_africa>                                                                                                                                                                                                                                                                                                                                                          |
| Excellence Rank                | int                                      | The excellence rank of the University, according to <https://www.webometrics.info/en/Ranking_africa>                                                                                                                                                                                                                                                                                                                                                        |
| Academic System Used           | American / French                        | Which academic system is used at the University: American (Undergraduate, Graduate, Doctorate) or French (LMD: Licence, Master, Doctorat)                                                                                                                                                                                                                                                                                                                   |
| Number of Engineering Courses  | int                                      | The number of different undergraduate engineering courses the University offers.                                                                                                                                                                                                                                                                                                                                                                            |
| Years of Study                 | int                                      | Stated duration of an undergraduate engineering degree. If the University doesn’t offer engineering degrees, the duration of another undergraduate degree is indicated.                                                                                                                                                                                                                                                                                     |
| Online Application             | y / n                                    | Is there a possibility to apply for the University online? If no explicit method is stated to send the application online, it’s considered as “no”                                                                                                                                                                                                                                                                                                          |
| International Students         | y / n                                    | Does the University give special information to interested foreign students on how to enter?                                                                                                                                                                                                                                                                                                                                                                |
| Yearly Fee                     | int                                      | Required yearly tuition fee for a local student to complete a year of an undergraduate engineering degree at the University. If the University doesn’t offer engineering degrees, the general tuition fee is indicated                                                                                                                                                                                                                                      |
| Masters Programme              | y / n                                    | Does the University offer Master’s programmes? (NOT only engineering)                                                                                                                                                                                                                                                                                                                                                                                       |
| Primary Teaching Language      | string                                   | Language in which the majority of teaching takes place                                                                                                                                                                                                                                                                                                                                                                                                      |
| Online Payment                 | y / n                                    | Is there a possibility to pay University fees online? (either banking information, instructions or a direct link)                                                                                                                                                                                                                                                                                                                                           |
| Number of Students             | int                                      | If stated on the website, the number of students studying at the University                                                                                                                                                                                                                                                                                                                                                                                 |
| Access Date                    | date (dd.mm.yyyy)                        | Date the University website was accessed                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Remarks                        | string                                   | Personal notes on the University                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Countries                      | string                                   | Name of the Country                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Region                         | string                                   | African Region where the Country is located                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Best Uni Rank                  | int                                      | Rank Africa of the best University of the country                                                                                                                                                                                                                                                                                                                                                                                                           |
| GDP                            | int                                      | GDP of the country in 2021 (With a few exceptions for which the data is older). Source: ourworldindata.org, World Bank, international-\$ in 2017 prices (accounting for differences in cost of living)                                                                                                                                                                                                                                                      |
| GDP per Capita                 | int                                      | GDP per Capita of the country in 2021 (With a few exceptions for which the data is older). Source: ourworldindata.org, World Bank, international-\$ in 2017 prices (accounting for differences in cost of living)                                                                                                                                                                                                                                           |
| HDI                            | double between 0 and 1                   | Human Development Index of the country in 2021. Source: ourworldindata.org, United Nations Development Programme (UNDP). Variable time span: 1990-2021. Higher number means better developped.                                                                                                                                                                                                                                                              |

## Example

### Idea 1

Our first try is to select the highest ranked university in each country
and use only those to rank the countries.

``` r
library(universityrankingafrica)
library(tidyverse)
library(sf)
library(rnaturalearth)


top_ranked_per_country <- universityrankingafrica |> 
  select(University, Country, `Rank Africa`) |> 
  group_by(Country) |> 
  filter(`Rank Africa` == min(`Rank Africa`)) |> 
  ungroup()

world <- ne_countries(scale = "medium", returnclass = "sf")

africa_map <- left_join(world, 
                        top_ranked_per_country, by = c("name" = "Country")) |>  
  filter(continent == "Africa")

plot <- ggplot() +
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

plot
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" style="display: block; margin: auto;" />

``` r
ggsave("plot/africa_map_1.png", plot, width = 10, height = 8, dpi = 300)
```

### Idea 2

This analysis investigates whether a correlation exists between the
colonial power that previously governed African nations and their
current university rankings.

``` r
library(universityrankingafrica)
library(tidyverse)

data <- universityrankingafrica |> 
  filter(`Colonial Power at Independence` %in% c("United Kingdom", "France", "Belgium", "Italy", "Portugal"))

# Create a scatter plot
ggplot(data, aes(x = `Colonial Power at Independence`, y = `Rank Africa`)) +
  geom_point() +
  labs(x = "Colonial Power at Independence", y = "Africa Rank") +
  ggtitle("University Ranking in Africa vs Colonial Power at Independence")
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="100%" style="display: block; margin: auto;" />

``` r

# Perform linear regression
model <- lm(`Rank Africa` ~ `Colonial Power at Independence`, data = data)
print(summary(model))
#> 
#> Call:
#> lm(formula = `Rank Africa` ~ `Colonial Power at Independence`, 
#>     data = data)
#> 
#> Residuals:
#>    Min     1Q Median     3Q    Max 
#> -628.1 -318.9 -168.4  148.3 1756.4 
#> 
#> Coefficients:
#>                                                Estimate Std. Error t value
#> (Intercept)                                      449.44     167.62   2.681
#> `Colonial Power at Independence`France           200.63     181.54   1.105
#> `Colonial Power at Independence`Italy           -301.78     335.23  -0.900
#> `Colonial Power at Independence`Portugal          80.33     237.05   0.339
#> `Colonial Power at Independence`United Kingdom  -116.83     180.81  -0.646
#>                                                Pr(>|t|)   
#> (Intercept)                                     0.00834 **
#> `Colonial Power at Independence`France          0.27125   
#> `Colonial Power at Independence`Italy           0.36977   
#> `Colonial Power at Independence`Portugal        0.73527   
#> `Colonial Power at Independence`United Kingdom  0.51941   
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> Residual standard error: 502.9 on 123 degrees of freedom
#> Multiple R-squared:  0.0896, Adjusted R-squared:  0.05999 
#> F-statistic: 3.026 on 4 and 123 DF,  p-value: 0.02025
```

#### Interpretation

The model doesn’t provide strong evidence that the specific colonial
powers (France, Italy, Portugal, United Kingdom) significantly predict
the university rankings in Africa based on their p-values which are
greater than conventional thresholds like 0.05.. The low R-squared value
indicates that the model might not explain much of the variability in
the university rankings, suggesting that factors beyond colonial power
might influence these rankings significantly.

## License

Data are available as
[CC-BY](https://github.com/openwashdata/universityrankingafrica/LICENSE.md).

## Citation

To cite this package, please use:

``` r
citation("universityrankingafrica")
#> Um Paket 'universityrankingafrica' in Publikationen zu zitieren, nutzen
#> Sie bitte:
#> 
#>   Sigrist S, Skorik S (2023). "universityrankingafrica: University
#>   Ranking Africa."
#> 
#> Ein BibTeX-Eintrag für LaTeX-Benutzer ist
#> 
#>   @Misc{sigristskorik,
#>     title = {universityrankingafrica: University Ranking Africa},
#>     author = {Samuel Sigrist and Sophia Skorik},
#>     year = {2023},
#>     abstract = {What the package does (one paragraph).},
#>     version = {0.0.0.9000},
#>   }
```
