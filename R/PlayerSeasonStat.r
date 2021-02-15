# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PlayerSeasonStat Class
#'
#' @field season 
#' @field playerId 
#' @field player 
#' @field team 
#' @field conference 
#' @field category 
#' @field statType 
#' @field stat 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlayerSeasonStat <- R6::R6Class(
  'PlayerSeasonStat',
  public = list(
    `season` = NULL,
    `playerId` = NULL,
    `player` = NULL,
    `team` = NULL,
    `conference` = NULL,
    `category` = NULL,
    `statType` = NULL,
    `stat` = NULL,
    initialize = function(`season`, `playerId`, `player`, `team`, `conference`, `category`, `statType`, `stat`){
      if (!missing(`season`)) {
        stopifnot(is.numeric(`season`), length(`season`) == 1)
        self$`season` <- `season`
      }
      if (!missing(`playerId`)) {
        stopifnot(is.numeric(`playerId`), length(`playerId`) == 1)
        self$`playerId` <- `playerId`
      }
      if (!missing(`player`)) {
        stopifnot(is.character(`player`), length(`player`) == 1)
        self$`player` <- `player`
      }
      if (!missing(`team`)) {
        stopifnot(is.character(`team`), length(`team`) == 1)
        self$`team` <- `team`
      }
      if (!missing(`conference`)) {
        stopifnot(is.character(`conference`), length(`conference`) == 1)
        self$`conference` <- `conference`
      }
      if (!missing(`category`)) {
        stopifnot(is.character(`category`), length(`category`) == 1)
        self$`category` <- `category`
      }
      if (!missing(`statType`)) {
        stopifnot(is.character(`statType`), length(`statType`) == 1)
        self$`statType` <- `statType`
      }
      if (!missing(`stat`)) {
        self$`stat` <- `stat`
      }
    },
    toJSON = function() {
      PlayerSeasonStatObject <- list()
      if (!is.null(self$`season`)) {
        PlayerSeasonStatObject[['season']] <- self$`season`
      }
      if (!is.null(self$`playerId`)) {
        PlayerSeasonStatObject[['playerId']] <- self$`playerId`
      }
      if (!is.null(self$`player`)) {
        PlayerSeasonStatObject[['player']] <- self$`player`
      }
      if (!is.null(self$`team`)) {
        PlayerSeasonStatObject[['team']] <- self$`team`
      }
      if (!is.null(self$`conference`)) {
        PlayerSeasonStatObject[['conference']] <- self$`conference`
      }
      if (!is.null(self$`category`)) {
        PlayerSeasonStatObject[['category']] <- self$`category`
      }
      if (!is.null(self$`statType`)) {
        PlayerSeasonStatObject[['statType']] <- self$`statType`
      }
      if (!is.null(self$`stat`)) {
        PlayerSeasonStatObject[['stat']] <- self$`stat`
      }

      PlayerSeasonStatObject
    },
    fromJSON = function(PlayerSeasonStatJson) {
      PlayerSeasonStatObject <- jsonlite::fromJSON(PlayerSeasonStatJson)
      if (!is.null(PlayerSeasonStatObject$`season`)) {
        self$`season` <- PlayerSeasonStatObject$`season`
      }
      if (!is.null(PlayerSeasonStatObject$`playerId`)) {
        self$`playerId` <- PlayerSeasonStatObject$`playerId`
      }
      if (!is.null(PlayerSeasonStatObject$`player`)) {
        self$`player` <- PlayerSeasonStatObject$`player`
      }
      if (!is.null(PlayerSeasonStatObject$`team`)) {
        self$`team` <- PlayerSeasonStatObject$`team`
      }
      if (!is.null(PlayerSeasonStatObject$`conference`)) {
        self$`conference` <- PlayerSeasonStatObject$`conference`
      }
      if (!is.null(PlayerSeasonStatObject$`category`)) {
        self$`category` <- PlayerSeasonStatObject$`category`
      }
      if (!is.null(PlayerSeasonStatObject$`statType`)) {
        self$`statType` <- PlayerSeasonStatObject$`statType`
      }
      if (!is.null(PlayerSeasonStatObject$`stat`)) {
        self$`stat` <- PlayerSeasonStatObject$`stat`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "season": %d,
           "playerId": %d,
           "player": %s,
           "team": %s,
           "conference": %s,
           "category": %s,
           "statType": %s,
           "stat": %s
        }',
        self$`season`,
        self$`playerId`,
        self$`player`,
        self$`team`,
        self$`conference`,
        self$`category`,
        self$`statType`,
        self$`stat`
      )
    },
    fromJSONString = function(PlayerSeasonStatJson) {
      PlayerSeasonStatObject <- jsonlite::fromJSON(PlayerSeasonStatJson)
      self$`season` <- PlayerSeasonStatObject$`season`
      self$`playerId` <- PlayerSeasonStatObject$`playerId`
      self$`player` <- PlayerSeasonStatObject$`player`
      self$`team` <- PlayerSeasonStatObject$`team`
      self$`conference` <- PlayerSeasonStatObject$`conference`
      self$`category` <- PlayerSeasonStatObject$`category`
      self$`statType` <- PlayerSeasonStatObject$`statType`
      self$`stat` <- PlayerSeasonStatObject$`stat`
    }
  )
)