# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BoxScoreTeams Class
#'
#' @field ppa 
#' @field cumulativePpa 
#' @field successRates 
#' @field explosiveness 
#' @field rushing 
#' @field havoc 
#' @field scoringOpportunities 
#' @field fieldPosition 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BoxScoreTeams <- R6::R6Class(
  'BoxScoreTeams',
  public = list(
    `ppa` = NULL,
    `cumulativePpa` = NULL,
    `successRates` = NULL,
    `explosiveness` = NULL,
    `rushing` = NULL,
    `havoc` = NULL,
    `scoringOpportunities` = NULL,
    `fieldPosition` = NULL,
    initialize = function(`ppa`, `cumulativePpa`, `successRates`, `explosiveness`, `rushing`, `havoc`, `scoringOpportunities`, `fieldPosition`){
      if (!missing(`ppa`)) {
        stopifnot(is.list(`ppa`), length(`ppa`) != 0)
        lapply(`ppa`, function(x) stopifnot(R6::is.R6(x)))
        self$`ppa` <- `ppa`
      }
      if (!missing(`cumulativePpa`)) {
        stopifnot(is.list(`cumulativePpa`), length(`cumulativePpa`) != 0)
        lapply(`cumulativePpa`, function(x) stopifnot(R6::is.R6(x)))
        self$`cumulativePpa` <- `cumulativePpa`
      }
      if (!missing(`successRates`)) {
        stopifnot(is.list(`successRates`), length(`successRates`) != 0)
        lapply(`successRates`, function(x) stopifnot(R6::is.R6(x)))
        self$`successRates` <- `successRates`
      }
      if (!missing(`explosiveness`)) {
        stopifnot(is.list(`explosiveness`), length(`explosiveness`) != 0)
        lapply(`explosiveness`, function(x) stopifnot(R6::is.R6(x)))
        self$`explosiveness` <- `explosiveness`
      }
      if (!missing(`rushing`)) {
        stopifnot(is.list(`rushing`), length(`rushing`) != 0)
        lapply(`rushing`, function(x) stopifnot(R6::is.R6(x)))
        self$`rushing` <- `rushing`
      }
      if (!missing(`havoc`)) {
        stopifnot(is.list(`havoc`), length(`havoc`) != 0)
        lapply(`havoc`, function(x) stopifnot(R6::is.R6(x)))
        self$`havoc` <- `havoc`
      }
      if (!missing(`scoringOpportunities`)) {
        stopifnot(is.list(`scoringOpportunities`), length(`scoringOpportunities`) != 0)
        lapply(`scoringOpportunities`, function(x) stopifnot(R6::is.R6(x)))
        self$`scoringOpportunities` <- `scoringOpportunities`
      }
      if (!missing(`fieldPosition`)) {
        stopifnot(is.list(`fieldPosition`), length(`fieldPosition`) != 0)
        lapply(`fieldPosition`, function(x) stopifnot(R6::is.R6(x)))
        self$`fieldPosition` <- `fieldPosition`
      }
    },
    toJSON = function() {
      BoxScoreTeamsObject <- list()
      if (!is.null(self$`ppa`)) {
        BoxScoreTeamsObject[['ppa']] <- lapply(self$`ppa`, function(x) x$toJSON())
      }
      if (!is.null(self$`cumulativePpa`)) {
        BoxScoreTeamsObject[['cumulativePpa']] <- lapply(self$`cumulativePpa`, function(x) x$toJSON())
      }
      if (!is.null(self$`successRates`)) {
        BoxScoreTeamsObject[['successRates']] <- lapply(self$`successRates`, function(x) x$toJSON())
      }
      if (!is.null(self$`explosiveness`)) {
        BoxScoreTeamsObject[['explosiveness']] <- lapply(self$`explosiveness`, function(x) x$toJSON())
      }
      if (!is.null(self$`rushing`)) {
        BoxScoreTeamsObject[['rushing']] <- lapply(self$`rushing`, function(x) x$toJSON())
      }
      if (!is.null(self$`havoc`)) {
        BoxScoreTeamsObject[['havoc']] <- lapply(self$`havoc`, function(x) x$toJSON())
      }
      if (!is.null(self$`scoringOpportunities`)) {
        BoxScoreTeamsObject[['scoringOpportunities']] <- lapply(self$`scoringOpportunities`, function(x) x$toJSON())
      }
      if (!is.null(self$`fieldPosition`)) {
        BoxScoreTeamsObject[['fieldPosition']] <- lapply(self$`fieldPosition`, function(x) x$toJSON())
      }

      BoxScoreTeamsObject
    },
    fromJSON = function(BoxScoreTeamsJson) {
      BoxScoreTeamsObject <- jsonlite::fromJSON(BoxScoreTeamsJson)
      if (!is.null(BoxScoreTeamsObject$`ppa`)) {
        self$`ppa` <- lapply(BoxScoreTeamsObject$`ppa`, function(x) {
          ppaObject <- BoxScoreTeamsPpa$new()
          ppaObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ppaObject
        })
      }
      if (!is.null(BoxScoreTeamsObject$`cumulativePpa`)) {
        self$`cumulativePpa` <- lapply(BoxScoreTeamsObject$`cumulativePpa`, function(x) {
          cumulativePpaObject <- BoxScoreTeamsPpa$new()
          cumulativePpaObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          cumulativePpaObject
        })
      }
      if (!is.null(BoxScoreTeamsObject$`successRates`)) {
        self$`successRates` <- lapply(BoxScoreTeamsObject$`successRates`, function(x) {
          successRatesObject <- BoxScoreTeamsSuccessRates$new()
          successRatesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          successRatesObject
        })
      }
      if (!is.null(BoxScoreTeamsObject$`explosiveness`)) {
        self$`explosiveness` <- lapply(BoxScoreTeamsObject$`explosiveness`, function(x) {
          explosivenessObject <- BoxScoreTeamsExplosiveness$new()
          explosivenessObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          explosivenessObject
        })
      }
      if (!is.null(BoxScoreTeamsObject$`rushing`)) {
        self$`rushing` <- lapply(BoxScoreTeamsObject$`rushing`, function(x) {
          rushingObject <- BoxScoreTeamsRushing$new()
          rushingObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          rushingObject
        })
      }
      if (!is.null(BoxScoreTeamsObject$`havoc`)) {
        self$`havoc` <- lapply(BoxScoreTeamsObject$`havoc`, function(x) {
          havocObject <- BoxScoreTeamsHavoc$new()
          havocObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          havocObject
        })
      }
      if (!is.null(BoxScoreTeamsObject$`scoringOpportunities`)) {
        self$`scoringOpportunities` <- lapply(BoxScoreTeamsObject$`scoringOpportunities`, function(x) {
          scoringOpportunitiesObject <- BoxScoreTeamsScoringOpportunities$new()
          scoringOpportunitiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          scoringOpportunitiesObject
        })
      }
      if (!is.null(BoxScoreTeamsObject$`fieldPosition`)) {
        self$`fieldPosition` <- lapply(BoxScoreTeamsObject$`fieldPosition`, function(x) {
          fieldPositionObject <- BoxScoreTeamsFieldPosition$new()
          fieldPositionObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          fieldPositionObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "ppa": [%s],
           "cumulativePpa": [%s],
           "successRates": [%s],
           "explosiveness": [%s],
           "rushing": [%s],
           "havoc": [%s],
           "scoringOpportunities": [%s],
           "fieldPosition": [%s]
        }',
        lapply(self$`ppa`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`cumulativePpa`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`successRates`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`explosiveness`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`rushing`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`havoc`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`scoringOpportunities`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`fieldPosition`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(BoxScoreTeamsJson) {
      BoxScoreTeamsObject <- jsonlite::fromJSON(BoxScoreTeamsJson)
      self$`ppa` <- lapply(BoxScoreTeamsObject$`ppa`, function(x) BoxScoreTeamsPpa$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`cumulativePpa` <- lapply(BoxScoreTeamsObject$`cumulativePpa`, function(x) BoxScoreTeamsPpa$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`successRates` <- lapply(BoxScoreTeamsObject$`successRates`, function(x) BoxScoreTeamsSuccessRates$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`explosiveness` <- lapply(BoxScoreTeamsObject$`explosiveness`, function(x) BoxScoreTeamsExplosiveness$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`rushing` <- lapply(BoxScoreTeamsObject$`rushing`, function(x) BoxScoreTeamsRushing$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`havoc` <- lapply(BoxScoreTeamsObject$`havoc`, function(x) BoxScoreTeamsHavoc$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`scoringOpportunities` <- lapply(BoxScoreTeamsObject$`scoringOpportunities`, function(x) BoxScoreTeamsScoringOpportunities$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`fieldPosition` <- lapply(BoxScoreTeamsObject$`fieldPosition`, function(x) BoxScoreTeamsFieldPosition$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
