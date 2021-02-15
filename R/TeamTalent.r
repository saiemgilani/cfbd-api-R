# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TeamTalent Class
#'
#' @field year 
#' @field school 
#' @field talent 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamTalent <- R6::R6Class(
  'TeamTalent',
  public = list(
    `year` = NULL,
    `school` = NULL,
    `talent` = NULL,
    initialize = function(`year`, `school`, `talent`){
      if (!missing(`year`)) {
        stopifnot(is.numeric(`year`), length(`year`) == 1)
        self$`year` <- `year`
      }
      if (!missing(`school`)) {
        stopifnot(is.character(`school`), length(`school`) == 1)
        self$`school` <- `school`
      }
      if (!missing(`talent`)) {
        self$`talent` <- `talent`
      }
    },
    toJSON = function() {
      TeamTalentObject <- list()
      if (!is.null(self$`year`)) {
        TeamTalentObject[['year']] <- self$`year`
      }
      if (!is.null(self$`school`)) {
        TeamTalentObject[['school']] <- self$`school`
      }
      if (!is.null(self$`talent`)) {
        TeamTalentObject[['talent']] <- self$`talent`
      }

      TeamTalentObject
    },
    fromJSON = function(TeamTalentJson) {
      TeamTalentObject <- jsonlite::fromJSON(TeamTalentJson)
      if (!is.null(TeamTalentObject$`year`)) {
        self$`year` <- TeamTalentObject$`year`
      }
      if (!is.null(TeamTalentObject$`school`)) {
        self$`school` <- TeamTalentObject$`school`
      }
      if (!is.null(TeamTalentObject$`talent`)) {
        self$`talent` <- TeamTalentObject$`talent`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "year": %d,
           "school": %s,
           "talent": %s
        }',
        self$`year`,
        self$`school`,
        self$`talent`
      )
    },
    fromJSONString = function(TeamTalentJson) {
      TeamTalentObject <- jsonlite::fromJSON(TeamTalentJson)
      self$`year` <- TeamTalentObject$`year`
      self$`school` <- TeamTalentObject$`school`
      self$`talent` <- TeamTalentObject$`talent`
    }
  )
)
