# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PlayStat Class
#'
#' @field gameId 
#' @field season 
#' @field week 
#' @field team 
#' @field conference 
#' @field opponent 
#' @field teamScore 
#' @field opponentScore 
#' @field driveId 
#' @field playId 
#' @field period 
#' @field clock 
#' @field yardsToGoal 
#' @field down 
#' @field distance 
#' @field athleteId 
#' @field athleteName 
#' @field statType 
#' @field stat 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlayStat <- R6::R6Class(
  'PlayStat',
  public = list(
    `gameId` = NULL,
    `season` = NULL,
    `week` = NULL,
    `team` = NULL,
    `conference` = NULL,
    `opponent` = NULL,
    `teamScore` = NULL,
    `opponentScore` = NULL,
    `driveId` = NULL,
    `playId` = NULL,
    `period` = NULL,
    `clock` = NULL,
    `yardsToGoal` = NULL,
    `down` = NULL,
    `distance` = NULL,
    `athleteId` = NULL,
    `athleteName` = NULL,
    `statType` = NULL,
    `stat` = NULL,
    initialize = function(`gameId`, `season`, `week`, `team`, `conference`, `opponent`, `teamScore`, `opponentScore`, `driveId`, `playId`, `period`, `clock`, `yardsToGoal`, `down`, `distance`, `athleteId`, `athleteName`, `statType`, `stat`){
      if (!missing(`gameId`)) {
        stopifnot(is.numeric(`gameId`), length(`gameId`) == 1)
        self$`gameId` <- `gameId`
      }
      if (!missing(`season`)) {
        stopifnot(is.numeric(`season`), length(`season`) == 1)
        self$`season` <- `season`
      }
      if (!missing(`week`)) {
        stopifnot(is.numeric(`week`), length(`week`) == 1)
        self$`week` <- `week`
      }
      if (!missing(`team`)) {
        stopifnot(is.character(`team`), length(`team`) == 1)
        self$`team` <- `team`
      }
      if (!missing(`conference`)) {
        stopifnot(is.character(`conference`), length(`conference`) == 1)
        self$`conference` <- `conference`
      }
      if (!missing(`opponent`)) {
        stopifnot(is.character(`opponent`), length(`opponent`) == 1)
        self$`opponent` <- `opponent`
      }
      if (!missing(`teamScore`)) {
        stopifnot(is.numeric(`teamScore`), length(`teamScore`) == 1)
        self$`teamScore` <- `teamScore`
      }
      if (!missing(`opponentScore`)) {
        stopifnot(is.numeric(`opponentScore`), length(`opponentScore`) == 1)
        self$`opponentScore` <- `opponentScore`
      }
      if (!missing(`driveId`)) {
        stopifnot(is.numeric(`driveId`), length(`driveId`) == 1)
        self$`driveId` <- `driveId`
      }
      if (!missing(`playId`)) {
        stopifnot(is.numeric(`playId`), length(`playId`) == 1)
        self$`playId` <- `playId`
      }
      if (!missing(`period`)) {
        stopifnot(is.numeric(`period`), length(`period`) == 1)
        self$`period` <- `period`
      }
      if (!missing(`clock`)) {
        stopifnot(R6::is.R6(`clock`))
        self$`clock` <- `clock`
      }
      if (!missing(`yardsToGoal`)) {
        stopifnot(is.numeric(`yardsToGoal`), length(`yardsToGoal`) == 1)
        self$`yardsToGoal` <- `yardsToGoal`
      }
      if (!missing(`down`)) {
        stopifnot(is.numeric(`down`), length(`down`) == 1)
        self$`down` <- `down`
      }
      if (!missing(`distance`)) {
        stopifnot(is.numeric(`distance`), length(`distance`) == 1)
        self$`distance` <- `distance`
      }
      if (!missing(`athleteId`)) {
        stopifnot(is.numeric(`athleteId`), length(`athleteId`) == 1)
        self$`athleteId` <- `athleteId`
      }
      if (!missing(`athleteName`)) {
        stopifnot(is.character(`athleteName`), length(`athleteName`) == 1)
        self$`athleteName` <- `athleteName`
      }
      if (!missing(`statType`)) {
        stopifnot(is.character(`statType`), length(`statType`) == 1)
        self$`statType` <- `statType`
      }
      if (!missing(`stat`)) {
        stopifnot(is.numeric(`stat`), length(`stat`) == 1)
        self$`stat` <- `stat`
      }
    },
    toJSON = function() {
      PlayStatObject <- list()
      if (!is.null(self$`gameId`)) {
        PlayStatObject[['gameId']] <- self$`gameId`
      }
      if (!is.null(self$`season`)) {
        PlayStatObject[['season']] <- self$`season`
      }
      if (!is.null(self$`week`)) {
        PlayStatObject[['week']] <- self$`week`
      }
      if (!is.null(self$`team`)) {
        PlayStatObject[['team']] <- self$`team`
      }
      if (!is.null(self$`conference`)) {
        PlayStatObject[['conference']] <- self$`conference`
      }
      if (!is.null(self$`opponent`)) {
        PlayStatObject[['opponent']] <- self$`opponent`
      }
      if (!is.null(self$`teamScore`)) {
        PlayStatObject[['teamScore']] <- self$`teamScore`
      }
      if (!is.null(self$`opponentScore`)) {
        PlayStatObject[['opponentScore']] <- self$`opponentScore`
      }
      if (!is.null(self$`driveId`)) {
        PlayStatObject[['driveId']] <- self$`driveId`
      }
      if (!is.null(self$`playId`)) {
        PlayStatObject[['playId']] <- self$`playId`
      }
      if (!is.null(self$`period`)) {
        PlayStatObject[['period']] <- self$`period`
      }
      if (!is.null(self$`clock`)) {
        PlayStatObject[['clock']] <- self$`clock`$toJSON()
      }
      if (!is.null(self$`yardsToGoal`)) {
        PlayStatObject[['yardsToGoal']] <- self$`yardsToGoal`
      }
      if (!is.null(self$`down`)) {
        PlayStatObject[['down']] <- self$`down`
      }
      if (!is.null(self$`distance`)) {
        PlayStatObject[['distance']] <- self$`distance`
      }
      if (!is.null(self$`athleteId`)) {
        PlayStatObject[['athleteId']] <- self$`athleteId`
      }
      if (!is.null(self$`athleteName`)) {
        PlayStatObject[['athleteName']] <- self$`athleteName`
      }
      if (!is.null(self$`statType`)) {
        PlayStatObject[['statType']] <- self$`statType`
      }
      if (!is.null(self$`stat`)) {
        PlayStatObject[['stat']] <- self$`stat`
      }

      PlayStatObject
    },
    fromJSON = function(PlayStatJson) {
      PlayStatObject <- jsonlite::fromJSON(PlayStatJson)
      if (!is.null(PlayStatObject$`gameId`)) {
        self$`gameId` <- PlayStatObject$`gameId`
      }
      if (!is.null(PlayStatObject$`season`)) {
        self$`season` <- PlayStatObject$`season`
      }
      if (!is.null(PlayStatObject$`week`)) {
        self$`week` <- PlayStatObject$`week`
      }
      if (!is.null(PlayStatObject$`team`)) {
        self$`team` <- PlayStatObject$`team`
      }
      if (!is.null(PlayStatObject$`conference`)) {
        self$`conference` <- PlayStatObject$`conference`
      }
      if (!is.null(PlayStatObject$`opponent`)) {
        self$`opponent` <- PlayStatObject$`opponent`
      }
      if (!is.null(PlayStatObject$`teamScore`)) {
        self$`teamScore` <- PlayStatObject$`teamScore`
      }
      if (!is.null(PlayStatObject$`opponentScore`)) {
        self$`opponentScore` <- PlayStatObject$`opponentScore`
      }
      if (!is.null(PlayStatObject$`driveId`)) {
        self$`driveId` <- PlayStatObject$`driveId`
      }
      if (!is.null(PlayStatObject$`playId`)) {
        self$`playId` <- PlayStatObject$`playId`
      }
      if (!is.null(PlayStatObject$`period`)) {
        self$`period` <- PlayStatObject$`period`
      }
      if (!is.null(PlayStatObject$`clock`)) {
        clockObject <- DriveStartTime$new()
        clockObject$fromJSON(jsonlite::toJSON(PlayStatObject$clock, auto_unbox = TRUE))
        self$`clock` <- clockObject
      }
      if (!is.null(PlayStatObject$`yardsToGoal`)) {
        self$`yardsToGoal` <- PlayStatObject$`yardsToGoal`
      }
      if (!is.null(PlayStatObject$`down`)) {
        self$`down` <- PlayStatObject$`down`
      }
      if (!is.null(PlayStatObject$`distance`)) {
        self$`distance` <- PlayStatObject$`distance`
      }
      if (!is.null(PlayStatObject$`athleteId`)) {
        self$`athleteId` <- PlayStatObject$`athleteId`
      }
      if (!is.null(PlayStatObject$`athleteName`)) {
        self$`athleteName` <- PlayStatObject$`athleteName`
      }
      if (!is.null(PlayStatObject$`statType`)) {
        self$`statType` <- PlayStatObject$`statType`
      }
      if (!is.null(PlayStatObject$`stat`)) {
        self$`stat` <- PlayStatObject$`stat`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "gameId": %d,
           "season": %d,
           "week": %d,
           "team": %s,
           "conference": %s,
           "opponent": %s,
           "teamScore": %d,
           "opponentScore": %d,
           "driveId": %d,
           "playId": %d,
           "period": %d,
           "clock": %s,
           "yardsToGoal": %d,
           "down": %d,
           "distance": %d,
           "athleteId": %d,
           "athleteName": %s,
           "statType": %s,
           "stat": %d
        }',
        self$`gameId`,
        self$`season`,
        self$`week`,
        self$`team`,
        self$`conference`,
        self$`opponent`,
        self$`teamScore`,
        self$`opponentScore`,
        self$`driveId`,
        self$`playId`,
        self$`period`,
        self$`clock`$toJSON(),
        self$`yardsToGoal`,
        self$`down`,
        self$`distance`,
        self$`athleteId`,
        self$`athleteName`,
        self$`statType`,
        self$`stat`
      )
    },
    fromJSONString = function(PlayStatJson) {
      PlayStatObject <- jsonlite::fromJSON(PlayStatJson)
      self$`gameId` <- PlayStatObject$`gameId`
      self$`season` <- PlayStatObject$`season`
      self$`week` <- PlayStatObject$`week`
      self$`team` <- PlayStatObject$`team`
      self$`conference` <- PlayStatObject$`conference`
      self$`opponent` <- PlayStatObject$`opponent`
      self$`teamScore` <- PlayStatObject$`teamScore`
      self$`opponentScore` <- PlayStatObject$`opponentScore`
      self$`driveId` <- PlayStatObject$`driveId`
      self$`playId` <- PlayStatObject$`playId`
      self$`period` <- PlayStatObject$`period`
      DriveStartTimeObject <- DriveStartTime$new()
      self$`clock` <- DriveStartTimeObject$fromJSON(jsonlite::toJSON(PlayStatObject$clock, auto_unbox = TRUE))
      self$`yardsToGoal` <- PlayStatObject$`yardsToGoal`
      self$`down` <- PlayStatObject$`down`
      self$`distance` <- PlayStatObject$`distance`
      self$`athleteId` <- PlayStatObject$`athleteId`
      self$`athleteName` <- PlayStatObject$`athleteName`
      self$`statType` <- PlayStatObject$`statType`
      self$`stat` <- PlayStatObject$`stat`
    }
  )
)