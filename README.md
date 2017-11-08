[![Travis-CI Build Status](https://travis-ci.org/retowyss/swiss-public-transport-r.svg?branch=master)](https://travis-ci.org/retowyss/swiss-public-transport-r)
[![Coverage Status](https://codecov.io/gh/retowyss/swiss-public-transport-r/branch/master/graph/badge.svg)](https://codecov.io/github/retowyss/swiss-public-transport-r?branch=master)




# Swiss public transport API R client

This is an R client for the [Swiss public transport API](http://transport.opendata.ch/). 

```
devtools::install_github(retowyss/swiss-public-transport-r)
```

It is has one function.

```
tapi("locations", query = "Bern")
tapi("connections", from = "Bern", to = "Burgdorf")
tapi("stationboard", station = "Burgdorf")
```
