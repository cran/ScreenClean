\name{ThresholdGram}
\alias{ThresholdGram}
\title{
Thresholds the gram matrix
}
\description{
Thresholds the gram matrix
}
\usage{
ThresholdGram(gram.full, delta = 1/log(dim(gram.full)[1]))
}
\arguments{
  \item{gram.full}{
the gram matrix before the elementwise thresholding, a p by p symmetric matrix
}
  \item{delta}{ the threshold, the default is 1/log(p)
}
}

\value{
A list with two elements
  \item{gram.sd }{the threhsolded gram matrix, a sparse matrix}
  \item{gram.bias }{the difference of the orginal matrix and the threholded matrix}
}


\examples{
p <-10
off.diag<-matrix(runif(p^2),p,p)
omega <- (off.diag+t(off.diag))*0.3
diag(omega) <- 1
omega.omega<-ThresholdGram(omega,0.3)
omega.omega$gram
omega.omega$gram.bias
}
