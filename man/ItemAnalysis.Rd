\name{ItemAnalysis}
\alias{ItemAnalysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Reliability and Validity Analysis 
}
\description{
Performs an item analysis based on item-scale correlations, and then conducts factor analysis with one factor. Reports Cronbach alpha and single factor loadings, while it returns the original analyses from the psych package.
}
\usage{
ItemAnalysis(prep, method="spearman", fm="gls", 
nfactors=1, rcut= 0.3, score_type="z", exclude=c())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prep}{ A ScaleData object pre-processed with PreProc.}
  \item{nfactors}{Number of factors to be extracted in validity analysis.}
  \item{rcut}{Lower bound for items' correlation to scale.}
  \item{score_type}{Type of standard scores to calculate ("z", "t", or "sten".)}
  \item{method}{ Method to calculate the correlation matrix. Options are: "spearman" or "polychoric".}
  \item{fm}{Method for factor xtraction in the validity analysis. }
  \item{exclude}{Items to exclude from the analysis. Indices in the original order.}
}
\details{
This function is no more than a wrap-up for \code{psych} package \code{alpha} and \code{fa} functions. Use \code{?psych::alpha} and \code{psych::fa} for details. 

Available method for correlations are "spearman" and "polychoric". Available methods for factor extraction are "minres", "wls", "gls", "pa", "ml", "minchi". 

Defining number of factors is included for sake of completeness. The intended use of the function is a quick and error-proof validity measure, and not factor model fitting. Adjusting the number of factors can only serve to see if there is a better model fit with more than one factor. Scores will be calculated for the first factor only. Of course if you need to use this function as a wrapper for psych::fa, you can always extract the object with YOUROBJECT$valid$model.

Default scoring is the sum of the standardized values times the first factor loadings. T-scores translate these to have a mean of 50 and an SD of 10, and STen scores, a mean of 5.5 and an SD of 2. 
}
\value{ 
A list of three objects. \code{data} is the dataset, passed on for other computations, \code{rely} is the output of the reliability analysis, and \code{valid} the output of the factor analysis:

\item{\code{data}}{The dataset used.}

\item{\code{items}}{The item statements. If not provided value is NULL.}

\item{\code{rely}}{A list of the following elements:}
  \item{..alpha }{Output of the \code{psych::alpha} function.}
  \item{..k}{Number of items}
  \item{..title}{Name of analysed object.}
  \item{..suggest}{List of 2: \code{low_cor} Items with low correlation to the rest of the scale, and \code{a_drop} Items whose deletion may improve reliability.}
\item{\code{valid}}{A list of the following elements:}
  \item{..model}{Output of the \code{psych::fa} function}
  \item{..method}{character. The factor extraction method.}
  \item{..loadings}{numeric. The factor loadings}
  \item{..kmo}{list. KMO sampling adequacy statistics.}
  \item{..bartlett}{list. Bartlett's test of sphericity.}
  \item{..scores}{numeric. Factor scores (Standardized, see Details.)}
  
  }



\author{
Nikolaos Giallousis, psierevn@gmail.com.
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
depressionScale

depressionPre <- PreProc(depressionScale)

depressionRel <- ItemAnalysis(depressionPre)
depressionRel

depressionRel <- ItemAnalysis(depressionPre, exclude=c(1, 3, 15, 13))
depressionRel
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survey }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
