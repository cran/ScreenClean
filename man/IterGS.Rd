\name{IterGS}
\alias{IterGS}
\title{Iterative graphlet screening procedure
}
\description{
The iterative graphlet screening procedure, main function of the package.
}
\usage{
IterGS(y.tilde, gram, gram.bias, cg.all, sp, tau, nm, q0=0.1, scale = 1, max.iter = 3, 
std.thresh = 1.05, beta.initial = NULL)
}
\arguments{
  \item{y.tilde}{
 \eqn{X'y} where X and y are the predictor matrix and the response vector, respectively.
}
  \item{gram}{
the threholded gram matrix

}
  \item{gram.bias}{ 
the bias of the threholded gram matrix
}
  \item{cg.all}{
all the connected cg.alls of gram with size no more than nm.
}
  \item{sp}{
the expected sparse level
}
  \item{tau}{
the minimal signal strength to be detected
}
  \item{nm}{
the maximal size of the connected subgaphs considered in the screening step.
}
  \item{q0}{
the minimal screening parameter
}
  \item{scale}{
optional numerical parameter of the screening step. The default is 1

}
  \item{max.iter}{
the maximal number of iterations. The default is 3.
}
  \item{std.thresh}{
the threshold of the std change that stop the loop. The default is 1.05.
}
  \item{beta.initial}{the initial estimate of beta in reducing the bias. The default is uu*sign(y.tilde)*(abs(y.tilde)>uu).
}
}
\value{
IterGS returns a list with two elements
  \item{estimate }{The iterative GS estimate of beta}
  \item{n.iter }{The number of iterations it takes}
}

\examples{
##See demoIterGs.r
}
