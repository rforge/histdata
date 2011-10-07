\name{Michelson}
\alias{Michelson}
\alias{MichelsonSets}
\docType{data}
\title{
Michelson's Determinations of the Velocity of Light
}
\description{
The data frame \code{Michelson} gives Albert Michelson's measurements of the velocity of light in air, 
made from June 5 to July 2, 1879, reported in Michelson (1882). 
The given values + 299,000 are Michelson's measurements in km/sec. 
The number of cases is 100 and the "true" value is 734.5.

Stigler (1977) used these data to illustrate properties of robust estimators
with real, historical data.  For this purpose, he divided the 100 measurements
into 5 sets of 20 each.  These are contained in  \code{MichelsonSets}.
}

\usage{
data(Michelson)
data(MichelsonSets)
}
\format{
  \code{Michelson}: A data frame with 100 observations on the following variable.
  \describe{
    \item{\code{velocity}}{a numeric vector}
  }

  \code{MichelsonSets}: A 20 x 5 matrix, with format 
 int [1:20, 1:5] 850 850 1000 810 960 800 830 830 880 720 ...
 - attr(*, "dimnames")=List of 2
  ..$ : NULL
  ..$ : chr [1:5] "ds12" "ds13" "ds14" "ds15" ...

}

\details{
The "true" value is taken to be 734.5, arrived at by taking the "true" speed of light
in a vacuum to be 299,792.5 km/sec, and adjusting for the velocity in air.

}
\source{
Kyle Siegrist, "Virtual Laboratories in Probability and Statistics", \url{http://www.math.uah.edu/stat/data/Michelson.xhtml}

Stephen M. Stigler (1977), "Do robust estimators work with \emph{real} data?", \emph{Annals of Statistics},  5, 1055-1098
}
\references{
Michelson, A. A. (1882). "Experimental determination of the velocity of light made at the
United States Naval Academy, Anapolis". \emph{Astronomical Papers}, 1,109-145,
U. S. Nautical Almanac Office.
}
\examples{
data(Michelson)
plot(Michelson$velocity, type="b")
abline(h=734.5, col="red", lwd=2)

boxplot(MichelsonSets, ylab="Velocity of light - 299000", xlab="Data set")
abline(h=734.5, col="red", lwd=2)
}
\keyword{datasets}