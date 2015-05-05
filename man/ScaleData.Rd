\name{Scale}
\alias{ScaleData}
\alias{Scale}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Define Data Set, Reverse Items and Alternate Orders}
\description{Construct a ScaleData object, in order to hold data, item content,
administration order(s), reverse items and item column names.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Scale(data, orders, orders_id, reverse, items, col_names)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with participants as rows and items as columns.}
  \item{orders}{A list of the various orders used for reordering the questionnaire administration, if any. Each order is an integer vector.}
  \item{orders_id}{An integer vector identifying which order of the questionnaire each participant received.}
  \item{reverse}{In the original order, which of the items need to be reversed.}
  \item{items}{An optional character vector containing the item statements.}
  \item{col_names}{An optional character vector of the desired column names of the items, in the original order.} 
}

\value{
A \code{ScaleData} object, with the above arguments named, in order
to be passed on to the \code{PreProc()} function.
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
str(depressionScale)
}

\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
