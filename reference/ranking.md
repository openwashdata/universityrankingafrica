# University Ranking Africa

Database of African Top Universities and observations of their rankings,
type of courses, application process, part of international students and
website funtions.

## Usage

``` r
ranking
```

## Format

A tibble with 141 rows and 26 variables:

- university:

  Name of the University

- country:

  Country where the University is located

- city:

  City where the University is located

- ror_entry_correct:

  Is the entry on the ror.org-website corresponding to the University
  correct? In most "n"-cases, the stated website is incorrect

- url:

  Official website of the University

- website_secure:

  Does the website use https? Is there no security related pop-up upon
  opening the website?

- website_up_to_date:

  Are news articles on the website up to date OR is the copyright date
  of the website the current year?

- website_function:

  Good: navigating through the website is smooth, no OR very few dead or
  redundant links. Medium: some dead links within the webpage, some
  placeholders ("lorem ipsum") still visible, some blank or empty pages.
  Poor: Navigating through the website is very difficult. Defunct: the
  official link of the university's website is no longer hosted, or is
  otherwise inaccessible. Note: Does NOT indicate how much information
  can be found on the website.

- website_language:

  Default language of the landing site

- colonial_power:

  The colonial Power from which the country gained independence, if it
  ever was colonized or became independent.

- rank_africa:

  The rank of the University in Africa, according to
  https://www.webometrics.info/en/Ranking_africa

- rank_world:

  The rank of the University in the World, according to
  https://www.webometrics.info/en/Ranking_africa

- impact_rank:

  The impact rank of the University, according to
  https://www.webometrics.info/en/Ranking_africa

- openness_rank:

  The openness rank of the University, according to
  https://www.webometrics.info/en/Ranking_africa

- excellence_rank:

  The excellence rank of the University, according to
  https://www.webometrics.info/en/Ranking_africa

- academic_system:

  Which academic system is used at the University: American
  (Undergraduate, Graduate, Doctorate) or French (LMD: Licence, Master,
  Doctorat)

- engineering_courses:

  The number of different undergraduate engineering courses the
  University offers.

- years_of_study:

  Stated duration of an undergraduate engineering degree. If the
  University doesn't offer engineering degrees, the duration of another
  undergraduate degree is indicated.

- online_application:

  Is there a possibility to apply for the University online? If no
  explicit method is stated to send the application online, it's
  considered as "no"

- international_students:

  Does the University give special information to interested foreign
  students on how to enter?

- yearly_fee:

  Required yearly tuition fee for a local student to complete a year of
  an undergraduate engineering degree at the University. If the
  University doesn't offer engineering degrees, the general tuition fee
  is indicated

- masters_programme:

  Does the University offer Master's programmes? (NOT only engineering)

- online_payment:

  Is there a possibility to pay University fees online? (either banking
  information, instructions or a direct link)

- number_of_students:

  If stated on the website, the number of students studying at the
  University

- access_date:

  Date the University website was accessed

- remarks:

  Personal notes on the University
