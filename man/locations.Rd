% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locations.R
\name{locations}
\alias{locations}
\title{API "locations" endpoint}
\usage{
locations(..., .protocol = "https")
}
\arguments{
\item{...}{the locations endpoint requires the passing of either the 
\code{query} or the \code{x} and \code{y} parameters.}

\item{.protocol}{the connection protocol; either http or https (default)}
}
\value{
the locations as a dataframe
}
\description{
For detailed api ocumentation see 
    \url{https://transport.opendata.ch/docs.html#locations}
}
\examples{
# You need to specify either query or x and y
locations(query = "Bern")
locations(x = 46.94882, y = 7.439123)

}
