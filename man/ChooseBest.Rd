\name{ChooseBest}
\alias{ChooseBest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Select Items from Item Analysis.
}
\description{
Takes an \code{ItemAnalysis} object, and returns the column names, i.e. the item labels of those items that load the highest on the single factor. Defaults to 5 items.
}
\usage{
ChooseBest(it, n=5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{it}{ An \code{ItemAnalysis} object, produced by the \code{ItemAnalysis()} function.}
  \item{n}{The number of items to select. Asking for more items than available leads to an error.}
}


\value{
A character vector, with the labels of the items, as defined in \code{ScaleData} object.
}

\author{
Nikolaos Giallousis
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

depressionItems <- ChooseBest(depressionRel)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
