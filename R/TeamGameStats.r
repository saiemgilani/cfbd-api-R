# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TeamGameStats Class
#'
#' @field category 
#' @field stat 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamGameStats <- R6::R6Class(
  'TeamGameStats',
  public = list(
    `category` = NULL,
    `stat` = NULL,
    initialize = function(`category`, `stat`){
      if (!missing(`category`)) {
        stopifnot(is.character(`category`), length(`category`) == 1)
        self$`category` <- `category`
      }
      if (!missing(`stat`)) {
        stopifnot(is.character(`stat`), length(`stat`) == 1)
        self$`stat` <- `stat`
      }
    },
    toJSON = function() {
      TeamGameStatsObject <- list()
      if (!is.null(self$`category`)) {
        TeamGameStatsObject[['category']] <- self$`category`
      }
      if (!is.null(self$`stat`)) {
        TeamGameStatsObject[['stat']] <- self$`stat`
      }

      TeamGameStatsObject
    },
    fromJSON = function(TeamGameStatsJson) {
      TeamGameStatsObject <- jsonlite::fromJSON(TeamGameStatsJson)
      if (!is.null(TeamGameStatsObject$`category`)) {
        self$`category` <- TeamGameStatsObject$`category`
      }
      if (!is.null(TeamGameStatsObject$`stat`)) {
        self$`stat` <- TeamGameStatsObject$`stat`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "category": %s,
           "stat": %s
        }',
        self$`category`,
        self$`stat`
      )
    },
    fromJSONString = function(TeamGameStatsJson) {
      TeamGameStatsObject <- jsonlite::fromJSON(TeamGameStatsJson)
      self$`category` <- TeamGameStatsObject$`category`
      self$`stat` <- TeamGameStatsObject$`stat`
    }
  )
)
