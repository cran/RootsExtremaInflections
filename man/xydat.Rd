\name{xydat}
\alias{xydat}
\docType{data}
\title{
Data set
}
\description{
This data set is used for the examples of the package \emph{RootsExtremaInflections}
}
\usage{data("xydat")}
\format{
  A data frame with 61 observations on the following 2 variables.
  \describe{
    \item{\code{x}}{numeric vector as independent variable}
    \item{\code{y}}{numeric vector as dependent variable}
  }
}
\details{
A discrete data set \eqn{\left\{(x_i,y_i),i=1,2,\ldots 61\right\}}{{(x_i,y_i),i=1,2,...61}} with \eqn{x_i}{x_i} from the interval [0.1,0.9] and \eqn{y_i=f(x_i)+\epsilon_i}{{y_i=f(x_i)+e_i}} generated from the function \eqn{f \left( x \right) =\frac{1}{4}+\frac{1}{3}\,{x}^{2}{{\rm e}^{x}}-7\,\sin \left( 5\,x \right)  }{f(x)=1/4+1/3*x^2*exp(x)-7*sin(5*x)} with uniform error \eqn{\epsilon_{i}\sim U(-0.25,0.25)}{e_i ~ U(-0.25,0.25)}.
}
\references{
Demetris T. Christopoulos (2014), Roots, extrema and inflection points by using a proper Taylor regression procedure, \emph{ResearchGate publications}, \url{https://www.researchgate.net/publication/261562841}
}