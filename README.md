# cepiigeodist

<!-- badges: start -->
<!-- badges: end -->

The goal of geodist is to provide the same data from [GeoDist](http://www.cepii.fr/CEPII/en/bdd_modele/download.asp?id=6) ready to be used in R (i.e. with the [gravity](https://pacha.dev/gravity) package).

The package provides data on countries and distance measures alongside dummy variables indicating whether two countries are contiguous, share a common language or a colonial relationship, and others.

`geodist` can be installed by running

```
# install.packages("remotes")
install_github("pachamaltese/cepiigeodist")
```

The main source to obtain the data in this package is:

Mayer, T. & Zignago, S. (2011). *Notes on CEPII's distances measures: the GeoDist Database*. CEPII Working Paper 2011-25
