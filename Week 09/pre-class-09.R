#PHP 2560
#Lucas Paulo de Lima Camillo
#B01478147

library(rvest)

#1)
url = "https://money.cnn.com/data/us_markets/"
webpage = read_html(url)

#2)
html_session(url)

#3)
html_table(html_nodes(webpage, "table")[[2]])[[1]]

#4)
html_table(html_nodes(webpage, "table")[[2]])[[2]]

#5)
html_table(html_nodes(webpage, "table")[[1]])

#6)
paste("https://money.cnn.com", html_attr(html_nodes(webpage, "td .wsod_symbol"), "href"))

#7)
html_text(html_nodes(webpage, ".HeadlineList a"))

#8)
html_attrs(html_nodes(webpage, ".wsod_disclaimer > span"))

#9)
html_attr(html_nodes(webpage, ".scale > div"), "class")

#10)
html_attr(html_nodes(webpage, "img[src$='svg']"), "src")

           