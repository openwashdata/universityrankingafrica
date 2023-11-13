library(usethis)
use_author(
  given = "Samuel ",
  family = "Sigrist",
  role = c("aut"),
  email = "sigrissa@ethz.ch",
  comment = c(ORCID = "0000-0003-4697-3329")
)
use_author(
  given = "Sophia",
  family = "Skorik",
  role = c("aut", "cre"),
  email = "sskorik@ethz.ch",
  comment = c(ORCID = "0009-0001-4755-1649")
 )

# install.packages("cffr")
library(cffr)

packageVersion("cffr")

# Hard code doi
#doi <- "10.5281/zenodo.6470427"

# creates CFF with all author roles
mod_cff <- cff_create("DESCRIPTION",
                      dependencies = FALSE,
                      keys = list(#"doi" = doi,
                                  "date-released" = Sys.Date()))

# Remove the preferred-citation key
mod_cff$`preferred-citation` <- NULL

# writes the CFF file
cff_write(mod_cff)

# Now write a CITATION file from the CITATION.cff file
# Use inst/CITATION instead (the default if not provided)
path_cit <- file.path("inst/CITATION")

write_citation("CITATION.cff", file = path_cit)

# By last, read the citation
cat(readLines(path_cit), sep = "\n")

