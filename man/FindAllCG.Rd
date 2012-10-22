\name{FindAllCG}
\alias{FindAllCG}
\title{
Find all the connected subgraphs whose size <= lc
}
\description{
FindAllCG uses FindCG iteratively, and lists all the connected subgraphs with no more than lc nodes
}
\usage{
FindAllCG(adjacency.matrix, lc)
}
\arguments{
  \item{adjacency.matrix}{p by p adjacency matrix of an undirected graph; it must be symmetric.
}
  \item{lc}{
the maximal size of the connected subgraphs to be listed
}
}
\value{
\item{cg.all}{A list, whose kth component is a matrix with k columns that lists all the connected subgraphs with k nodes.}
}


\seealso{
 \code{\link{FindCG}}
}
\examples{
require(MASS)
require(Matrix)
p <- 10
Omega <- sparseMatrix(c(1:(p-1),2:p),c(2:p,1:(p-1)),x=1)
cg.all <- FindAllCG(Omega,3)

}
\keyword{ graph }
\keyword{ connected subgraph }
