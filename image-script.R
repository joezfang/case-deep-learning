library(magick)
kevin <- image_read("headshots/kevin.jpg") %>% 
  image_scale("400x250") %>%
  image_crop("180x250+40") %>%
  image_border("lightgray", "25x25") %>%
  image_annotate("Kevin: negroni", "south",
                 size = 20) %>%
  image_rotate(7)

joe <- image_read("headshots/joe.jpg") %>% 
  image_scale("400x250") %>%
  image_border("lightgray", "25x25") %>%
  image_annotate("Joe: jungle juice", "south",
                 size = 20) %>%
  image_rotate(-8)

nicole <- image_read("headshots/nicole.jpg") %>%
  image_scale("400x250") %>%
  image_border("lightgray", "25x25") %>%
  image_annotate("Nicole: vodka+pineapple", "south",
                 size = 20) %>%
  image_rotate(10)

img <- c(nicole, joe, kevin)
image_append(img) %>%
  image_write("static/figs/headshots.png")
