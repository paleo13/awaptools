\name{get_awap_data}
\alias{get_awap_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get AWAP data
}
\description{
Download grids from BoM site
}
\usage{
get_awap_data(start, end, measure_i)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{start}{
start date for downloading from
}
  \item{end}{
end date for downloading from
}
  \item{measure_i}{
meteorological variable to download.  see variableslist() 
}

}
\details{
Makes assumptions:
linux has gzip and windoze has 7zip in default locations

please download swish R packages from 

http://swish-climate-impact-assessment.github.io/tools/awaptools/awaptools-downloads.html

}
\value{
The downloaded files will be unzipped (depends on zip software) into the current working directory
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
ivanhanigan
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
## Not run:
library(awaptools)
library(raster)
variableslist <- variableslist()  
vars <- c("maxave","minave","totals","vprph09","vprph15","solarave")
for(measure in vars)
{
  get_awap_data(start = '1990-01-01',end = '1990-01-01', measure)
}
fileslist <- dir(pattern="grid$")
r <- raster(fileslist[1])
plot(r)

## End(Not run)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
