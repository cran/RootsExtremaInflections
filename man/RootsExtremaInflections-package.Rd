\name{RootsExtremaInflections-package}
\alias{RootsExtremaInflections-package}
\alias{RootsExtremaInflections}
\docType{package}
\title{
Finds roots, extrema and inflection points of a curve
}
\description{
This package contains functions for computing roots, extrema and inflection points of a curve that is the graph of a smooth function when we have only a data set \eqn{\left\{(x_i,y_i),i=1,2,\ldots m\right\}}{{(x_i,y_i),i=1,2,...m}}, generated from it by the procedure \eqn{y_i=f(x_i)}{y_i=f(x_i)} or for the noisy case by \eqn{y_i=f(x_i)+\epsilon_i}{y_i=f(x_i)+e_i} with a zero mean error, \eqn{\epsilon_i\sim iid(0,\sigma^2)}{e_i ~ iid(0,\sigma^2)}, by using the \emph{Taylor Regression Estimator (TRE)} method, which is described briefly below. 
}
\details{
\tabular{ll}{
Package: \tab RootsExtremaInflections\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-08-16\cr
License: \tab GPL 2\cr
}
When we want to find a root for a function \eqn{f}{f} by using the traditional Numerical Analysis methods (bisection, secant, Newton-Raphson etc), it is necessary to know the exact formula of \eqn{f}{f}. Unfortunately in research problems we do not know that formula and our data are also of a noisy type. 
In this package we use the \emph{Taylor Regression Estimator (TRE)} method, which can work when we know the discrete values \eqn{\left\{(x_i,y_i),i=1,2,\ldots m\right\},y_i=f(x_i)}{{(x_i,y_i),i=1,2,...m}, y_i=f(x_i)} of our known or unknown smooth function \eqn{f}{f}. Additionally the method works with satisfactory accuracy also for the corresponding  noisy values \eqn{\left\{\left(x_i, y_i\right),i=1,2,\ldots m \right\},\,y_i=f(x_i)+\epsilon_i,\,\epsilon_i\sim iid(0,\sigma^2)}{{(x_i,y_i),i=1,2,...,m}, y_i=f(x_i)+e_i, e_i ~ iid(0,\sigma^2)}.
The computation of extrema and inflection points for a smooth \eqn{f}{f} is merely a problem of root finding for first and second derivative respectively, thus \emph{TRE} method can also find an extreme or an inflection point.
In a few words, the method is referencing to the well known Taylor polynomial of a smooth function \eqn{f}{f} around a point \eqn{\rho},
\deqn{f \left( x \right)=a_0+a_1\,\left( x-\rho \right)+a_2\,\left( x-\rho \right)^2+a_3\,\left( x-\rho \right)^3+\ldots+a_n\,\left( x-\rho \right)^n}{f(x) = a_0+a_1( x-\rho)+a_2( x-\rho)^2+...+a_n( x-\rho)^n}
When the coefficients \eqn{a_{0},a_{1},a_{2}}{a_0,a_1,a_2}, as computed using a polynomial regression, have minimum absolute value, then the corresponding points \eqn{\rho} are the estimations of the \emph{root}, \emph{extreme} or \emph{inflection point}, respectively. Essentially \emph{Taylor Regression (TR)} is \emph{polynomial regression for Taylor polynomial}.
For a more rigorous definition of the terms \emph{TR}, \emph{TRE} method, further discussion and numerical examples, see \cite{Christopoulos (2014)}.   
}
\author{
Demetris T. Christopoulos

Maintainer: Demetris T. Christopoulos <dchristop@econ.uoa.gr>
}
\references{
Demetris T. Christopoulos (2014), Roots, extrema and inflection points by using a proper Taylor regression procedure, \emph{ResearchGate publications}, \url{https://www.researchgate.net/publication/261562841}
}
\examples{
#Load data:
data(xydat)
#
#Extract x and y variables:
x=xydat$x;y=xydat$y
#
#Find root, plot results, print Taylor coefficients and rho estimation:
b<-rootxi(x,y,1,length(x),5,5,'x','y',3,3);b$an;b$froot;
#
#Find extreme, plot results, print Taylor coefficients and rho estimation:
c<-extremexi(x,y,1,length(x),5,5,'x','y',3,3);c$an;c$fextr;
#
#Find inflection point, plot results, print Taylor coefficients and rho estimation:
d<-inflexi(x,y,1,length(x),5,5,'x','y',3,3);d$an;d$finfl;
}
\keyword{rootxi}
\keyword{extremexi}
\keyword{inflexi}
