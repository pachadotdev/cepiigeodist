\name{dist_cepii}
\alias{dist_cepii}
\docType{data}
\title{
Data on pairs of countries including distance measures and dummy variables indicating common attributes
}
\description{
Provides different distance measures and dummy variables indicating whether the two countries are contiguous, share a common language or a colonial relationship. There are two kinds of distance measures: simple distances, for which only one city is necessary to calculate international distances; and weighted distances, for which we need data on principal cities in each country. The simple distances are calculated following the great circle formula, which uses latitudes and longitudes of the most important city (in terms of population) or of its official capital. These two variables incorporate internal distances based on areas provided in the `geo_cepii` dataset. The two weighted distance measures use city-level data to assess the geographic distribution of population inside each nation.  The idea is to calculate distance between two countries based on bilateral distances between the largest cities of those two countries, those inter-city distances being weighted by the share of the city in the overall country's population. The distance formula used is a generalized mean of city-to-city bilateral distances developed by Head and Mayer (2002), which takes the arithmetic mean and the harmonic means as special cases.
}
\format{
  A data frame with 50176 observations on the following 14 variables.
  \describe{
    \item{\code{iso_o}}{Country of origin as ISO codes in three characters.}
    \item{\code{iso_d}}{Country of destination as ISO codes in three characters.}
    \item{\code{contig}}{Variable coded as 1 when the two countries are next to each other and 0 otherwise.}
    \item{\code{comlang_off}}{Variable coded as 1 when the two countries share the same official language.}
    \item{\code{comlang_ethno}}{Variable coded as 1 when the two countries have at least 9\% of their population speaking the same language.}
    \item{\code{colony}}{Variable coded as 1 when the country in `iso_o` was ever a colony of the country in `iso_d`.}
    \item{\code{comcol}}{Variable coded as 1 when the two country share the same colonizer after 1945.}
    \item{\code{curcol}}{Variable coded as 1 when the country in `iso_o` is a colony of the country in `iso_d`.}
    \item{\code{col45}}{Variable coded as 1 when the country in `iso_o` is a colony of the country in `iso_d` after 1945.}
    \item{\code{smctry}}{Variable coded as 1 when the two countries were or are the same country.}
    \item{\code{dist}}{Simple distance (most populated cities, km)}
    \item{\code{distcap}}{Simple distance between capitals (capitals, km)}
    \item{\code{distw}}{Weighted distance (pop-wt, km) with theta=1 (theta measures the sensitivity of trade flows to bilateral distance dkl)}
    \item{\code{distwces}}{Weighted distance (pop-wt, km) theta=-1.}
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
# filter countries that share borders
dist_cepii[dist_cepii$contig == 1, ]
}
\keyword{datasets}
