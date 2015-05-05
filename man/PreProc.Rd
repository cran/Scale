\name{PreProc}
\alias{PreProc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{PreProc
Prepare Scale Data for Analysis
}
\description{Organizes data according to the information given in the ScaleData object. It reorders the items given in alternate orderings to participants, reverses items that need to be reversed, assigns the desired labesl to items and returns a structured object appropriate for the \code{ItemAnalysis()} function. 

}
\usage{
PreProc(sc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sc}{\code{ScaleData} object, produced by the \code{Scale} function.

}
}

\value{

\item{data }{A reversed and reordered - as needed - data.frame.}
\item{items }{If an \code{items} vector is provided (see \code{ScaleData}), a character vector with the item statements.}

}

\author{
Nikolaos Giallousis, psierevn@gmail.com
}

\seealso{
\code{\link{ScaleData}}
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
