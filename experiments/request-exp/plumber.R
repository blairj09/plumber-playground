# This API is used to better understand the request object

library(plumber)

#* @apiTitle Request API

#* Log details about the request
#* @get /req
function(req) {
  # Log details about the request
  print(ls(req))
  print(str(req$HEADERS))
  print(paste("SERVER_NAME:", req$SERVER_NAME))
  print(paste("HTTP_HOST:", req$HTTP_HOST))
  print(paste("REMOTE_ADDRESS:", req$REMOTE_ADDR))
  
  list(
    message = "Success"
  )
}
