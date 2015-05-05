\name{Scale-package}
\alias{Scale-package}

\docType{package}
\title{
Likert Type Questionnaire Item Analysis
}
\description{
Provides the ScaleData class and corresponding functions, in order to facilitate data input for scale construction. Reverse items and alternative orders of administration are dealt with by the program. Computes reliability statistics, and confirmatory single factor loadings. It suggests item deletions and produces basic text output in English. Returns list objects of all relevant functions from other packages (see Depends).
}
\details{
\tabular{ll}{
Package: \tab Scale\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-04-30\cr
License: \tab GPL-2 \cr
}
}
\author{
Nikolaos Giallousis

Maintainer: Nikolaos Giallousis <psierevn@gmail.com>

}

\keyword{ survey }
\keyword{ multivariate }
\seealso{

\code{psych}
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
