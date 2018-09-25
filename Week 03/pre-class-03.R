#preclass03
#Lucas Paulo de Lima Camillo
#B01478147

install.packages("gapminder")
library(dplyr)
library(gapminder)
gapminder = gapminder # dataset is called gapminder

#1)
#52 in Africa, 25 in Americas, 33 in Asia, 30 in Europe, 2 in Oceania
gapminder %>%
  group_by(continent) %>%
  distinct(country) %>%
  count()

#2)
# It is Albania with 3193 for gdpPercap
gapminder %>%
  filter(continent == "Europe", year == "1997") %>%
  arrange(gdpPercap)

#3)









