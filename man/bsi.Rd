\name{bsi}
\alias{bsi}
\title{Calculate the Bare Soil Index (BSI)}

\description{
Computes the Bare Soil Index (BSI) from a \code{SpatRaster} object.
}

\usage{
bsi(x, red, blue, nir, swir)
}

\arguments{
  \item{x}{
A \code{SpatRaster} object containing the spectral bands.
}

  \item{red}{
Numeric. Index of the red band.
}

  \item{blue}{
Numeric. Index of the blue band.
}

  \item{nir}{
Numeric. Index of the near-infrared (NIR) band.
}

  \item{swir}{
Numeric. Index of the short-wave infrared (SWIR) band.
}
}

\details{
The Bare Soil Index (BSI) is calculated as:

\deqn{
BSI = \frac{(SWIR + Red) - (NIR + Blue)}
{(SWIR + Red) + (NIR + Blue)}
}

The input object must contain the required spectral bands.
}

\value{
A \code{SpatRaster} object containing the calculated Bare Soil Index.
}

\references{
Rikimaru, A., Roy, P. S., and Miyatake, S. (2002).
Tropical forest cover density mapping.
}

\examples{
library(terra)

r <- rast(system.file("ex/logo.tif", package = "terra"))

bsi(r, red = 1, blue = 3, nir = 2, swir = 4)
}
