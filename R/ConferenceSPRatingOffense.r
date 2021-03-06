# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ConferenceSPRatingOffense Class
#'
#' @field rating 
#' @field success 
#' @field explosiveness 
#' @field rushing 
#' @field passing 
#' @field standardDowns 
#' @field passingDowns 
#' @field runRate 
#' @field pace 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConferenceSPRatingOffense <- R6::R6Class(
  'ConferenceSPRatingOffense',
  public = list(
    `rating` = NULL,
    `success` = NULL,
    `explosiveness` = NULL,
    `rushing` = NULL,
    `passing` = NULL,
    `standardDowns` = NULL,
    `passingDowns` = NULL,
    `runRate` = NULL,
    `pace` = NULL,
    initialize = function(`rating`, `success`, `explosiveness`, `rushing`, `passing`, `standardDowns`, `passingDowns`, `runRate`, `pace`){
      if (!missing(`rating`)) {
        self$`rating` <- `rating`
      }
      if (!missing(`success`)) {
        self$`success` <- `success`
      }
      if (!missing(`explosiveness`)) {
        self$`explosiveness` <- `explosiveness`
      }
      if (!missing(`rushing`)) {
        self$`rushing` <- `rushing`
      }
      if (!missing(`passing`)) {
        self$`passing` <- `passing`
      }
      if (!missing(`standardDowns`)) {
        self$`standardDowns` <- `standardDowns`
      }
      if (!missing(`passingDowns`)) {
        self$`passingDowns` <- `passingDowns`
      }
      if (!missing(`runRate`)) {
        self$`runRate` <- `runRate`
      }
      if (!missing(`pace`)) {
        self$`pace` <- `pace`
      }
    },
    toJSON = function() {
      ConferenceSPRatingOffenseObject <- list()
      if (!is.null(self$`rating`)) {
        ConferenceSPRatingOffenseObject[['rating']] <- self$`rating`
      }
      if (!is.null(self$`success`)) {
        ConferenceSPRatingOffenseObject[['success']] <- self$`success`
      }
      if (!is.null(self$`explosiveness`)) {
        ConferenceSPRatingOffenseObject[['explosiveness']] <- self$`explosiveness`
      }
      if (!is.null(self$`rushing`)) {
        ConferenceSPRatingOffenseObject[['rushing']] <- self$`rushing`
      }
      if (!is.null(self$`passing`)) {
        ConferenceSPRatingOffenseObject[['passing']] <- self$`passing`
      }
      if (!is.null(self$`standardDowns`)) {
        ConferenceSPRatingOffenseObject[['standardDowns']] <- self$`standardDowns`
      }
      if (!is.null(self$`passingDowns`)) {
        ConferenceSPRatingOffenseObject[['passingDowns']] <- self$`passingDowns`
      }
      if (!is.null(self$`runRate`)) {
        ConferenceSPRatingOffenseObject[['runRate']] <- self$`runRate`
      }
      if (!is.null(self$`pace`)) {
        ConferenceSPRatingOffenseObject[['pace']] <- self$`pace`
      }

      ConferenceSPRatingOffenseObject
    },
    fromJSON = function(ConferenceSPRatingOffenseJson) {
      ConferenceSPRatingOffenseObject <- jsonlite::fromJSON(ConferenceSPRatingOffenseJson)
      if (!is.null(ConferenceSPRatingOffenseObject$`rating`)) {
        self$`rating` <- ConferenceSPRatingOffenseObject$`rating`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`success`)) {
        self$`success` <- ConferenceSPRatingOffenseObject$`success`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`explosiveness`)) {
        self$`explosiveness` <- ConferenceSPRatingOffenseObject$`explosiveness`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`rushing`)) {
        self$`rushing` <- ConferenceSPRatingOffenseObject$`rushing`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`passing`)) {
        self$`passing` <- ConferenceSPRatingOffenseObject$`passing`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`standardDowns`)) {
        self$`standardDowns` <- ConferenceSPRatingOffenseObject$`standardDowns`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`passingDowns`)) {
        self$`passingDowns` <- ConferenceSPRatingOffenseObject$`passingDowns`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`runRate`)) {
        self$`runRate` <- ConferenceSPRatingOffenseObject$`runRate`
      }
      if (!is.null(ConferenceSPRatingOffenseObject$`pace`)) {
        self$`pace` <- ConferenceSPRatingOffenseObject$`pace`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "rating": %s,
           "success": %s,
           "explosiveness": %s,
           "rushing": %s,
           "passing": %s,
           "standardDowns": %s,
           "passingDowns": %s,
           "runRate": %s,
           "pace": %s
        }',
        self$`rating`,
        self$`success`,
        self$`explosiveness`,
        self$`rushing`,
        self$`passing`,
        self$`standardDowns`,
        self$`passingDowns`,
        self$`runRate`,
        self$`pace`
      )
    },
    fromJSONString = function(ConferenceSPRatingOffenseJson) {
      ConferenceSPRatingOffenseObject <- jsonlite::fromJSON(ConferenceSPRatingOffenseJson)
      self$`rating` <- ConferenceSPRatingOffenseObject$`rating`
      self$`success` <- ConferenceSPRatingOffenseObject$`success`
      self$`explosiveness` <- ConferenceSPRatingOffenseObject$`explosiveness`
      self$`rushing` <- ConferenceSPRatingOffenseObject$`rushing`
      self$`passing` <- ConferenceSPRatingOffenseObject$`passing`
      self$`standardDowns` <- ConferenceSPRatingOffenseObject$`standardDowns`
      self$`passingDowns` <- ConferenceSPRatingOffenseObject$`passingDowns`
      self$`runRate` <- ConferenceSPRatingOffenseObject$`runRate`
      self$`pace` <- ConferenceSPRatingOffenseObject$`pace`
    }
  )
)
