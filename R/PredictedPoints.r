# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PredictedPoints Class
#'
#' @field yardLine 
#' @field predictedPoints 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PredictedPoints <- R6::R6Class(
  'PredictedPoints',
  public = list(
    `yardLine` = NULL,
    `predictedPoints` = NULL,
    initialize = function(`yardLine`, `predictedPoints`){
      if (!missing(`yardLine`)) {
        stopifnot(is.numeric(`yardLine`), length(`yardLine`) == 1)
        self$`yardLine` <- `yardLine`
      }
      if (!missing(`predictedPoints`)) {
        self$`predictedPoints` <- `predictedPoints`
      }
    },
    toJSON = function() {
      PredictedPointsObject <- list()
      if (!is.null(self$`yardLine`)) {
        PredictedPointsObject[['yardLine']] <- self$`yardLine`
      }
      if (!is.null(self$`predictedPoints`)) {
        PredictedPointsObject[['predictedPoints']] <- self$`predictedPoints`
      }

      PredictedPointsObject
    },
    fromJSON = function(PredictedPointsJson) {
      PredictedPointsObject <- jsonlite::fromJSON(PredictedPointsJson)
      if (!is.null(PredictedPointsObject$`yardLine`)) {
        self$`yardLine` <- PredictedPointsObject$`yardLine`
      }
      if (!is.null(PredictedPointsObject$`predictedPoints`)) {
        self$`predictedPoints` <- PredictedPointsObject$`predictedPoints`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "yardLine": %d,
           "predictedPoints": %s
        }',
        self$`yardLine`,
        self$`predictedPoints`
      )
    },
    fromJSONString = function(PredictedPointsJson) {
      PredictedPointsObject <- jsonlite::fromJSON(PredictedPointsJson)
      self$`yardLine` <- PredictedPointsObject$`yardLine`
      self$`predictedPoints` <- PredictedPointsObject$`predictedPoints`
    }
  )
)