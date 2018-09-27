#' ---
#' title: Plumber Explanation Script
#' author: "James Blair"
#' output: github_document
#' ---

#' # Plumber Demo
#' This PoC uses `rmarkdown::render()` to create a markdown file documenting this `plumber` API.

#+ eval=FALSE
library(plumber)

#* @apiTitle Plumber Example API

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
  list(msg = paste0("The message is: '", msg, "'"))
}

#' Create an endpoint that echos back the message provided.