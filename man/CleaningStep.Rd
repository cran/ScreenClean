\name{CleaningStep}
\alias{CleaningStep}
\title{
GC-step of the graphlet screening
}
\description{
CleaningStep performs the cleaning step of the graphlet screening
}
\usage{
CleaningStep(survivor, y.tilde, gram, lambda, uu)
}
\arguments{
  \item{survivor}{
the result of the screening step, a logical vector.
}
  \item{y.tilde}{
 \eqn{X'y}, where X and y are the predictor matrix and the reponse vector.

}
  \item{gram}{
the thresholded sparse gram matrix
}
  \item{lambda}{
the tuning parameters of the cleaning step, whose optimal choice is tied to the sparse level. 
}
  \item{uu}{
the tuning parameter of the cleaning step; its optimal choice has the intuition of the detected minimal signal strength. 
}
}

\value{
\item{beta.gs}{ the estimated regression coefficient of the graphlet screening, a numeric vector}
}

\seealso{ 
\code{\link{IterGS}},\code{\link{ScreeningStep}}
}
\examples{
##See the demoGs.r
}
