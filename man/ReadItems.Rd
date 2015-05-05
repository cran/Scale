\name{ReadItems}
\alias{ReadItems}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read Item Statwmwnts from File
}
\description{
Reads in item statements from file. Actually a wrapper for \code{readLines()}.
}
\usage{
ReadItems(filename, enc)
}
\arguments{
  \item{filename}{
character. Name of the file containing the items, separated by newlines.
}
  \item{enc}{character. Character encoding of the file. Defaults to UTF-8. }
}


\author{
Nikolaos Giallousis, psierevn@gmail.com
}
\note{
If you don't know what your encoding already is, try to convert it to UTF-8 with any text editor. 
}

\examples{
# not run
# my_items <- ReadItems("my_items.txt")
}

\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
