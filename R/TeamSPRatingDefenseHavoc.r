# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TeamSPRatingDefenseHavoc Class
#'
#' @field total 
#' @field frontSeven 
#' @field db 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamSPRatingDefenseHavoc <- R6::R6Class(
  'TeamSPRatingDefenseHavoc',
  public = list(
    `total` = NULL,
    `frontSeven` = NULL,
    `db` = NULL,
    initialize = function(`total`, `frontSeven`, `db`){
      if (!missing(`total`)) {
        self$`total` <- `total`
      }
      if (!missing(`frontSeven`)) {
        self$`frontSeven` <- `frontSeven`
      }
      if (!missing(`db`)) {
        self$`db` <- `db`
      }
    },
    toJSON = function() {
      TeamSPRatingDefenseHavocObject <- list()
      if (!is.null(self$`total`)) {
        TeamSPRatingDefenseHavocObject[['total']] <- self$`total`
      }
      if (!is.null(self$`frontSeven`)) {
        TeamSPRatingDefenseHavocObject[['frontSeven']] <- self$`frontSeven`
      }
      if (!is.null(self$`db`)) {
        TeamSPRatingDefenseHavocObject[['db']] <- self$`db`
      }

      TeamSPRatingDefenseHavocObject
    },
    fromJSON = function(TeamSPRatingDefenseHavocJson) {
      TeamSPRatingDefenseHavocObject <- jsonlite::fromJSON(TeamSPRatingDefenseHavocJson)
      if (!is.null(TeamSPRatingDefenseHavocObject$`total`)) {
        self$`total` <- TeamSPRatingDefenseHavocObject$`total`
      }
      if (!is.null(TeamSPRatingDefenseHavocObject$`frontSeven`)) {
        self$`frontSeven` <- TeamSPRatingDefenseHavocObject$`frontSeven`
      }
      if (!is.null(TeamSPRatingDefenseHavocObject$`db`)) {
        self$`db` <- TeamSPRatingDefenseHavocObject$`db`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "total": %s,
           "frontSeven": %s,
           "db": %s
        }',
        self$`total`,
        self$`frontSeven`,
        self$`db`
      )
    },
    fromJSONString = function(TeamSPRatingDefenseHavocJson) {
      TeamSPRatingDefenseHavocObject <- jsonlite::fromJSON(TeamSPRatingDefenseHavocJson)
      self$`total` <- TeamSPRatingDefenseHavocObject$`total`
      self$`frontSeven` <- TeamSPRatingDefenseHavocObject$`frontSeven`
      self$`db` <- TeamSPRatingDefenseHavocObject$`db`
    }
  )
)
