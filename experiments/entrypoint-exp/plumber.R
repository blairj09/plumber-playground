# This is the hello-world plumber example with a few additions. This API is used
# to experiment with the behavior of entrypoint.R for running plumber.

library(plumber)

#* @apiTitle Entrypoint practice

#* Log requests
#* @filter logger
function(req){
  cat(as.character(Sys.time()), "-", 
      req$REQUEST_METHOD, req$PATH_INFO, "-", 
      req$HTTP_USER_AGENT, "@", req$REMOTE_ADDR, "\n")
  forward()
}

#* Route / to /__swagger__
#* filter route-to-swagger
function(req) {
  if (req$PATH_INFO == "/") {
    req$PATH_INFO <- "/__swagger__/"
  }
  
  forward()
}

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @png
#* @get /plot
function() {
    rand <- rnorm(100)
    hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
function(a, b) {
    as.numeric(a) + as.numeric(b)
}
