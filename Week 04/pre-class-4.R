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
for (i in 1:999) {
  sum_a = sum_a + i
}
print(sum_a)

#b- #between 0 and 1000 means not including 0 and 1000
sum_b1 = 0
for (i in seq(1, 999, 2)) {
  sum_b = sum_b + i
}
print(sum_b)

#c-
sum_a2 = sum(1:999)
sum_b2 = sum(seq(1, 999, 2))
print(sum_a2)
print(sum_b2)

#3)

