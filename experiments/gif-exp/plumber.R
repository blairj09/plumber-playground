# Respond to API call with a GIF

# Setup ----
library(plumber)
library(ggplot2)
library(gganimate)
library(gapminder)

#* @apiTitle GIF API


#* Get GIF (no serialization)
#* @serializer contentType list(type = "image/gif")
#* @get /ns-gif
function() {
  gif_plot <- ggplot(gapminder, aes(gdpPercap, lifeExp, size = pop, colour = country)) +
    geom_point(alpha = 0.7, show.legend = FALSE) +
    scale_colour_manual(values = country_colors) +
    scale_size(range = c(2, 12)) +
    scale_x_log10() +
    facet_wrap(~continent) +
    # Here comes the gganimate specific bits
    labs(title = 'Year: {frame_time}', x = 'GDP per capita', y = 'life expectancy') +
    transition_time(year) +
    ease_aes('linear')
  
  # Build file path
  file_path <- paste0(tempdir(), "/api_gif")
  
  anim_save("api_gif", animate(gif_plot), tempdir())
  
  con <- file(file_path, "rb")
  
  img <- readBin(con, "raw", file.info(file_path)$size)
  
  close(con)
  
  file.remove(file_path)
  
  img
}
