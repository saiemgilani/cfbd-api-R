# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GameLines Class
#'
#' @field id 
#' @field season 
#' @field week 
#' @field seasonType 
#' @field homeTeam 
#' @field homeConference 
#' @field homeScore 
#' @field awayTeam 
#' @field awayConference 
#' @field awayScore 
#' @field lines 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameLines <- R6::R6Class(
  'GameLines',
  public = list(
    `id` = NULL,
    `season` = NULL,
    `week` = NULL,
    `seasonType` = NULL,
    `homeTeam` = NULL,
    `homeConference` = NULL,
    `homeScore` = NULL,
    `awayTeam` = NULL,
    `awayConference` = NULL,
    `awayScore` = NULL,
    `lines` = NULL,
    initialize = function(`id`, `season`, `week`, `seasonType`, `homeTeam`, `homeConference`, `homeScore`, `awayTeam`, `awayConference`, `awayScore`, `lines`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`season`)) {
        stopifnot(is.numeric(`season`), length(`season`) == 1)
        self$`season` <- `season`
      }
      if (!missing(`week`)) {
        stopifnot(is.numeric(`week`), length(`week`) == 1)
        self$`week` <- `week`
      }
      if (!missing(`seasonType`)) {
        stopifnot(is.character(`seasonType`), length(`seasonType`) == 1)
        self$`seasonType` <- `seasonType`
      }
      if (!missing(`homeTeam`)) {
        stopifnot(is.character(`homeTeam`), length(`homeTeam`) == 1)
        self$`homeTeam` <- `homeTeam`
      }
      if (!missing(`homeConference`)) {
        stopifnot(is.character(`homeConference`), length(`homeConference`) == 1)
        self$`homeConference` <- `homeConference`
      }
      if (!missing(`homeScore`)) {
        stopifnot(is.numeric(`homeScore`), length(`homeScore`) == 1)
        self$`homeScore` <- `homeScore`
      }
      if (!missing(`awayTeam`)) {
        stopifnot(is.character(`awayTeam`), length(`awayTeam`) == 1)
        self$`awayTeam` <- `awayTeam`
      }
      if (!missing(`awayConference`)) {
        stopifnot(is.character(`awayConference`), length(`awayConference`) == 1)
        self$`awayConference` <- `awayConference`
      }
      if (!missing(`awayScore`)) {
        stopifnot(is.numeric(`awayScore`), length(`awayScore`) == 1)
        self$`awayScore` <- `awayScore`
      }
      if (!missing(`lines`)) {
        stopifnot(is.list(`lines`), length(`lines`) != 0)
        lapply(`lines`, function(x) stopifnot(R6::is.R6(x)))
        self$`lines` <- `lines`
      }
    },
    toJSON = function() {
      GameLinesObject <- list()
      if (!is.null(self$`id`)) {
        GameLinesObject[['id']] <- self$`id`
      }
      if (!is.null(self$`season`)) {
        GameLinesObject[['season']] <- self$`season`
      }
      if (!is.null(self$`week`)) {
        GameLinesObject[['week']] <- self$`week`
      }
      if (!is.null(self$`seasonType`)) {
        GameLinesObject[['seasonType']] <- self$`seasonType`
      }
      if (!is.null(self$`homeTeam`)) {
        GameLinesObject[['homeTeam']] <- self$`homeTeam`
      }
      if (!is.null(self$`homeConference`)) {
        GameLinesObject[['homeConference']] <- self$`homeConference`
      }
      if (!is.null(self$`homeScore`)) {
        GameLinesObject[['homeScore']] <- self$`homeScore`
      }
      if (!is.null(self$`awayTeam`)) {
        GameLinesObject[['awayTeam']] <- self$`awayTeam`
      }
      if (!is.null(self$`awayConference`)) {
        GameLinesObject[['awayConference']] <- self$`awayConference`
      }
      if (!is.null(self$`awayScore`)) {
        GameLinesObject[['awayScore']] <- self$`awayScore`
      }
      if (!is.null(self$`lines`)) {
        GameLinesObject[['lines']] <- lapply(self$`lines`, function(x) x$toJSON())
      }

      GameLinesObject
    },
    fromJSON = function(GameLinesJson) {
      GameLinesObject <- jsonlite::fromJSON(GameLinesJson)
      if (!is.null(GameLinesObject$`id`)) {
        self$`id` <- GameLinesObject$`id`
      }
      if (!is.null(GameLinesObject$`season`)) {
        self$`season` <- GameLinesObject$`season`
      }
      if (!is.null(GameLinesObject$`week`)) {
        self$`week` <- GameLinesObject$`week`
      }
      if (!is.null(GameLinesObject$`seasonType`)) {
        self$`seasonType` <- GameLinesObject$`seasonType`
      }
      if (!is.null(GameLinesObject$`homeTeam`)) {
        self$`homeTeam` <- GameLinesObject$`homeTeam`
      }
      if (!is.null(GameLinesObject$`homeConference`)) {
        self$`homeConference` <- GameLinesObject$`homeConference`
      }
      if (!is.null(GameLinesObject$`homeScore`)) {
        self$`homeScore` <- GameLinesObject$`homeScore`
      }
      if (!is.null(GameLinesObject$`awayTeam`)) {
        self$`awayTeam` <- GameLinesObject$`awayTeam`
      }
      if (!is.null(GameLinesObject$`awayConference`)) {
        self$`awayConference` <- GameLinesObject$`awayConference`
      }
      if (!is.null(GameLinesObject$`awayScore`)) {
        self$`awayScore` <- GameLinesObject$`awayScore`
      }
      if (!is.null(GameLinesObject$`lines`)) {
        self$`lines` <- lapply(GameLinesObject$`lines`, function(x) {
          linesObject <- GameLinesLines$new()
          linesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          linesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "season": %d,
           "week": %d,
           "seasonType": %s,
           "homeTeam": %s,
           "homeConference": %s,
           "homeScore": %d,
           "awayTeam": %s,
           "awayConference": %s,
           "awayScore": %d,
           "lines": [%s]
        }',
        self$`id`,
        self$`season`,
        self$`week`,
        self$`seasonType`,
        self$`homeTeam`,
        self$`homeConference`,
        self$`homeScore`,
        self$`awayTeam`,
        self$`awayConference`,
        self$`awayScore`,
        lapply(self$`lines`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(GameLinesJson) {
      GameLinesObject <- jsonlite::fromJSON(GameLinesJson)
      self$`id` <- GameLinesObject$`id`
      self$`season` <- GameLinesObject$`season`
      self$`week` <- GameLinesObject$`week`
      self$`seasonType` <- GameLinesObject$`seasonType`
      self$`homeTeam` <- GameLinesObject$`homeTeam`
      self$`homeConference` <- GameLinesObject$`homeConference`
      self$`homeScore` <- GameLinesObject$`homeScore`
      self$`awayTeam` <- GameLinesObject$`awayTeam`
      self$`awayConference` <- GameLinesObject$`awayConference`
      self$`awayScore` <- GameLinesObject$`awayScore`
      self$`lines` <- lapply(GameLinesObject$`lines`, function(x) GameLinesLines$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
