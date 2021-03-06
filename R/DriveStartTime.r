# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DriveStartTime Class
#'
#' @field minutes 
#' @field seconds 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DriveStartTime <- R6::R6Class(
  'DriveStartTime',
  public = list(
    `minutes` = NULL,
    `seconds` = NULL,
    initialize = function(`minutes`, `seconds`){
      if (!missing(`minutes`)) {
        stopifnot(is.numeric(`minutes`), length(`minutes`) == 1)
        self$`minutes` <- `minutes`
      }
      if (!missing(`seconds`)) {
        stopifnot(is.numeric(`seconds`), length(`seconds`) == 1)
        self$`seconds` <- `seconds`
      }
    },
    toJSON = function() {
      DriveStartTimeObject <- list()
      if (!is.null(self$`minutes`)) {
        DriveStartTimeObject[['minutes']] <- self$`minutes`
      }
      if (!is.null(self$`seconds`)) {
        DriveStartTimeObject[['seconds']] <- self$`seconds`
      }

      DriveStartTimeObject
    },
    fromJSON = function(DriveStartTimeJson) {
      DriveStartTimeObject <- jsonlite::fromJSON(DriveStartTimeJson)
      if (!is.null(DriveStartTimeObject$`minutes`)) {
        self$`minutes` <- DriveStartTimeObject$`minutes`
      }
      if (!is.null(DriveStartTimeObject$`seconds`)) {
        self$`seconds` <- DriveStartTimeObject$`seconds`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "minutes": %d,
           "seconds": %d
        }',
        self$`minutes`,
        self$`seconds`
      )
    },
    fromJSONString = function(DriveStartTimeJson) {
      DriveStartTimeObject <- jsonlite::fromJSON(DriveStartTimeJson)
      self$`minutes` <- DriveStartTimeObject$`minutes`
      self$`seconds` <- DriveStartTimeObject$`seconds`
    }
  )
)
