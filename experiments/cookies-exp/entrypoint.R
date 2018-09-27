# Packages ----
library(plumber)

# Create and run router
pr <- plumb("plumber.R")

pr$registerHooks(sessionCookie("sdlfkjwenvksnlfd", name = "counter"))
pr$registerHook("exit", function() {
  print('Exiting now')
})

pr$run()