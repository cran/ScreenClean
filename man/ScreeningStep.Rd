\name{ScreeningStep}
\alias{ScreeningStep}
\title{
GS-step of the graphlet screening
}
\description{
ScreeningStep performs the cleaning step of the graphlet screening
}
\usage{
ScreeningStep(y.tilde, gram, cg.all, nm, v, r, q0 = 0.1, scale = 1)
}

\arguments{
  \item{y.tilde}{
 \eqn{X'y}, where X and y are the predictor matrix and the reponse vector.
}
  \item{gram}{
the regularized gram matrix
}
  \item{cg.all}{
a list whose kth element is a matrix of k columns. Its rows contain all the connected subgraph with k nodes.
}
  \item{nm}{ the maximal subgraph invesgated in the screening step
}
  \item{v}{
an essential tuning parameter of graphlet screening, tied to the sparse level
}
  \item{r}{
 an essential tuning parameter of graphlet screening, tied to the signal strength
}
  \item{q0}{
the minimal screening parameter
}
  \item{scale}{
\eqn{q(D,F)=q^{max}(D,F)*scale}, default is scale=1
}
}
\value{
\item{survivor}{A logical vector, where TRUE means retained as a protential signal.}

}

\note{
When nm=1, it is just univariate threholding, and thurs the screening step of UPS.
}

\seealso{
\code{\link{CleaningStep}}, \code{\link{IterGS}}
}
\examples{
##See the demoGS.r
}
