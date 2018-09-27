# This API demonstrates how to parse data input into plumber.

library(plumber)
library(formattable)
library(jsonlite)

#* @apiTitle Data Experiments

# Parse postBody into data.frame

#* Return an HTML table of the postBody data
#* @html
#* @post /data/post
function(req) {
  format_table(fromJSON(req$postBody))
}

# Parse data from query string

#* Return an HTML table of query string data
#* @html
#* @get /data/get
function(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb) {
  format_table(tibble::tibble(
    mpg,
    cyl,
    disp,
    hp,
    drat,
    wt,
    qsec,
    vs,
    am,
    gear,
    carb
  ))
}

# Parse data from attached file

#* Return an HTML table of input file
#* @html
#* @post /data/file
function(req) {
  format_table(fromJSON(req$postBody))
}
