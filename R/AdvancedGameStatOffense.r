# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AdvancedGameStatOffense Class
#'
#' @field plays 
#' @field drives 
#' @field ppa 
#' @field totalPPA 
#' @field successRate 
#' @field explosiveness 
#' @field powerSuccess 
#' @field stuffRate 
#' @field lineYards 
#' @field lineYardsTotal 
#' @field secondLevelYards 
#' @field secondLevelYardsTotal 
#' @field openFieldYards 
#' @field openFieldYardsTotal 
#' @field standardDowns 
#' @field passingDowns 
#' @field rushingPlays 
#' @field passingPlays 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdvancedGameStatOffense <- R6::R6Class(
  'AdvancedGameStatOffense',
  public = list(
    `plays` = NULL,
    `drives` = NULL,
    `ppa` = NULL,
    `totalPPA` = NULL,
    `successRate` = NULL,
    `explosiveness` = NULL,
    `powerSuccess` = NULL,
    `stuffRate` = NULL,
    `lineYards` = NULL,
    `lineYardsTotal` = NULL,
    `secondLevelYards` = NULL,
    `secondLevelYardsTotal` = NULL,
    `openFieldYards` = NULL,
    `openFieldYardsTotal` = NULL,
    `standardDowns` = NULL,
    `passingDowns` = NULL,
    `rushingPlays` = NULL,
    `passingPlays` = NULL,
    initialize = function(`plays`, `drives`, `ppa`, `totalPPA`, `successRate`, `explosiveness`, `powerSuccess`, `stuffRate`, `lineYards`, `lineYardsTotal`, `secondLevelYards`, `secondLevelYardsTotal`, `openFieldYards`, `openFieldYardsTotal`, `standardDowns`, `passingDowns`, `rushingPlays`, `passingPlays`){
      if (!missing(`plays`)) {
        stopifnot(is.numeric(`plays`), length(`plays`) == 1)
        self$`plays` <- `plays`
      }
      if (!missing(`drives`)) {
        stopifnot(is.numeric(`drives`), length(`drives`) == 1)
        self$`drives` <- `drives`
      }
      if (!missing(`ppa`)) {
        self$`ppa` <- `ppa`
      }
      if (!missing(`totalPPA`)) {
        self$`totalPPA` <- `totalPPA`
      }
      if (!missing(`successRate`)) {
        self$`successRate` <- `successRate`
      }
      if (!missing(`explosiveness`)) {
        self$`explosiveness` <- `explosiveness`
      }
      if (!missing(`powerSuccess`)) {
        self$`powerSuccess` <- `powerSuccess`
      }
      if (!missing(`stuffRate`)) {
        self$`stuffRate` <- `stuffRate`
      }
      if (!missing(`lineYards`)) {
        self$`lineYards` <- `lineYards`
      }
      if (!missing(`lineYardsTotal`)) {
        self$`lineYardsTotal` <- `lineYardsTotal`
      }
      if (!missing(`secondLevelYards`)) {
        self$`secondLevelYards` <- `secondLevelYards`
      }
      if (!missing(`secondLevelYardsTotal`)) {
        stopifnot(is.numeric(`secondLevelYardsTotal`), length(`secondLevelYardsTotal`) == 1)
        self$`secondLevelYardsTotal` <- `secondLevelYardsTotal`
      }
      if (!missing(`openFieldYards`)) {
        self$`openFieldYards` <- `openFieldYards`
      }
      if (!missing(`openFieldYardsTotal`)) {
        stopifnot(is.numeric(`openFieldYardsTotal`), length(`openFieldYardsTotal`) == 1)
        self$`openFieldYardsTotal` <- `openFieldYardsTotal`
      }
      if (!missing(`standardDowns`)) {
        stopifnot(R6::is.R6(`standardDowns`))
        self$`standardDowns` <- `standardDowns`
      }
      if (!missing(`passingDowns`)) {
        stopifnot(R6::is.R6(`passingDowns`))
        self$`passingDowns` <- `passingDowns`
      }
      if (!missing(`rushingPlays`)) {
        stopifnot(R6::is.R6(`rushingPlays`))
        self$`rushingPlays` <- `rushingPlays`
      }
      if (!missing(`passingPlays`)) {
        stopifnot(R6::is.R6(`passingPlays`))
        self$`passingPlays` <- `passingPlays`
      }
    },
    toJSON = function() {
      AdvancedGameStatOffenseObject <- list()
      if (!is.null(self$`plays`)) {
        AdvancedGameStatOffenseObject[['plays']] <- self$`plays`
      }
      if (!is.null(self$`drives`)) {
        AdvancedGameStatOffenseObject[['drives']] <- self$`drives`
      }
      if (!is.null(self$`ppa`)) {
        AdvancedGameStatOffenseObject[['ppa']] <- self$`ppa`
      }
      if (!is.null(self$`totalPPA`)) {
        AdvancedGameStatOffenseObject[['totalPPA']] <- self$`totalPPA`
      }
      if (!is.null(self$`successRate`)) {
        AdvancedGameStatOffenseObject[['successRate']] <- self$`successRate`
      }
      if (!is.null(self$`explosiveness`)) {
        AdvancedGameStatOffenseObject[['explosiveness']] <- self$`explosiveness`
      }
      if (!is.null(self$`powerSuccess`)) {
        AdvancedGameStatOffenseObject[['powerSuccess']] <- self$`powerSuccess`
      }
      if (!is.null(self$`stuffRate`)) {
        AdvancedGameStatOffenseObject[['stuffRate']] <- self$`stuffRate`
      }
      if (!is.null(self$`lineYards`)) {
        AdvancedGameStatOffenseObject[['lineYards']] <- self$`lineYards`
      }
      if (!is.null(self$`lineYardsTotal`)) {
        AdvancedGameStatOffenseObject[['lineYardsTotal']] <- self$`lineYardsTotal`
      }
      if (!is.null(self$`secondLevelYards`)) {
        AdvancedGameStatOffenseObject[['secondLevelYards']] <- self$`secondLevelYards`
      }
      if (!is.null(self$`secondLevelYardsTotal`)) {
        AdvancedGameStatOffenseObject[['secondLevelYardsTotal']] <- self$`secondLevelYardsTotal`
      }
      if (!is.null(self$`openFieldYards`)) {
        AdvancedGameStatOffenseObject[['openFieldYards']] <- self$`openFieldYards`
      }
      if (!is.null(self$`openFieldYardsTotal`)) {
        AdvancedGameStatOffenseObject[['openFieldYardsTotal']] <- self$`openFieldYardsTotal`
      }
      if (!is.null(self$`standardDowns`)) {
        AdvancedGameStatOffenseObject[['standardDowns']] <- self$`standardDowns`$toJSON()
      }
      if (!is.null(self$`passingDowns`)) {
        AdvancedGameStatOffenseObject[['passingDowns']] <- self$`passingDowns`$toJSON()
      }
      if (!is.null(self$`rushingPlays`)) {
        AdvancedGameStatOffenseObject[['rushingPlays']] <- self$`rushingPlays`$toJSON()
      }
      if (!is.null(self$`passingPlays`)) {
        AdvancedGameStatOffenseObject[['passingPlays']] <- self$`passingPlays`$toJSON()
      }

      AdvancedGameStatOffenseObject
    },
    fromJSON = function(AdvancedGameStatOffenseJson) {
      AdvancedGameStatOffenseObject <- jsonlite::fromJSON(AdvancedGameStatOffenseJson)
      if (!is.null(AdvancedGameStatOffenseObject$`plays`)) {
        self$`plays` <- AdvancedGameStatOffenseObject$`plays`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`drives`)) {
        self$`drives` <- AdvancedGameStatOffenseObject$`drives`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`ppa`)) {
        self$`ppa` <- AdvancedGameStatOffenseObject$`ppa`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`totalPPA`)) {
        self$`totalPPA` <- AdvancedGameStatOffenseObject$`totalPPA`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`successRate`)) {
        self$`successRate` <- AdvancedGameStatOffenseObject$`successRate`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`explosiveness`)) {
        self$`explosiveness` <- AdvancedGameStatOffenseObject$`explosiveness`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`powerSuccess`)) {
        self$`powerSuccess` <- AdvancedGameStatOffenseObject$`powerSuccess`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`stuffRate`)) {
        self$`stuffRate` <- AdvancedGameStatOffenseObject$`stuffRate`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`lineYards`)) {
        self$`lineYards` <- AdvancedGameStatOffenseObject$`lineYards`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`lineYardsTotal`)) {
        self$`lineYardsTotal` <- AdvancedGameStatOffenseObject$`lineYardsTotal`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`secondLevelYards`)) {
        self$`secondLevelYards` <- AdvancedGameStatOffenseObject$`secondLevelYards`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`secondLevelYardsTotal`)) {
        self$`secondLevelYardsTotal` <- AdvancedGameStatOffenseObject$`secondLevelYardsTotal`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`openFieldYards`)) {
        self$`openFieldYards` <- AdvancedGameStatOffenseObject$`openFieldYards`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`openFieldYardsTotal`)) {
        self$`openFieldYardsTotal` <- AdvancedGameStatOffenseObject$`openFieldYardsTotal`
      }
      if (!is.null(AdvancedGameStatOffenseObject$`standardDowns`)) {
        standardDownsObject <- AdvancedGameStatOffenseStandardDowns$new()
        standardDownsObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$standardDowns, auto_unbox = TRUE))
        self$`standardDowns` <- standardDownsObject
      }
      if (!is.null(AdvancedGameStatOffenseObject$`passingDowns`)) {
        passingDownsObject <- AdvancedGameStatOffenseStandardDowns$new()
        passingDownsObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$passingDowns, auto_unbox = TRUE))
        self$`passingDowns` <- passingDownsObject
      }
      if (!is.null(AdvancedGameStatOffenseObject$`rushingPlays`)) {
        rushingPlaysObject <- AdvancedGameStatOffenseRushingPlays$new()
        rushingPlaysObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$rushingPlays, auto_unbox = TRUE))
        self$`rushingPlays` <- rushingPlaysObject
      }
      if (!is.null(AdvancedGameStatOffenseObject$`passingPlays`)) {
        passingPlaysObject <- AdvancedGameStatOffenseRushingPlays$new()
        passingPlaysObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$passingPlays, auto_unbox = TRUE))
        self$`passingPlays` <- passingPlaysObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "plays": %d,
           "drives": %d,
           "ppa": %s,
           "totalPPA": %s,
           "successRate": %s,
           "explosiveness": %s,
           "powerSuccess": %s,
           "stuffRate": %s,
           "lineYards": %s,
           "lineYardsTotal": %s,
           "secondLevelYards": %s,
           "secondLevelYardsTotal": %d,
           "openFieldYards": %s,
           "openFieldYardsTotal": %d,
           "standardDowns": %s,
           "passingDowns": %s,
           "rushingPlays": %s,
           "passingPlays": %s
        }',
        self$`plays`,
        self$`drives`,
        self$`ppa`,
        self$`totalPPA`,
        self$`successRate`,
        self$`explosiveness`,
        self$`powerSuccess`,
        self$`stuffRate`,
        self$`lineYards`,
        self$`lineYardsTotal`,
        self$`secondLevelYards`,
        self$`secondLevelYardsTotal`,
        self$`openFieldYards`,
        self$`openFieldYardsTotal`,
        self$`standardDowns`$toJSON(),
        self$`passingDowns`$toJSON(),
        self$`rushingPlays`$toJSON(),
        self$`passingPlays`$toJSON()
      )
    },
    fromJSONString = function(AdvancedGameStatOffenseJson) {
      AdvancedGameStatOffenseObject <- jsonlite::fromJSON(AdvancedGameStatOffenseJson)
      self$`plays` <- AdvancedGameStatOffenseObject$`plays`
      self$`drives` <- AdvancedGameStatOffenseObject$`drives`
      self$`ppa` <- AdvancedGameStatOffenseObject$`ppa`
      self$`totalPPA` <- AdvancedGameStatOffenseObject$`totalPPA`
      self$`successRate` <- AdvancedGameStatOffenseObject$`successRate`
      self$`explosiveness` <- AdvancedGameStatOffenseObject$`explosiveness`
      self$`powerSuccess` <- AdvancedGameStatOffenseObject$`powerSuccess`
      self$`stuffRate` <- AdvancedGameStatOffenseObject$`stuffRate`
      self$`lineYards` <- AdvancedGameStatOffenseObject$`lineYards`
      self$`lineYardsTotal` <- AdvancedGameStatOffenseObject$`lineYardsTotal`
      self$`secondLevelYards` <- AdvancedGameStatOffenseObject$`secondLevelYards`
      self$`secondLevelYardsTotal` <- AdvancedGameStatOffenseObject$`secondLevelYardsTotal`
      self$`openFieldYards` <- AdvancedGameStatOffenseObject$`openFieldYards`
      self$`openFieldYardsTotal` <- AdvancedGameStatOffenseObject$`openFieldYardsTotal`
      AdvancedGameStatOffenseStandardDownsObject <- AdvancedGameStatOffenseStandardDowns$new()
      self$`standardDowns` <- AdvancedGameStatOffenseStandardDownsObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$standardDowns, auto_unbox = TRUE))
      AdvancedGameStatOffenseStandardDownsObject <- AdvancedGameStatOffenseStandardDowns$new()
      self$`passingDowns` <- AdvancedGameStatOffenseStandardDownsObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$passingDowns, auto_unbox = TRUE))
      AdvancedGameStatOffenseRushingPlaysObject <- AdvancedGameStatOffenseRushingPlays$new()
      self$`rushingPlays` <- AdvancedGameStatOffenseRushingPlaysObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$rushingPlays, auto_unbox = TRUE))
      AdvancedGameStatOffenseRushingPlaysObject <- AdvancedGameStatOffenseRushingPlays$new()
      self$`passingPlays` <- AdvancedGameStatOffenseRushingPlaysObject$fromJSON(jsonlite::toJSON(AdvancedGameStatOffenseObject$passingPlays, auto_unbox = TRUE))
    }
  )
)