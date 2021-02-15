# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PlayType Class
#'
#' @field id 
#' @field text 
#' @field abbreviation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlayType <- R6::R6Class(
  'PlayType',
  public = list(
    `id` = NULL,
    `text` = NULL,
    `abbreviation` = NULL,
    initialize = function(`id`, `text`, `abbreviation`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`text`)) {
        stopifnot(is.character(`text`), length(`text`) == 1)
        self$`text` <- `text`
      }
      if (!missing(`abbreviation`)) {
        stopifnot(is.character(`abbreviation`), length(`abbreviation`) == 1)
        self$`abbreviation` <- `abbreviation`
      }
    },
    toJSON = function() {
      PlayTypeObject <- list()
      if (!is.null(self$`id`)) {
        PlayTypeObject[['id']] <- self$`id`
      }
      if (!is.null(self$`text`)) {
        PlayTypeObject[['text']] <- self$`text`
      }
      if (!is.null(self$`abbreviation`)) {
        PlayTypeObject[['abbreviation']] <- self$`abbreviation`
      }

      PlayTypeObject
    },
    fromJSON = function(PlayTypeJson) {
      PlayTypeObject <- jsonlite::fromJSON(PlayTypeJson)
      if (!is.null(PlayTypeObject$`id`)) {
        self$`id` <- PlayTypeObject$`id`
      }
      if (!is.null(PlayTypeObject$`text`)) {
        self$`text` <- PlayTypeObject$`text`
      }
      if (!is.null(PlayTypeObject$`abbreviation`)) {
        self$`abbreviation` <- PlayTypeObject$`abbreviation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "text": %s,
           "abbreviation": %s
        }',
        self$`id`,
        self$`text`,
        self$`abbreviation`
      )
    },
    fromJSONString = function(PlayTypeJson) {
      PlayTypeObject <- jsonlite::fromJSON(PlayTypeJson)
      self$`id` <- PlayTypeObject$`id`
      self$`text` <- PlayTypeObject$`text`
      self$`abbreviation` <- PlayTypeObject$`abbreviation`
    }
  )
)