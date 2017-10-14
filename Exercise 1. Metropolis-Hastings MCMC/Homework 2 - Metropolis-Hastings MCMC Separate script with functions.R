#Question 4: Likelihood function, with comments
likelihood <- function(param){ #Define a likelihood function, with parameters defined by the vector in R^3 param
  a = param[1] #Coordinate 1 is the slope
  b = param[2] #Coordinate 2 is the intercept
  sd = param[3] #Coordinate 3 is the error's sd
  
  pred = a*x + b #Fit the estimate of y with these values
  singlelikelihoods = dnorm(y, mean = pred, sd = sd, log = T) #These likelihoods are based on the multivariate normal distribution of y, with mean a*x+b and sd of the errors. The probabilities are returned as a vector of logs (i.e. log(p)).
  sumll = sum(singlelikelihoods) #Since the probabilities are in logs, assuming the observations are i.i.d., sumll calculates the log of the probability of getting the sample
  return(sumll) #Return log(P(Getting this sample of y))
}

#Question 4: Defining the prior, with comments
# Prior distribution
prior <- function(param){ #Define a prior distribution function, with parameters defined by the vector in R^3 param
  a = param[1] #Coordinate 1 is the slope
  b = param[2] #Coordinate 2 is the intercept
  sd = param[3] #Coordinate 3 is the error's sd
  aprior = dunif(a, min=0, max=10, log = T) #Uniform(0,10) prior for the slope, in log
  bprior = dnorm(b, sd = 5, log = T) #Normal(b,5) prior for the intercept, in log
  sdprior = dunif(sd, min=0, max=30, log = T) #Uniform(0,30) prior for the error's sd, in log
  return(aprior+bprior+sdprior) #Since they are in logs, it is okay to return the sum of the parameters
}

#Question 4: Defining the posterior, with comments
posterior <- function(param){ #Function calculating the posterior, using parameters defined by the vector in R^3 param
  return (likelihood(param) + prior(param)) #Both are in logs, so they can be summed. This applies Bayes' Theorem.
}