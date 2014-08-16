\name{extremexi}
\alias{extremexi}
\title{
Function to find the extreme point of a curve
}
\description{
It takes as input the x, y numeric vectors, the indices for the range to be searched plus some other 
options and finds the extreme point for that interval, while it plots data, Taylor polynomial and the computed \eqn{|a_1|}{|a_1|} coefficients.
}
\usage{
extremexi(x, y, i1, i2, nt, alpha, xlb, ylb, xnd, ynd)
}
\arguments{
  \item{x}{
A numeric vector for the independent variable
}
  \item{y}{
A numeric vector for the dependent variable
}
  \item{i1}{
The first index for choosing a specific interval \eqn{[a,b]=[x_{i1},x_{i2}]}{[a,b]=[x_{i1},x_{i2}]}
}
  \item{i2}{
The second index for choosing a specific interval \eqn{[a,b]=[x_{i1},x_{i2}]}{[a,b]=[x_{i1},x_{i2}]}
}
  \item{nt}{
The degree of the Taylor polynomial that will be fitted to the data
}
  \item{alpha}{
The level of statistical significance for the confidence intervals of coefficients \eqn{a_0, a_1,..., a_{nt-1}}{a_0, a_1,..., a_{nt-1}}
}
  \item{xlb}{
A label for the x-variable
}
  \item{ylb}{
A label for the y-variable
}
  \item{xnd}{
The number of digits for plotting the x-axis
}
  \item{ynd}{
The number of digits for plotting the y-axis
}
}
\details{
The point \eqn{x_i}{x_i} which makes the relevant \eqn{|a_1|}{|a_1|} minimum is the estimation for the function's extreme point at the interval \eqn{[x_{i1},x_{i2}]}{[x_{i1},x_{i2}]}.
}
\value{
It returns an environment with two components:
  \item{an}{a matrix with 3 columns: lower, upper bound of confidence interval and middle value for each coefficient an}
  \item{fextr}{a list with 2 members: the position i and the value of the estimated extreme point \eqn{\rho=x_{i}}{\rho=x_i}}
}
\references{
Demetris T. Christopoulos (2014), Roots, extrema and inflection points by using a proper Taylor regression procedure, \emph{ResearchGate publications}, \url{https://www.researchgate.net/publication/261562841}
}
\author{
Demetris T. Christopoulos
}

\section{Warnings }{When you are using RStudio it is necessary to leave enough space for the plot window in order for the plots to appear normally.
The data should come from a function at least \eqn{C^{(1)}}{C^(1)} in order to be able to find an extreme point.
} 

\examples{
#Load data:
#
data(xydat)
#
#Extract x and y variables:
#
x=xydat$x;y=xydat$y
#
#Find extreme point, plot results, print Taylor coefficients and rho estimation:
#
c<-extremexi(x,y,1,length(x),5,5,'x','y',3,3);c$an;c$fextr;
#
#Find multiple extrema.
#Let's create some data:
#
f=function(x){3*cos(x-5)};xa=0.;xb=9;
x=sort(runif(101,xa,xb));r=0.1;y=f(x)+2*r*(runif(length(x))-0.5);plot(x,y)
#
#The first extreme point is
c1<-extremexi(x,y,1,40,5,5,'x','y',3,3);c1$an;c1$fextr;
#Compare it with the actual rho_1=1.858407346
#
#The second extreme point is
c2<-extremexi(x,y,50,80,5,5,'x','y',3,3);c2$an;c2$fextr;
#You have to compare it with the actual value of rho_2=5.0
#
#Finally the third extreme point is
c3<-extremexi(x,y,80,length(x),5,5,'x','y',3,3);c3$an;c3$fextr;
#You have to compare it with the actual value of rho_3=8.141592654
}
\keyword{ extremexi }