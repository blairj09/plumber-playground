library(plumber)

pr <- plumb("plumber.R")

pr$swaggerFile()

jsonlite::toJSON(pr$swaggerFile(), auto_unbox = TRUE, pretty = TRUE)

pr$run()