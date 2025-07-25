\name{rootexinf}
\alias{rootexinf}
\title{
Function to Find the Root, Extreme and Inflection of a Planar Curve
}
\description{
It takes as input the x, y numeric vectors, the indices for the range to be searched plus some other 
options and finds the root, extreme and inflection for that interval, while it plots data, 
Taylor polynomial and and the computed \eqn{|a_0|}{|a_0|}, \eqn{|a_1|}{|a_1|}, \eqn{|a_2|}{|a_2|} coefficients.
}
\usage{
rootexinf(x, y, i1, i2, nt, alpha = 5, xlb = "x", ylb = "y", xnd = 3,  ynd = 3,
plots = TRUE, plotpdf = FALSE, doparallel=FALSE)
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
The level of statistical significance for the confidence intervals of coefficients \eqn{a_0, a_1,..., a_{nt-1}}{a_0, a_1,..., a_{nt-1}} (default value = 5)
}
  \item{xlb}{
A label for the x-variable (default value = "x")
}
  \item{ylb}{
A label for the y-variable (default value = "y")
}
  \item{xnd}{
The number of digits for plotting the x-axis (default value = 3)
}
  \item{ynd}{
The number of digits for plotting the y-axis (default value = 3)
}
  \item{plots}{
If plots=TRUE then a plot is created on default monitor (default value = TRUE) 
}
  \item{plotpdf}{
If plotpdf=TRUE then a pdf plot is created and stored on working directory (default value = FALSE) 
}
  \item{doparallel}{
If doparallel=TRUE then parallel computing is applied, based on the available workers of current machine (default value = FALSE)    
}
}
\details{
The points \eqn{x_i}{x_i} that make the relevant \eqn{|a_0|}{|a_0|}, \eqn{|a_1|}{|a_1|}, \eqn{|a_2|}{|a_2|} minimum are the estimations
for the function's root, etreme and inflection point at the interval \eqn{[x_{i1},x_{i2}]}{[x_{i1},x_{i2}]}.
}
\value{
It returns an environment with four components:
  \item{an0}{a matrix with 3 columns: lower, upper bound of confidence interval and middle value for each coefficient a_n at the best choice in root searching}
  \item{an1}{a matrix with 3 columns: lower, upper bound of confidence interval and middle value for each coefficient a_n at the best choice in extreme searching}
  \item{an2}{a matrix with 3 columns: lower, upper bound of confidence interval and middle value for each coefficient a_n at the best choice in inflection searching}
  \item{frexinf}{a 3 x 3 matrix: for each row (root, extreme, inflection) the position i and the value of the estimated root, extreme and inflection \eqn{\rho=x_{i}}{\rho=x_i}}
}
\references{
Demetris T. Christopoulos (2014). Roots, extrema and inflection points by using a proper Taylor regression procedure. \emph{SSRN}. \doi{10.2139/ssrn.2521403}
}
\author{
Demetris T. Christopoulos
}
\section{Warnings }{When you are using RStudio it is necessary to leave enough space for the plot window in order for the plots to appear normally.
The data should come from a function at least \eqn{C^{(2)}}{C^(2)} in order to find the root, extreme and inflection point, provided those points exist.
} 
\examples{
#Load data:
#Let's create some data:
f=function(x){3*cos(x-5)+1.5};xa=1.;xb=5;
set.seed(12345);x=sort(runif(5001,xa,xb));
r=0.1;y=f(x)+2*r*(runif(length(x))-0.5);plot(x,y);abline(h=0)
#a<-rootexinf(x,y,1,length(x),5,plotpdf = TRUE,doparallel = TRUE);a$an0;a$an1;a$an2;a$frexinf;
# Available workers are 12 
# Time difference of 13.02153 secs
# File 'root_extreme_inflection_plot.pdf' has been created 
#           2.5 %       97.5 %          an0
# a0 -0.004165735  0.001838624 -0.001163555
# a1  2.588990973  2.600915136  2.594953055
# a2  0.731456294  0.741262772  0.736359533
# a3 -0.435591038 -0.423837041 -0.429714040
# a4 -0.052926049 -0.050039975 -0.051483012
# a5  0.017915715  0.020538155  0.019226935
#           2.5 %       97.5 %           an1
# a0 -1.507117843 -1.500375848 -1.5037468451
# a1 -0.008343275  0.007916087 -0.0002135941
# a2  1.519432687  1.534103788  1.5267682378
# a3 -0.017663080  0.007780728 -0.0049411760
# a4 -0.159461025 -0.144303367 -0.1518821962
# a5  0.017915715  0.020538155  0.0192269354
#           2.5 %       97.5 %           an2
# a0  1.503394727  1.509925166  1.5066599466
# a1  2.985374546  2.995259021  2.9903167834
# a2 -0.009041165  0.005898692 -0.0015712367
# a3 -0.489107253 -0.480579585 -0.4848434187
# a4 -0.003885327  0.002364758 -0.0007602842
# a5  0.017915715  0.020538155  0.0192269354
# index    value
# root        2364 2.903791
# extreme     1057 1.859431
# inflection  3038 3.431413
# You have to compare with the exact values
# root=2.905604898
# extreme=1.858407346
# inflection=3.429203673
}
\keyword{rootexinf}