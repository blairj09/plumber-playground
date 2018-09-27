Plumber Explanation Script
================
James Blair
Wed Sep 19 17:12:43 2018

# Plumber Demo

This PoC uses `rmarkdown::render()` to create a markdown file
documenting this `plumber` API.

``` r
library(plumber)

#* @apiTitle Plumber Example API

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
  list(msg = paste0("The message is: '", msg, "'"))
}
```

Create an endpoint that echos back the message provided.
