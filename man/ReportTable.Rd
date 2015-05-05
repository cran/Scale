\name{ReportTable}
\alias{ReportTable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Summarize Item Analysis into Table
}
\description{
This function takes the output of \code{ItemAnalysis()} and produces a useful table with item statistics. It also writes the table in the working directory, if asked to. 
}
\usage{
ReportTable(it, write_file=FALSE, sep=";")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{it}{Output from \code{ItemAnalysis}}
  \item{write_file}{logical. Should a text file be written?}
  \item{sep}{Separator to use in the text output file. }
}
\details{
If asked to write a file, it will do so in the working directory. 
}
\value{
A data frame with item statistics, specifically:
\item{Item}{Number or Name of the Item.}
\item{Corr. with Scale}{Correlation of the item with the sum of the rest of the items.}
\item{Factor Loading}{Loading of the Item to a Single Factor }
\item{Mean}{Item Mean}
\item{SD}{Item SD}
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

ReportTable(depressionRel)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
