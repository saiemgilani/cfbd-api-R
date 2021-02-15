# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BoxScoreTeamsOverall Class
#'
#' @field total 
#' @field quarter1 
#' @field quarter2 
#' @field quarter3 
#' @field quarter4 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BoxScoreTeamsOverall <- R6::R6Class(
  'BoxScoreTeamsOverall',
  public = list(
    `total` = NULL,
    `quarter1` = NULL,
    `quarter2` = NULL,
    `quarter3` = NULL,
    `quarter4` = NULL,
    initialize = function(`total`, `quarter1`, `quarter2`, `quarter3`, `quarter4`){
      if (!missing(`total`)) {
        self$`total` <- `total`
      }
      if (!missing(`quarter1`)) {
        self$`quarter1` <- `quarter1`
      }
      if (!missing(`quarter2`)) {
        self$`quarter2` <- `quarter2`
      }
      if (!missing(`quarter3`)) {
        self$`quarter3` <- `quarter3`
      }
      if (!missing(`quarter4`)) {
        self$`quarter4` <- `quarter4`
      }
    },
    toJSON = function() {
      BoxScoreTeamsOverallObject <- list()
      if (!is.null(self$`total`)) {
        BoxScoreTeamsOverallObject[['total']] <- self$`total`
      }
      if (!is.null(self$`quarter1`)) {
        BoxScoreTeamsOverallObject[['quarter1']] <- self$`quarter1`
      }
      if (!is.null(self$`quarter2`)) {
        BoxScoreTeamsOverallObject[['quarter2']] <- self$`quarter2`
      }
      if (!is.null(self$`quarter3`)) {
        BoxScoreTeamsOverallObject[['quarter3']] <- self$`quarter3`
      }
      if (!is.null(self$`quarter4`)) {
        BoxScoreTeamsOverallObject[['quarter4']] <- self$`quarter4`
      }

      BoxScoreTeamsOverallObject
    },
    fromJSON = function(BoxScoreTeamsOverallJson) {
      BoxScoreTeamsOverallObject <- jsonlite::fromJSON(BoxScoreTeamsOverallJson)
      if (!is.null(BoxScoreTeamsOverallObject$`total`)) {
        self$`total` <- BoxScoreTeamsOverallObject$`total`
      }
      if (!is.null(BoxScoreTeamsOverallObject$`quarter1`)) {
        self$`quarter1` <- BoxScoreTeamsOverallObject$`quarter1`
      }
      if (!is.null(BoxScoreTeamsOverallObject$`quarter2`)) {
        self$`quarter2` <- BoxScoreTeamsOverallObject$`quarter2`
      }
      if (!is.null(BoxScoreTeamsOverallObject$`quarter3`)) {
        self$`quarter3` <- BoxScoreTeamsOverallObject$`quarter3`
      }
      if (!is.null(BoxScoreTeamsOverallObject$`quarter4`)) {
        self$`quarter4` <- BoxScoreTeamsOverallObject$`quarter4`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "total": %s,
           "quarter1": %s,
           "quarter2": %s,
           "quarter3": %s,
           "quarter4": %s
        }',
        self$`total`,
        self$`quarter1`,
        self$`quarter2`,
        self$`quarter3`,
        self$`quarter4`
      )
    },
    fromJSONString = function(BoxScoreTeamsOverallJson) {
      BoxScoreTeamsOverallObject <- jsonlite::fromJSON(BoxScoreTeamsOverallJson)
      self$`total` <- BoxScoreTeamsOverallObject$`total`
      self$`quarter1` <- BoxScoreTeamsOverallObject$`quarter1`
      self$`quarter2` <- BoxScoreTeamsOverallObject$`quarter2`
      self$`quarter3` <- BoxScoreTeamsOverallObject$`quarter3`
      self$`quarter4` <- BoxScoreTeamsOverallObject$`quarter4`
    }
  )
)