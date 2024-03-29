% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{net.kernel.hsa04020}
\alias{net.kernel.hsa04020}
\title{Example network-based kernel matrix for pathway hsa04020.}
\format{
An object of class \code{\link{kernel}} and type 'network' for the pathway 
hsa04020.
\describe{
 \item{type}{specifies which kernel function was used to calculate the kernel}
\item{kernel}{includes the kernel matrix calculated for the pathway}
\item{pathway}{includes the \code{\link{pathway}} object of the pathway, for which  
the kernel matrix was calculated}
}
}
\source{
simulated data and Ensembl extract
}
\usage{
data(net.kernel.hsa04020)
}
\description{
An example of a kernel object.
}
\examples{
data(net.kernel.hsa04020)
# derivation 
data(gwas)
data(hsa04020)
net_kernel <- calc_kernel(gwas, hsa04020, knots=NULL, type='net', calculation='cpu')
# are the value differences smaller than machine epsilon?
all(abs(net.kernel.hsa04020@kernel - net_kernel@kernel) < sqrt(.Machine$double.eps))

}
\keyword{datasets}
