# API for experimenting with html widgets

library(plumber)
library(ggplot2)
library(plotly)


#* @apiTitle HTML widgets API

#* Return interactive plot using plotly
#* @serializer htmlwidget
#* @get /plotly
function() {
  p <- ggplot(data = diamonds,
              aes(x = cut, fill = clarity)) +
    geom_bar(position = "dodge")
  
  ggplotly(p)
}