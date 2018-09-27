# Plumber Playground
This repository is a place to experiment with and demonstrate various features of
the [`plumber`](https://www.rplumber.io) R package. Local interaction with the 
APIs created here happens through the auto-generated [Swagger](https://swagger.io) 
interface or through [Postman](https://www.getpostman.com). Each experiment is 
designed to focus on one particular feature or use case of `plumber`.

---

### Experiments

#### [Data](experiments/data-exp)
Methods of transferring data in request to `plumber` API. This examines parsing 
the `postBody` along with file uploads and parsing the query string.

#### [Cookies](experiments/cookies-exp)
Experiments with cookies in `plumber`.

#### [Entrypoint](experiments/entrypoint-exp)
Experiments with `entrypoint.R` and how it affects `plumber` defined APIs.

#### [Gif](experiments/gif-exp)
Experiments creating a gif serializer for `plumber`.

#### [htmlwidgets](experiments/htmlwidgets-exp)
Experiments with returning htmlwidgets from `plumber`.

#### [request](experiments/request-exp)
Experiments to better understand the `request` object in `plumber`.

#### [rmarkdown](experiments/rmarkdown-exp)
Create implicit documetation for `plumber` APIs using Rmarkdown comments and 
`rmarkdown::render()`.

#### [swagger](experiments/swagger-exp)
This experiment is used to better understand how the Swagger works in connection
with `plumber`.

#### [programmatic](experiments/programmatic-exp)
Experiments to understand programmatic development of `plumber` APIs.
