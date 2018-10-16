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