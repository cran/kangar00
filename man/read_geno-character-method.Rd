% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GWASdata.r
\name{read_geno,character-method}
\alias{read_geno,character-method}
\alias{read_geno}
\alias{character}
\title{read genotype data from file to one of several available objects, which 
can be passed to a GWASdata object \code{\link{GWASdata}}.}
\usage{
\S4method{read_geno}{character}(
  file.path,
  save.path = NULL,
  sep = " ",
  header = TRUE,
  use.fread = TRUE,
  use.big = FALSE,
  row.names = FALSE,
  ...
)
}
\arguments{
\item{file.path}{\code{character} giving the path to the data file to be read}

\item{save.path}{\code{character} containing the path for the backingfile}

\item{sep}{\code{character}. A field delimeter. See 
\code{\link[bigmemory]{read.big.matrix}} for details.}

\item{header}{\code{logical}. Does the data set contain column names?}

\item{use.fread}{\code{logical}. Should the dataset be read using the function 
\code{\link[data.table]{fread}} \code{fread} from package \pkg{data.table}?}

\item{use.big}{\code{logical}. Should the dataset be read using the function 
\code{\link[bigmemory]{read.big.matrix}} from package \pkg{bigmemory}?}

\item{row.names}{\code{logical}. Does the dataset include rownames?}

\item{...}{further arguments to be passed to \code{read_geno}.}
}
\description{
read genotype data from file to one of several available objects, which 
can be passed to a GWASdata object \code{\link{GWASdata}}.
}
\details{
If the data set contains rownames specified, set option \code{has.row.names = TRUE}.
}
\examples{
\dontrun{
path <- system.file("extdata", "geno.txt", package = "kangar00")
geno <- read_geno(path, save.path = getwd(), sep = " ", use.fread = FALSE, row.names = FALSE)
}
}
