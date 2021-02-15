# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PlayerSeasonPPA Class
#'
#' @field season 
#' @field id 
#' @field name 
#' @field position 
#' @field team 
#' @field conference 
#' @field averagePPA 
#' @field totalPPA 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlayerSeasonPPA <- R6::R6Class(
  'PlayerSeasonPPA',
  public = list(
    `season` = NULL,
    `id` = NULL,
    `name` = NULL,
    `position` = NULL,
    `team` = NULL,
    `conference` = NULL,
    `averagePPA` = NULL,
    `totalPPA` = NULL,
    initialize = function(`season`, `id`, `name`, `position`, `team`, `conference`, `averagePPA`, `totalPPA`){
      if (!missing(`season`)) {
        stopifnot(is.numeric(`season`), length(`season`) == 1)
        self$`season` <- `season`
      }
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`position`)) {
        stopifnot(is.character(`position`), length(`position`) == 1)
        self$`position` <- `position`
      }
      if (!missing(`team`)) {
        stopifnot(is.character(`team`), length(`team`) == 1)
        self$`team` <- `team`
      }
      if (!missing(`conference`)) {
        stopifnot(is.character(`conference`), length(`conference`) == 1)
        self$`conference` <- `conference`
      }
      if (!missing(`averagePPA`)) {
        stopifnot(R6::is.R6(`averagePPA`))
        self$`averagePPA` <- `averagePPA`
      }
      if (!missing(`totalPPA`)) {
        stopifnot(R6::is.R6(`totalPPA`))
        self$`totalPPA` <- `totalPPA`
      }
    },
    toJSON = function() {
      PlayerSeasonPPAObject <- list()
      if (!is.null(self$`season`)) {
        PlayerSeasonPPAObject[['season']] <- self$`season`
      }
      if (!is.null(self$`id`)) {
        PlayerSeasonPPAObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        PlayerSeasonPPAObject[['name']] <- self$`name`
      }
      if (!is.null(self$`position`)) {
        PlayerSeasonPPAObject[['position']] <- self$`position`
      }
      if (!is.null(self$`team`)) {
        PlayerSeasonPPAObject[['team']] <- self$`team`
      }
      if (!is.null(self$`conference`)) {
        PlayerSeasonPPAObject[['conference']] <- self$`conference`
      }
      if (!is.null(self$`averagePPA`)) {
        PlayerSeasonPPAObject[['averagePPA']] <- self$`averagePPA`$toJSON()
      }
      if (!is.null(self$`totalPPA`)) {
        PlayerSeasonPPAObject[['totalPPA']] <- self$`totalPPA`$toJSON()
      }

      PlayerSeasonPPAObject
    },
    fromJSON = function(PlayerSeasonPPAJson) {
      PlayerSeasonPPAObject <- jsonlite::fromJSON(PlayerSeasonPPAJson)
      if (!is.null(PlayerSeasonPPAObject$`season`)) {
        self$`season` <- PlayerSeasonPPAObject$`season`
      }
      if (!is.null(PlayerSeasonPPAObject$`id`)) {
        self$`id` <- PlayerSeasonPPAObject$`id`
      }
      if (!is.null(PlayerSeasonPPAObject$`name`)) {
        self$`name` <- PlayerSeasonPPAObject$`name`
      }
      if (!is.null(PlayerSeasonPPAObject$`position`)) {
        self$`position` <- PlayerSeasonPPAObject$`position`
      }
      if (!is.null(PlayerSeasonPPAObject$`team`)) {
        self$`team` <- PlayerSeasonPPAObject$`team`
      }
      if (!is.null(PlayerSeasonPPAObject$`conference`)) {
        self$`conference` <- PlayerSeasonPPAObject$`conference`
      }
      if (!is.null(PlayerSeasonPPAObject$`averagePPA`)) {
        averagePPAObject <- PlayerSeasonPPAAveragePPA$new()
        averagePPAObject$fromJSON(jsonlite::toJSON(PlayerSeasonPPAObject$averagePPA, auto_unbox = TRUE))
        self$`averagePPA` <- averagePPAObject
      }
      if (!is.null(PlayerSeasonPPAObject$`totalPPA`)) {
        totalPPAObject <- PlayerSeasonPPAAveragePPA$new()
        totalPPAObject$fromJSON(jsonlite::toJSON(PlayerSeasonPPAObject$totalPPA, auto_unbox = TRUE))
        self$`totalPPA` <- totalPPAObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "season": %d,
           "id": %d,
           "name": %s,
           "position": %s,
           "team": %s,
           "conference": %s,
           "averagePPA": %s,
           "totalPPA": %s
        }',
        self$`season`,
        self$`id`,
        self$`name`,
        self$`position`,
        self$`team`,
        self$`conference`,
        self$`averagePPA`$toJSON(),
        self$`totalPPA`$toJSON()
      )
    },
    fromJSONString = function(PlayerSeasonPPAJson) {
      PlayerSeasonPPAObject <- jsonlite::fromJSON(PlayerSeasonPPAJson)
      self$`season` <- PlayerSeasonPPAObject$`season`
      self$`id` <- PlayerSeasonPPAObject$`id`
      self$`name` <- PlayerSeasonPPAObject$`name`
      self$`position` <- PlayerSeasonPPAObject$`position`
      self$`team` <- PlayerSeasonPPAObject$`team`
      self$`conference` <- PlayerSeasonPPAObject$`conference`
      PlayerSeasonPPAAveragePPAObject <- PlayerSeasonPPAAveragePPA$new()
      self$`averagePPA` <- PlayerSeasonPPAAveragePPAObject$fromJSON(jsonlite::toJSON(PlayerSeasonPPAObject$averagePPA, auto_unbox = TRUE))
      PlayerSeasonPPAAveragePPAObject <- PlayerSeasonPPAAveragePPA$new()
      self$`totalPPA` <- PlayerSeasonPPAAveragePPAObject$fromJSON(jsonlite::toJSON(PlayerSeasonPPAObject$totalPPA, auto_unbox = TRUE))
    }
  )
)
