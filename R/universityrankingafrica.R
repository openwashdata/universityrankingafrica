#
#' University Ranking Africa
#'
#'
#' Database of African Top Universities and observations of their rankings, type of courses, application process, part of international students and website funtions.
#'
#' @format A tibble with 141 rows and 27 variables:

#' \describe{
#'   \item{University}{Name of the University}
#'   \item{Country}{Country where the University is located}
#'   \item{City}{City where the University is located}
#'   \item{ROR entry correct}{Is the entry on the ror.org-website corresponding to the University correct? In most "n"-cases, the stated website is incorrect}
#'   \item{URL}{Official website of the University}
#'   \item{Website Secure}{Does the website use https? Is there no security related pop-up upon opening the website?}
#'   \item{Website up to date}{Are news articles on the website up to date OR is the copyright date of the website the current year?}
#'   \item{Website Function}{Good: navigating through the website is smooth, no OR very few dead or redundant links. Medium: some dead links within the webpage, some placeholders ("lorem ipsum") still visible, some blank or empty pages. Poor: Navigating through the website is very difficult. Defunct: the official link of the university's website is no longer hosted, or is otherwise inaccessible. Note: Does NOT indicate how much information can be found on the website.}
#'   \item{Website Language}{Default language of the landing site}
#'   \item{Colonial Power at Independence}{The colonial Power from which the country gained independence, if it ever was colonized or became independent.}
#'   \item{Rank Africa}{The rank of the University in Africa, according to https://www.webometrics.info/en/Ranking_africa}
#'   \item{Rank World}{The rank of the University in the World, according to https://www.webometrics.info/en/Ranking_africa}
#'   \item{Impact Rank}{The impact rank of the University, according to https://www.webometrics.info/en/Ranking_africa}
#'   \item{Openness Rank}{The openness rank of the University, according to https://www.webometrics.info/en/Ranking_africa}
#'   \item{Excellence Rank}{The excellence rank of the University, according to https://www.webometrics.info/en/Ranking_africa}
#'   \item{Academic System Used}{Which academic system is used at the University: American (Undergraduate, Graduate, Doctorate) or French (LMD: Licence, Master, Doctorat)}
#'   \item{Number of Engineering Courses}{The number of different undergraduate engineering courses the University offers.}
#'   \item{Years of Study}{Stated duration of an undergraduate engineering degree. If the University doesn't offer engineering degrees, the duration of another undergraduate degree is indicated.}
#'   \item{Online Application}{Is there a possibility to apply for the University online? If no explicit method is stated to send the application online, it's considered as "no"}
#'   \item{International Students}{Does the University give special information to interested foreign students on how to enter?}
#'   \item{Yearly Fee}{Required yearly tuition fee for a local student to complete a year of an undergraduate engineering degree at the University. If the University doesn't offer engineering degrees, the general tuition fee is indicated}
#'   \item{Masters Programme}{Does the University offer Master's programmes? (NOT only engineering)}
#'   \item{Primary Teaching Language}{Language in which the majority of teaching takes place}
#'   \item{Online Payment}{Is there a possibility to pay University fees online? (either banking information, instructions or a direct link)}
#'   \item{Number of Students}{If stated on the website, the number of students studying at the University}
#'   \item{Access Date}{Date the University website was accessed}
#'   \item{Remarks}{Personal notes on the University}
#'   \item{Countries}{Name of the Country}
#'   \item{Region}{African Region where the Country is located}
#'   \item{Best Uni Rank}{Rank Africa of the best University of the country}
#'   \item{GDP}{GDP of the country in 2021 (With a few exceptions for which the data is older). Source: ourworldindata.org, World Bank, international-$ in 2017 prices (accounting for differences in cost of living)}
#'   \item{GDP per Capita}{GDP per Capita of the country in 2021 (With a few exceptions for which the data is older). Source: ourworldindata.org, World Bank, international-$ in 2017 prices (accounting for differences in cost of living)}
#'   \item{HDI}{Human Development Index of the country in 2021. Source: ourworldindata.org, United Nations Development Programme (UNDP). Variable time span: 1990-2021. Higher number means better developped.}
#' }
