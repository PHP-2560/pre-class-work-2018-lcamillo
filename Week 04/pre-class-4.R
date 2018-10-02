#PHP 2560
#Lucas Paulo de Lima Camillo
#B01478147



#1)
for (i in 1:50) {
  print(i)
}



#2)
#a-
sum_a1 = 0
for (i in 0:1000) {
  sum_a = sum_a + i
}
print(sum_a)

#b- 
sum_b1 = 0
for (i in seq(0, 1000, 2)) {
  sum_b = sum_b + i
}
print(sum_b)

#c-
sum_a2 = sum(0:1000)
sum_b2 = sum(seq(0, 1000, 2))
print(sum_a2)
print(sum_b2)



#3)

survey <- data.frame(
  "participant" = c(1, 2, 3, 4, 5, 6),
  "q1" = c(5, 3, 2, 7, 11, 0),
  "q2" = c(4, 2, 2, 5, -10, 99),
  "q3" = c(-4, -3, 4, 2, 9, 10),
  "q4" = c(-30, 5, 2, 23, 4, 2),
  "q5" = c(88, 4, -20, 2, 4, 2)
)

#a-
survey.clean = survey
for (i in 1:nrow(survey)){
  for (j in 2:ncol(survey)){
    if (survey[i,j] >= 1 & survey[i,j] <= 5) {
      survey.clean[i,j] = survey[i,j]
    } else {
      survey.clean[i,j] = NA
    }
  }
}

#b-
for (i in 1:nrow(survey)) {
  survey.clean$invalid.answers[i] = sum(is.na(survey.clean[i,]))
}






