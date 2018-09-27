library(plumber)

pr <- plumb("plumber.R")

pr$swaggerFile()

pr$addFilter()

jsonlite::toJSON(pr$swaggerFile(), auto_unbox = TRUE, pretty = TRUE)

pr$run()