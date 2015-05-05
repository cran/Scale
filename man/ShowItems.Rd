\name{ShowItems}
\alias{ShowItems}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Show Content of Empirically Elected Items.
}
\description{
This function relies to \code{ChooseBest()} function, in order to print out the content of the highest loading items. 
}
\usage{
ShowItems(it, n=5, write_file=FALSE, scale_name="MyItems")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{it}{An \code{ItemAnalysis} object, created by the \code{ItemAnalysis()} function.}
  \item{n}{integer. Number of items to be retained and printed on screen.}
  \item{write_file}{logical. Should a file be written with the elected items?}
  \item{scale_name}{character. Name to be used in file, if one should be written. }
}
\details{
Items are written to file without their original labels. I chose this way, because use of this function is mainly aimed at passing on elected items to other formatting programs in order to administer. Refer to the output of the function inside R, as well as to the \code{ChooseItems()} function, for the original item labels. 

The default filename is "MyItems.txt". Change the \code{scale_name} argument to costumize that.
}
\value{
A character vector of the chosen items. 
}

\author{
Nikolaos Giallousis, psierevn@gmail.com
}

\examples{
# not run

# depressionRel is an ItemAnalysis object
# ShowItems(depressionRel)
# ShowItems(depressionRel, 7)
}

\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
