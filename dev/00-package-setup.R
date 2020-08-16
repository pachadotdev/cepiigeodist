library(usethis)
library(readxl)

# use_git()
# use_directory("raw-data")
# use_directory("R")
# use_directory("man")
# use_directory("inst")
# use_readme_md()
# use_description()
# use_namespace()
use_cc0_license("Pachá")

geo_cepii_url <- "http://www.cepii.fr/distance/geo_cepii.xls"
geo_cepii_xls <- "raw-data/geo_cepii.xls"
if (!file.exists(geo_cepii_xls)) try(download.file(geo_cepii_url, geo_cepii_xls))

dist_cepii_url <- "http://www.cepii.fr/distance/dist_cepii.zip"
dist_cepii_zip <- "raw-data/dist_cepii.zip"
if (!file.exists(dist_cepii_zip)) try(download.file(dist_cepii_url, dist_cepii_zip))

if (!file.exists(gsub("zip", "xls", dist_cepii_zip))) unzip(dist_cepii_zip, exdir = "raw-data")

geo_cepii <- read_excel("raw-data/geo_cepii.xls")
use_data(geo_cepii, compress = "xz")

dist_cepii <- read_excel("raw-data/dist_cepii.xls")
use_data(dist_cepii, compress = "xz")
