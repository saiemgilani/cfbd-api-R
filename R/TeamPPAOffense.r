# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TeamPPAOffense Class
#'
#' @field overall 
#' @field passing 
#' @field rushing 
#' @field firstDown 
#' @field secondDown 
#' @field thirdDown 
#' @field cumulative 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamPPAOffense <- R6::R6Class(
  'TeamPPAOffense',
  public = list(
    `overall` = NULL,
    `passing` = NULL,
    `rushing` = NULL,
    `firstDown` = NULL,
    `secondDown` = NULL,
    `thirdDown` = NULL,
    `cumulative` = NULL,
    initialize = function(`overall`, `passing`, `rushing`, `firstDown`, `secondDown`, `thirdDown`, `cumulative`){
      if (!missing(`overall`)) {
        self$`overall` <- `overall`
      }
      if (!missing(`passing`)) {
        self$`passing` <- `passing`
      }
      if (!missing(`rushing`)) {
        self$`rushing` <- `rushing`
      }
      if (!missing(`firstDown`)) {
        self$`firstDown` <- `firstDown`
      }
      if (!missing(`secondDown`)) {
        self$`secondDown` <- `secondDown`
      }
      if (!missing(`thirdDown`)) {
        self$`thirdDown` <- `thirdDown`
      }
      if (!missing(`cumulative`)) {
        stopifnot(R6::is.R6(`cumulative`))
        self$`cumulative` <- `cumulative`
      }
    },
    toJSON = function() {
      TeamPPAOffenseObject <- list()
      if (!is.null(self$`overall`)) {
        TeamPPAOffenseObject[['overall']] <- self$`overall`
      }
      if (!is.null(self$`passing`)) {
        TeamPPAOffenseObject[['passing']] <- self$`passing`
      }
      if (!is.null(self$`rushing`)) {
        TeamPPAOffenseObject[['rushing']] <- self$`rushing`
      }
      if (!is.null(self$`firstDown`)) {
        TeamPPAOffenseObject[['firstDown']] <- self$`firstDown`
      }
      if (!is.null(self$`secondDown`)) {
        TeamPPAOffenseObject[['secondDown']] <- self$`secondDown`
      }
      if (!is.null(self$`thirdDown`)) {
        TeamPPAOffenseObject[['thirdDown']] <- self$`thirdDown`
      }
      if (!is.null(self$`cumulative`)) {
        TeamPPAOffenseObject[['cumulative']] <- self$`cumulative`$toJSON()
      }

      TeamPPAOffenseObject
    },
    fromJSON = function(TeamPPAOffenseJson) {
      TeamPPAOffenseObject <- jsonlite::fromJSON(TeamPPAOffenseJson)
      if (!is.null(TeamPPAOffenseObject$`overall`)) {
        self$`overall` <- TeamPPAOffenseObject$`overall`
      }
      if (!is.null(TeamPPAOffenseObject$`passing`)) {
        self$`passing` <- TeamPPAOffenseObject$`passing`
      }
      if (!is.null(TeamPPAOffenseObject$`rushing`)) {
        self$`rushing` <- TeamPPAOffenseObject$`rushing`
      }
      if (!is.null(TeamPPAOffenseObject$`firstDown`)) {
        self$`firstDown` <- TeamPPAOffenseObject$`firstDown`
      }
      if (!is.null(TeamPPAOffenseObject$`secondDown`)) {
        self$`secondDown` <- TeamPPAOffenseObject$`secondDown`
      }
      if (!is.null(TeamPPAOffenseObject$`thirdDown`)) {
        self$`thirdDown` <- TeamPPAOffenseObject$`thirdDown`
      }
      if (!is.null(TeamPPAOffenseObject$`cumulative`)) {
        cumulativeObject <- TeamPPAOffenseCumulative$new()
        cumulativeObject$fromJSON(jsonlite::toJSON(TeamPPAOffenseObject$cumulative, auto_unbox = TRUE))
        self$`cumulative` <- cumulativeObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "overall": %s,
           "passing": %s,
           "rushing": %s,
           "firstDown": %s,
           "secondDown": %s,
           "thirdDown": %s,
           "cumulative": %s
        }',
        self$`overall`,
        self$`passing`,
        self$`rushing`,
        self$`firstDown`,
        self$`secondDown`,
        self$`thirdDown`,
        self$`cumulative`$toJSON()
      )
    },
    fromJSONString = function(TeamPPAOffenseJson) {
      TeamPPAOffenseObject <- jsonlite::fromJSON(TeamPPAOffenseJson)
      self$`overall` <- TeamPPAOffenseObject$`overall`
      self$`passing` <- TeamPPAOffenseObject$`passing`
      self$`rushing` <- TeamPPAOffenseObject$`rushing`
      self$`firstDown` <- TeamPPAOffenseObject$`firstDown`
      self$`secondDown` <- TeamPPAOffenseObject$`secondDown`
      self$`thirdDown` <- TeamPPAOffenseObject$`thirdDown`
      TeamPPAOffenseCumulativeObject <- TeamPPAOffenseCumulative$new()
      self$`cumulative` <- TeamPPAOffenseCumulativeObject$fromJSON(jsonlite::toJSON(TeamPPAOffenseObject$cumulative, auto_unbox = TRUE))
    }
  )
)