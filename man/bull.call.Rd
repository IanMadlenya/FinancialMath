\arguments{
  \item{S}{spot price at time 0}
  \item{K1}{strike price of the long call}
  \item{K2}{strike price of the short call}
  \item{r}{yearly continuously compounded risk free rate}
  \item{t}{time of expiration (in years)}
  \item{price1}{price of the long call with strike price K1}
  \item{price2}{price of the short call with strike price K2}
  \item{plot}{tells whether or not to plot the payoff and profit}
}
\description{Gives a table and graphical representation of the payoff and profit of a bull call spread for a range of future stock prices.}
\name{bull.call}
\title{Bull Call Spread}
\alias{bull.call}
\keyword{spread}
\keyword{call}
\keyword{option}
\note{K1 must be less than S, and K2 must be greater than S.}
\value{A list of two components.
\item{Payoff}{A data frame of different payoffs and profits for given stock prices.}
\item{Premiums}{A matrix of the premiums for the call options and the net cost.}
}
\examples{
bull.call(S=115,K1=100,K2=145,r=.03,t=1,price1=20,price2=10,plot=TRUE)}
\usage{bull.call(S,K1,K2,r,t,price1,price2,plot=FALSE)}
\seealso{
  \code{\link{bull.call.bls}}

  \code{\link{bear.call}}

  \code{\link{option.call}}
}
\details{
Stock price at time t \eqn{=S_t}

For \eqn{S_t<=K1}: payoff \eqn{=0}

For \eqn{K1<S_t<K2}: payoff \eqn{=S_t-K1}

For \eqn{S_t>=K2}: payoff \eqn{=K2-K1}

profit = payoff + (price2 - price1)\eqn{*e^{r*t}}
}
