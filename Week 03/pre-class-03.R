#PHP2560 preclass03
#Lucas Paulo de Lima Camillo
#B01478147

install.packages("gapminder")
library(dplyr)
library(gapminder)
gapminder = gapminder # dataset is called gapminder


#1)
# 52 in Africa, 25 in Americas, 33 in Asia, 30 in Europe, 2 in Oceania
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
# 52.5 in Africa, 67.2 in Americas, 63.7 in Asia, 73.2 in Europe, 74.8 in Oceania
gapminder %>%
  filter(year >= 1980, year < 1990) %>%
  group_by(continent) %>%
  summarise(avg_life = mean(lifeExp))

#4)
# Kuwait, Switzerland, Norway, United State, and Canada respectively
gapminder %>%
  group_by(country) %>%
  summarise(avg_gdp = sum(gdpPercap)) %>%
  arrange(desc(avg_gdp))

#5)
#there were 22 data points with lifeExp of at least 80 years. Check output
gapminder %>%
  group_by(country, year) %>%
  filter(lifeExp >= 80) %>%
  select(country, year, lifeExp)

#6)
# Brazil, Mauritania, France, Switzerland, Pakistan, Indonesia, Equatorial Guinea, Comoros, Nicaragua, and Guatemala respectively
gapminder %>%
  group_by(country) %>%
  summarise(correlation = cor(year, lifeExp)) %>%
  arrange(desc(abs(correlation)))

#7)
# America in the more recent years has the highest average population per country
gapminder %>%
  filter(continent != "Asia") %>%
  group_by(continent, year) %>%
  summarize(avg_pop = mean(pop)) %>%
  arrange(desc(avg_pop))

#8)
# Sao Tome and Principe (45906), Iceland (48542), and Montenegro (99738)
gapminder %>%
  group_by(country) %>%
  summarise(sd_pop = sd(pop)) %>%
  arrange(sd_pop)

#9)
# gm1992 is a tibble
gm1992  = gapminder %>%
  filter(year == "1992")
class(gm1992)

#10)
#Check output
gapminder %>%
  arrange(country, year) %>%
  group_by(country) %>%
  filter(lifeExp - lag(lifeExp) > 0, pop - lag(pop) < 0)

  
  







