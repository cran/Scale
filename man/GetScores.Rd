\name{GetScores}
\alias{GetScores}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Extract Participant Scores from Item Analysis Object
}
\description{
Takes an output of the \code{ItemAnalysis()} function, and extracts the participants scores, as calculated in\code{ItemAnalysis()}. If asked to, it writes the scores in a column in a \code{.csv} file.
}
\usage{
GetScores(it, write_file=FALSE, sep=";", scale_name="My_Scale")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{it}{
An \code{ItemAnalysis} object, created by the \code{ItemAnalysis()} function.}
  \item{write_file}{logical. Should the function write a \code{.csv} file?}
  \item{sep}{If a file is to be written, \code{sep} will be the delimiter. Defaults to ";".}
  \item{scale_name}{character. Name for use in the \code{data.frame} as well as in the written file.}

}
\details{
If you need another type of scores, you should specify it in the \code{ItemAnalysis()} function, with the \code{score_type} argument.

Default scale name is "My_Scale". Thus, default output file name is "My_Scale.csv".
}
\value{
A \code{data.frame} with the scores of the participants.
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

depressionScores <- GetScores(depressionRel)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
