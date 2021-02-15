# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TeamPPA Class
#'
#' @field season 
#' @field team 
#' @field conference 
#' @field offense 
#' @field defense 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamPPA <- R6::R6Class(
  'TeamPPA',
  public = list(
    `season` = NULL,
    `team` = NULL,
    `conference` = NULL,
    `offense` = NULL,
    `defense` = NULL,
    initialize = function(`season`, `team`, `conference`, `offense`, `defense`){
      if (!missing(`season`)) {
        stopifnot(is.numeric(`season`), length(`season`) == 1)
        self$`season` <- `season`
      }
      if (!missing(`team`)) {
        stopifnot(is.character(`team`), length(`team`) == 1)
        self$`team` <- `team`
      }
      if (!missing(`conference`)) {
        stopifnot(is.character(`conference`), length(`conference`) == 1)
        self$`conference` <- `conference`
      }
      if (!missing(`offense`)) {
        stopifnot(R6::is.R6(`offense`))
        self$`offense` <- `offense`
      }
      if (!missing(`defense`)) {
        stopifnot(R6::is.R6(`defense`))
        self$`defense` <- `defense`
      }
    },
    toJSON = function() {
      TeamPPAObject <- list()
      if (!is.null(self$`season`)) {
        TeamPPAObject[['season']] <- self$`season`
      }
      if (!is.null(self$`team`)) {
        TeamPPAObject[['team']] <- self$`team`
      }
      if (!is.null(self$`conference`)) {
        TeamPPAObject[['conference']] <- self$`conference`
      }
      if (!is.null(self$`offense`)) {
        TeamPPAObject[['offense']] <- self$`offense`$toJSON()
      }
      if (!is.null(self$`defense`)) {
        TeamPPAObject[['defense']] <- self$`defense`$toJSON()
      }

      TeamPPAObject
    },
    fromJSON = function(TeamPPAJson) {
      TeamPPAObject <- jsonlite::fromJSON(TeamPPAJson)
      if (!is.null(TeamPPAObject$`season`)) {
        self$`season` <- TeamPPAObject$`season`
      }
      if (!is.null(TeamPPAObject$`team`)) {
        self$`team` <- TeamPPAObject$`team`
      }
      if (!is.null(TeamPPAObject$`conference`)) {
        self$`conference` <- TeamPPAObject$`conference`
      }
      if (!is.null(TeamPPAObject$`offense`)) {
        offenseObject <- TeamPPAOffense$new()
        offenseObject$fromJSON(jsonlite::toJSON(TeamPPAObject$offense, auto_unbox = TRUE))
        self$`offense` <- offenseObject
      }
      if (!is.null(TeamPPAObject$`defense`)) {
        defenseObject <- TeamPPAOffense$new()
        defenseObject$fromJSON(jsonlite::toJSON(TeamPPAObject$defense, auto_unbox = TRUE))
        self$`defense` <- defenseObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "season": %d,
           "team": %s,
           "conference": %s,
           "offense": %s,
           "defense": %s
        }',
        self$`season`,
        self$`team`,
        self$`conference`,
        self$`offense`$toJSON(),
        self$`defense`$toJSON()
      )
    },
    fromJSONString = function(TeamPPAJson) {
      TeamPPAObject <- jsonlite::fromJSON(TeamPPAJson)
      self$`season` <- TeamPPAObject$`season`
      self$`team` <- TeamPPAObject$`team`
      self$`conference` <- TeamPPAObject$`conference`
      TeamPPAOffenseObject <- TeamPPAOffense$new()
      self$`offense` <- TeamPPAOffenseObject$fromJSON(jsonlite::toJSON(TeamPPAObject$offense, auto_unbox = TRUE))
      TeamPPAOffenseObject <- TeamPPAOffense$new()
      self$`defense` <- TeamPPAOffenseObject$fromJSON(jsonlite::toJSON(TeamPPAObject$defense, auto_unbox = TRUE))
    }
  )
)
