# This API experiments with setting cookies

library(plumber)

#* @apiTitle Cookies API

#* Use encrypted cookies to count number of times a client visits an endpoint
#* @get /sessionCounter
function(req, res) {
  count <- 0
  if (!is.null(req$session$counter)) {
    count <- as.numeric(req$session$counter)
  }
  req$session$counter <- count + 1
  res$setCookie("u_counter", count)
  
  return(paste0("This is visit #", count))
}