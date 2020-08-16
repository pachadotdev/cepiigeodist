\name{geo_cepii}
\alias{geo_cepii}
\docType{data}
\title{
Data on countries and their main city or agglomeration
}
\description{
There are firstly three identification codes of the country according to the ISO classification, the country's area in square kilometers, used to calculate in particular its internal distance. Variables indicating whether the country is landlocked and which continent it is part of are also included.
}
\format{
  A data frame with 238 observations on the following 34 variables.
  \describe{
    \item{\code{iso2}}{ISO codes in two characters.}
    \item{\code{iso3}}{ISO codes in three characters.}
    \item{\code{cnum}}{ISO codes in three numbers.}
    \item{\code{country}}{Name of country in English.}
    \item{\code{pays}}{Name of country in French.}
    \item{\code{area}}{Country's area in km2.}
    \item{\code{dis_int}}{Internal distance of country i, dii=.67*sqrt(area/pi) (an often used measure of average distance between producers and consumers in a country). See Head and Mayer, 2002 for more on this topic.}
    \item{\code{landlocked}}{Dummy variable set equal to 1 for landlocked countries.}
    \item{\code{continent}}{Continent to which the country is belonging.}
    \item{\code{city_en}}{Names of capitals or main cities of the country in English.}
    \item{\code{city_fr}}{Names of capitals or main cities of the country in French.}
    \item{\code{lat}}{Latitude of the city.}
    \item{\code{lon}}{Longitude of the city.}
    \item{\code{cap}}{Variable equals to 1 if the city is the capital of the country, to 0 if the city is the most populated city (maincity equals to 1) but not the capital, and to 2 in the cases of two capitals, if the city is the most populated but the "second" capital or the previous capital.}
    \item{\code{maincity}}{Variable coded as 1 when the city is the most populated of the country and as 2 otherwise.}
    \item{\code{citynum}}{Number of cities for each country used to calculate the weighted distances described in Mayer and Zignago, 2011.}
    \item{\code{langoff_1}}{Official or national languages and languages spoken by at least 20\% of the population of the country (and spoken in another country of the world) following the same logic than the "open-circuit languages" in Mélitz (2002).}
    \item{\code{langoff_2}}{Same as langoff_1.}
    \item{\code{langoff_3}}{Same as langoff_1.}
    \item{\code{lang20_1}}{Languages (mother tongue, lingua francas or second languages) spoken by at least 20\% of the population of the country.}
    \item{\code{lang20_2}}{Same as lang20_1.}
    \item{\code{lang20_3}}{Same as lang20_1.}
    \item{\code{lang20_4}}{Same as lang20_1.}
    \item{\code{lang9_1}}{Languages (mother tongue, lingua francas or second languages) spoken by between 9\% amd 20\% of the population of the country.}
    \item{\code{lang9_2}}{Same as lang9_1.}
    \item{\code{lang9_3}}{Same as lang9_1.}
    \item{\code{lang9_4}}{Same as lang9_1.}
    \item{\code{colonizer1}}{Colonizers of the country for a relatively long period of time and with asubstantial participation in the governance of the colonized country.}
    \item{\code{colonizer2}}{Same as colonizer1.}
    \item{\code{colonizer3}}{Same as colonizer1.}
    \item{\code{colonizer4}}{Same as colonizer1.}
    \item{\code{short_colonizer1}}{Colonizers of the country for a relatively short period of time orwith only low involvement in the governance of the colonized country.}
    \item{\code{short_colonizer2}}{Same as short_colonizer1.}
    \item{\code{short_colonizer3}}{Same as short_colonizer1.}
  }
}
\source{
  \url{http://www.cepii.fr/CEPII/en/bdd_modele/download.asp?id=6}
}
\references{
  Mayer, T. & Zignago, S. (2011)
  Notes on CEPII's distances measures: the GeoDist Database
  CEPII Working Paper 2011-25
  
  Head, K. & Mayer, T. (2002)
  Illusory Border Effects: Distance Mismeasurement In-flates Estimates of Home Bias in Trade
  CEPII Working Paper 2002-01
}
\examples{
# filter to avoid multiple records for the same country
geo_cepii[geo_cepii$cap == 1 & geo_cepii$maincity == 1, ]
}
\keyword{datasets}
