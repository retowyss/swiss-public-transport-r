[![Travis-CI Build Status](https://travis-ci.org/retowyss/swiss-public-transport-r.svg?branch=master)](https://travis-ci.org/retowyss/swiss-public-transport-r)
[![Coverage Status](https://codecov.io/gh/retowyss/swiss-public-transport-r/branch/master/graph/badge.svg)](https://codecov.io/github/retowyss/swiss-public-transport-r?branch=master)




# Swiss public transport API R client

This is an R client for the [Swiss public transport API](http://transport.opendata.ch/). 

```
devtools::install_github(retowyss/swiss-public-transport-r)
```

The package makes three functions available. One for each of the API-enpoints.

```r
locations(query = "Bern")
```

```r
connections(from = "Bern", to = "Basel")
```

```r
stationboard(station = "Bern")
```