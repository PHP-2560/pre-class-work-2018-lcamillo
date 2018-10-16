#PHP 2560
#B01478147
#Lucas Paulo de Lima Camillo


#1)
#checks if a substring is a prefix of a string
is_prefix <- function(string, prefix) {
  substr(string, 1, nchar(prefix)) == prefix
}

#removes the last element of a list or vector
remove_last <- function(x) {
  if (length(x) <= 1) return(NULL)
  x[-length(x)]
}

#repeats y for the length of x
rep_length <- function(x, y) {
  rep(y, length.out = length(x))
}


#2)
#rnorm is just a simpler version of MASS::mvrnorm(). For instance, when mu = 0, Sigma = 1, empirical = FALSE, they are basically the same.
#However, MASS::mvrnorm() is more powerful, since it can be used with multiple variables instead of just two. Also, it outputs a matrix instead of the vector for rnorm().
#In order to make them more consistent, they could both have the same type of output. Also, MASS::mvrnorm() could have mu = 0 and sigma = 1 as standard, since that would be the standard normal distribution.


#3)
#coefficient of variation of the columns in the mtcars dataset 
lapply(mtcars, function(x) sd(x)/mean(x))


#4)
#a-
#standard deviation of every column in a numeric data frame, e.g., mtcars
vapply(mtcars, sd, numeric(1))

#b-
#standard deviation of every numeric column in a mixed data frame, e.g., iris
vapply(iris[,vapply(iris, is.numeric, logical(1))], partial(sd,na.rm=TRUE), numeric(1))








