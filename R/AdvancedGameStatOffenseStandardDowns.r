# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AdvancedGameStatOffenseStandardDowns Class
#'
#' @field ppa 
#' @field successRate 
#' @field explosiveness 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdvancedGameStatOffenseStandardDowns <- R6::R6Class(
  'AdvancedGameStatOffenseStandardDowns',
  public = list(
    `ppa` = NULL,
    `successRate` = NULL,
    `explosiveness` = NULL,
    initialize = function(`ppa`, `successRate`, `explosiveness`){
      if (!missing(`ppa`)) {
        self$`ppa` <- `ppa`
      }
      if (!missing(`successRate`)) {
        self$`successRate` <- `successRate`
      }
      if (!missing(`explosiveness`)) {
        self$`explosiveness` <- `explosiveness`
      }
    },
    toJSON = function() {
      AdvancedGameStatOffenseStandardDownsObject <- list()
      if (!is.null(self$`ppa`)) {
        AdvancedGameStatOffenseStandardDownsObject[['ppa']] <- self$`ppa`
      }
      if (!is.null(self$`successRate`)) {
        AdvancedGameStatOffenseStandardDownsObject[['successRate']] <- self$`successRate`
      }
      if (!is.null(self$`explosiveness`)) {
        AdvancedGameStatOffenseStandardDownsObject[['explosiveness']] <- self$`explosiveness`
      }

      AdvancedGameStatOffenseStandardDownsObject
    },
    fromJSON = function(AdvancedGameStatOffenseStandardDownsJson) {
      AdvancedGameStatOffenseStandardDownsObject <- jsonlite::fromJSON(AdvancedGameStatOffenseStandardDownsJson)
      if (!is.null(AdvancedGameStatOffenseStandardDownsObject$`ppa`)) {
        self$`ppa` <- AdvancedGameStatOffenseStandardDownsObject$`ppa`
      }
      if (!is.null(AdvancedGameStatOffenseStandardDownsObject$`successRate`)) {
        self$`successRate` <- AdvancedGameStatOffenseStandardDownsObject$`successRate`
      }
      if (!is.null(AdvancedGameStatOffenseStandardDownsObject$`explosiveness`)) {
        self$`explosiveness` <- AdvancedGameStatOffenseStandardDownsObject$`explosiveness`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "ppa": %s,
           "successRate": %s,
           "explosiveness": %s
        }',
        self$`ppa`,
        self$`successRate`,
        self$`explosiveness`
      )
    },
    fromJSONString = function(AdvancedGameStatOffenseStandardDownsJson) {
      AdvancedGameStatOffenseStandardDownsObject <- jsonlite::fromJSON(AdvancedGameStatOffenseStandardDownsJson)
      self$`ppa` <- AdvancedGameStatOffenseStandardDownsObject$`ppa`
      self$`successRate` <- AdvancedGameStatOffenseStandardDownsObject$`successRate`
      self$`explosiveness` <- AdvancedGameStatOffenseStandardDownsObject$`explosiveness`
    }
  )
)