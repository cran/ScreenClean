\name{FindCG}
\alias{FindCG}
\title{
Find the connected subgraphs with a certain number of nodes
}
\description{
FindCG is used to find all the connected subgraphs with a certain number of nodes.
}
\usage{
FindCG(adjacency.matrix, cg.initial)
}
\arguments{
  \item{adjacency.matrix}{
p by p adjacency matrix of an undirected graph. It must be symmetric.
}
  \item{cg.initial}{
It could be 1:p or a matrix, whose elements are positive integers from 1 to p. If it is a length p vector, FindCG converts it into a matrix with one column. For a matrix with k columns, FindCG reads its rows as th indices of a collection of connected subgraphs with k nodes.  
}
}
\value{
\item{cg.new}{If the input is a matrix with k columns and stores the indices of all the size k connected subgraphs, the output is a matrix with k+1 columns storing the indices of all the connected subgraphs with k+1 nodes.}
}

\seealso{
 \code{\link{FindAllCG}}
}
\examples{

require(MASS)
require(Matrix)
p <- 10
Omega <- sparseMatrix(c(1:(p-1),2:p),c(2:p,1:(p-1)),x=1)
cg.2 <- FindCG(Omega,c(1:p))
cg.3 <- FindCG(Omega,cg.2)

}
\keyword{ graph }
\keyword{ connected subgraph }
