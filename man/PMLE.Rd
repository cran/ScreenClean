\name{PMLE}
\alias{PMLE}
\title{
Penalized MLE procedure used in the cleaning step
}
\description{

Penalized MLE procedure used in the cleaning step, an inner function.
}
\usage{
PMLE(gram, y, lambda, uu)
}
\arguments{
  \item{gram}{
the sub gram matrix of the small scale quadratic problem.
}
  \item{y}{
the sub-vector of y.tilde 
}
  \item{lambda}{
 the tuning parameter of the cleaning step, tied to the sparse level.
}
  \item{uu}{ the tuning parameters of the cleaning step. It has the intuitive interpretation of the minimal signal strength to be detected. 
}
}
\value{
\item{b}{the estimate of the subvector of beta}
}

\seealso{
 \code{\link{CleaningStep}}
}

