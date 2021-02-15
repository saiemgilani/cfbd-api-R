# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Conference Class
#'
#' @field id 
#' @field name 
#' @field short_name 
#' @field abbreviation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Conference <- R6::R6Class(
  'Conference',
  public = list(
    `id` = NULL,
    `name` = NULL,
    `short_name` = NULL,
    `abbreviation` = NULL,
    initialize = function(`id`, `name`, `short_name`, `abbreviation`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`short_name`)) {
        stopifnot(is.character(`short_name`), length(`short_name`) == 1)
        self$`short_name` <- `short_name`
      }
      if (!missing(`abbreviation`)) {
        stopifnot(is.character(`abbreviation`), length(`abbreviation`) == 1)
        self$`abbreviation` <- `abbreviation`
      }
    },
    toJSON = function() {
      ConferenceObject <- list()
      if (!is.null(self$`id`)) {
        ConferenceObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        ConferenceObject[['name']] <- self$`name`
      }
      if (!is.null(self$`short_name`)) {
        ConferenceObject[['short_name']] <- self$`short_name`
      }
      if (!is.null(self$`abbreviation`)) {
        ConferenceObject[['abbreviation']] <- self$`abbreviation`
      }

      ConferenceObject
    },
    fromJSON = function(ConferenceJson) {
      ConferenceObject <- jsonlite::fromJSON(ConferenceJson)
      if (!is.null(ConferenceObject$`id`)) {
        self$`id` <- ConferenceObject$`id`
      }
      if (!is.null(ConferenceObject$`name`)) {
        self$`name` <- ConferenceObject$`name`
      }
      if (!is.null(ConferenceObject$`short_name`)) {
        self$`short_name` <- ConferenceObject$`short_name`
      }
      if (!is.null(ConferenceObject$`abbreviation`)) {
        self$`abbreviation` <- ConferenceObject$`abbreviation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "name": %s,
           "short_name": %s,
           "abbreviation": %s
        }',
        self$`id`,
        self$`name`,
        self$`short_name`,
        self$`abbreviation`
      )
    },
    fromJSONString = function(ConferenceJson) {
      ConferenceObject <- jsonlite::fromJSON(ConferenceJson)
      self$`id` <- ConferenceObject$`id`
      self$`name` <- ConferenceObject$`name`
      self$`short_name` <- ConferenceObject$`short_name`
      self$`abbreviation` <- ConferenceObject$`abbreviation`
    }
  )
)
