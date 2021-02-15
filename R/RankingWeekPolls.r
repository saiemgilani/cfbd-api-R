# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RankingWeekPolls Class
#'
#' @field poll 
#' @field ranks 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RankingWeekPolls <- R6::R6Class(
  'RankingWeekPolls',
  public = list(
    `poll` = NULL,
    `ranks` = NULL,
    initialize = function(`poll`, `ranks`){
      if (!missing(`poll`)) {
        stopifnot(is.character(`poll`), length(`poll`) == 1)
        self$`poll` <- `poll`
      }
      if (!missing(`ranks`)) {
        stopifnot(is.list(`ranks`), length(`ranks`) != 0)
        lapply(`ranks`, function(x) stopifnot(R6::is.R6(x)))
        self$`ranks` <- `ranks`
      }
    },
    toJSON = function() {
      RankingWeekPollsObject <- list()
      if (!is.null(self$`poll`)) {
        RankingWeekPollsObject[['poll']] <- self$`poll`
      }
      if (!is.null(self$`ranks`)) {
        RankingWeekPollsObject[['ranks']] <- lapply(self$`ranks`, function(x) x$toJSON())
      }

      RankingWeekPollsObject
    },
    fromJSON = function(RankingWeekPollsJson) {
      RankingWeekPollsObject <- jsonlite::fromJSON(RankingWeekPollsJson)
      if (!is.null(RankingWeekPollsObject$`poll`)) {
        self$`poll` <- RankingWeekPollsObject$`poll`
      }
      if (!is.null(RankingWeekPollsObject$`ranks`)) {
        self$`ranks` <- lapply(RankingWeekPollsObject$`ranks`, function(x) {
          ranksObject <- RankingWeekRanks$new()
          ranksObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ranksObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "poll": %s,
           "ranks": [%s]
        }',
        self$`poll`,
        lapply(self$`ranks`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(RankingWeekPollsJson) {
      RankingWeekPollsObject <- jsonlite::fromJSON(RankingWeekPollsJson)
      self$`poll` <- RankingWeekPollsObject$`poll`
      self$`ranks` <- lapply(RankingWeekPollsObject$`ranks`, function(x) RankingWeekRanks$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)