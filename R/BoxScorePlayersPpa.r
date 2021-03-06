# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BoxScorePlayersPpa Class
#'
#' @field player 
#' @field team 
#' @field position 
#' @field average 
#' @field cumulative 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BoxScorePlayersPpa <- R6::R6Class(
  'BoxScorePlayersPpa',
  public = list(
    `player` = NULL,
    `team` = NULL,
    `position` = NULL,
    `average` = NULL,
    `cumulative` = NULL,
    initialize = function(`player`, `team`, `position`, `average`, `cumulative`){
      if (!missing(`player`)) {
        stopifnot(is.character(`player`), length(`player`) == 1)
        self$`player` <- `player`
      }
      if (!missing(`team`)) {
        stopifnot(is.character(`team`), length(`team`) == 1)
        self$`team` <- `team`
      }
      if (!missing(`position`)) {
        stopifnot(is.character(`position`), length(`position`) == 1)
        self$`position` <- `position`
      }
      if (!missing(`average`)) {
        stopifnot(R6::is.R6(`average`))
        self$`average` <- `average`
      }
      if (!missing(`cumulative`)) {
        stopifnot(R6::is.R6(`cumulative`))
        self$`cumulative` <- `cumulative`
      }
    },
    toJSON = function() {
      BoxScorePlayersPpaObject <- list()
      if (!is.null(self$`player`)) {
        BoxScorePlayersPpaObject[['player']] <- self$`player`
      }
      if (!is.null(self$`team`)) {
        BoxScorePlayersPpaObject[['team']] <- self$`team`
      }
      if (!is.null(self$`position`)) {
        BoxScorePlayersPpaObject[['position']] <- self$`position`
      }
      if (!is.null(self$`average`)) {
        BoxScorePlayersPpaObject[['average']] <- self$`average`$toJSON()
      }
      if (!is.null(self$`cumulative`)) {
        BoxScorePlayersPpaObject[['cumulative']] <- self$`cumulative`$toJSON()
      }

      BoxScorePlayersPpaObject
    },
    fromJSON = function(BoxScorePlayersPpaJson) {
      BoxScorePlayersPpaObject <- jsonlite::fromJSON(BoxScorePlayersPpaJson)
      if (!is.null(BoxScorePlayersPpaObject$`player`)) {
        self$`player` <- BoxScorePlayersPpaObject$`player`
      }
      if (!is.null(BoxScorePlayersPpaObject$`team`)) {
        self$`team` <- BoxScorePlayersPpaObject$`team`
      }
      if (!is.null(BoxScorePlayersPpaObject$`position`)) {
        self$`position` <- BoxScorePlayersPpaObject$`position`
      }
      if (!is.null(BoxScorePlayersPpaObject$`average`)) {
        averageObject <- BoxScorePlayersAverage$new()
        averageObject$fromJSON(jsonlite::toJSON(BoxScorePlayersPpaObject$average, auto_unbox = TRUE))
        self$`average` <- averageObject
      }
      if (!is.null(BoxScorePlayersPpaObject$`cumulative`)) {
        cumulativeObject <- BoxScorePlayersAverage$new()
        cumulativeObject$fromJSON(jsonlite::toJSON(BoxScorePlayersPpaObject$cumulative, auto_unbox = TRUE))
        self$`cumulative` <- cumulativeObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "player": %s,
           "team": %s,
           "position": %s,
           "average": %s,
           "cumulative": %s
        }',
        self$`player`,
        self$`team`,
        self$`position`,
        self$`average`$toJSON(),
        self$`cumulative`$toJSON()
      )
    },
    fromJSONString = function(BoxScorePlayersPpaJson) {
      BoxScorePlayersPpaObject <- jsonlite::fromJSON(BoxScorePlayersPpaJson)
      self$`player` <- BoxScorePlayersPpaObject$`player`
      self$`team` <- BoxScorePlayersPpaObject$`team`
      self$`position` <- BoxScorePlayersPpaObject$`position`
      BoxScorePlayersAverageObject <- BoxScorePlayersAverage$new()
      self$`average` <- BoxScorePlayersAverageObject$fromJSON(jsonlite::toJSON(BoxScorePlayersPpaObject$average, auto_unbox = TRUE))
      BoxScorePlayersAverageObject <- BoxScorePlayersAverage$new()
      self$`cumulative` <- BoxScorePlayersAverageObject$fromJSON(jsonlite::toJSON(BoxScorePlayersPpaObject$cumulative, auto_unbox = TRUE))
    }
  )
)
