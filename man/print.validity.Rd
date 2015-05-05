\name{print.validity}
\alias{print.validity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print Out Summary of Validity Analysis
}
\description{
Selectively print Validity data from an \code{ItemAnalysis} object, created by the \code{ItemAnalysis()} function.
}
\usage{
\method{print}{validity}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A \code{validity} object, part of the \code{ItemAnalysis()} function output, accessible with \code{it$valid}, where \code{it} is an \code{ItemAnalysis} object.
}
  \item{\dots}{
Further arguments to be passed on to \code{print} generic method. 

}
}

\author{
Nikolaos Giallousis, psierevn@gmail.com
}

\examples{
data(Depression98)
depressionScale <- Scale(data=Depression98, 
                         orders=list(
                           c(16,19,11,9,1,17,5,18,4,8,2,12,
                             20,10,14,6,3,13,15,7),
                           c(1,18,4,15,7,8,3,14,20,6,19,16,
                             12,5,10,13,2,17,11,9)),
                         orders_id=c(
                           rep(1, 49),
                           rep(2, 49)),
                         reverse=c(3,4,13,14,18,20),
                         col_names= paste('q', 1:20, sep=''))

depressionPre <- PreProc(depressionScale)

depressionRel <- ItemAnalysis(depressionPre)
# specifies that you want to print only the 
# validity part of the object.
print(depressionRel$valid)
}

\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
