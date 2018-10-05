#PHP 2560
#Lucas Paulo de Lima Camillo
#B01478147

#1)
suppressMessages(library(foreign))
wcgs <- read.dta("https://drive.google.com/uc?export=download&id=0B8CsRLdwqzbzYWxfN3ExQllBQkU")

#a- 
#standardizes a vector
standardize.me = function(vec) {
  stand_vec = vector()
  for (i in 1:length(vec)){
    stand_vec[i] = (vec[i] - mean(vec, na.rm = TRUE))/sd(vec, na.rm = TRUE)
  }
  return(stand_vec)
}

#b-
#selects numeric variables
wcgs.new = data.frame('id'=wcgs[,1])
count = 2
for (i in 2:ncol(wcgs)) {
  if (is.numeric(wcgs[,i])){
    wcgs.new = cbind(wcgs.new, wcgs[,i])
    colnames(wcgs.new)[count] = colnames(wcgs)[i]
    count = count + 1
  }
}
wcgs.new

#c- 
for (i in 2:ncol(wcgs.new)) {
  wcgs.new[,i] = standardize.me(wcgs.new[,i])
}
wcgs.new

#d-
#they should have a mean of 0 and a sd of 1. The sds are 1 and the means are very close to 0 due to tiny errors in the assignment of the numbers.
for (i in 2:ncol(wcgs.new)) {
  print(paste('Mean of ', names(wcgs.new)[i], 'is ', mean(wcgs.new[,i], na.rm = TRUE)))
  print(paste('Sd of ', names(wcgs.new)[i], 'is ', sd(wcgs.new[,i], na.rm = TRUE)))
}



#2)









