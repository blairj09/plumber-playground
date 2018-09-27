# Define plumber router

library(plumber)

api <- plumb("plumber.R")

api$run(swagger = TRUE)