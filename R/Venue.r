# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Venue Class
#'
#' @field id 
#' @field name 
#' @field capacity 
#' @field grass 
#' @field city 
#' @field state 
#' @field zip 
#' @field country_code 
#' @field location 
#' @field elevation 
#' @field year 
#' @field dome 
#' @field timezone 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Venue <- R6::R6Class(
  'Venue',
  public = list(
    `id` = NULL,
    `name` = NULL,
    `capacity` = NULL,
    `grass` = NULL,
    `city` = NULL,
    `state` = NULL,
    `zip` = NULL,
    `country_code` = NULL,
    `location` = NULL,
    `elevation` = NULL,
    `year` = NULL,
    `dome` = NULL,
    `timezone` = NULL,
    initialize = function(`id`, `name`, `capacity`, `grass`, `city`, `state`, `zip`, `country_code`, `location`, `elevation`, `year`, `dome`, `timezone`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`capacity`)) {
        stopifnot(is.numeric(`capacity`), length(`capacity`) == 1)
        self$`capacity` <- `capacity`
      }
      if (!missing(`grass`)) {
        self$`grass` <- `grass`
      }
      if (!missing(`city`)) {
        stopifnot(is.character(`city`), length(`city`) == 1)
        self$`city` <- `city`
      }
      if (!missing(`state`)) {
        stopifnot(is.character(`state`), length(`state`) == 1)
        self$`state` <- `state`
      }
      if (!missing(`zip`)) {
        stopifnot(is.character(`zip`), length(`zip`) == 1)
        self$`zip` <- `zip`
      }
      if (!missing(`country_code`)) {
        stopifnot(is.character(`country_code`), length(`country_code`) == 1)
        self$`country_code` <- `country_code`
      }
      if (!missing(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!missing(`elevation`)) {
        stopifnot(is.numeric(`elevation`), length(`elevation`) == 1)
        self$`elevation` <- `elevation`
      }
      if (!missing(`year`)) {
        stopifnot(is.numeric(`year`), length(`year`) == 1)
        self$`year` <- `year`
      }
      if (!missing(`dome`)) {
        self$`dome` <- `dome`
      }
      if (!missing(`timezone`)) {
        stopifnot(is.character(`timezone`), length(`timezone`) == 1)
        self$`timezone` <- `timezone`
      }
    },
    toJSON = function() {
      VenueObject <- list()
      if (!is.null(self$`id`)) {
        VenueObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        VenueObject[['name']] <- self$`name`
      }
      if (!is.null(self$`capacity`)) {
        VenueObject[['capacity']] <- self$`capacity`
      }
      if (!is.null(self$`grass`)) {
        VenueObject[['grass']] <- self$`grass`
      }
      if (!is.null(self$`city`)) {
        VenueObject[['city']] <- self$`city`
      }
      if (!is.null(self$`state`)) {
        VenueObject[['state']] <- self$`state`
      }
      if (!is.null(self$`zip`)) {
        VenueObject[['zip']] <- self$`zip`
      }
      if (!is.null(self$`country_code`)) {
        VenueObject[['country_code']] <- self$`country_code`
      }
      if (!is.null(self$`location`)) {
        VenueObject[['location']] <- self$`location`$toJSON()
      }
      if (!is.null(self$`elevation`)) {
        VenueObject[['elevation']] <- self$`elevation`
      }
      if (!is.null(self$`year`)) {
        VenueObject[['year']] <- self$`year`
      }
      if (!is.null(self$`dome`)) {
        VenueObject[['dome']] <- self$`dome`
      }
      if (!is.null(self$`timezone`)) {
        VenueObject[['timezone']] <- self$`timezone`
      }

      VenueObject
    },
    fromJSON = function(VenueJson) {
      VenueObject <- jsonlite::fromJSON(VenueJson)
      if (!is.null(VenueObject$`id`)) {
        self$`id` <- VenueObject$`id`
      }
      if (!is.null(VenueObject$`name`)) {
        self$`name` <- VenueObject$`name`
      }
      if (!is.null(VenueObject$`capacity`)) {
        self$`capacity` <- VenueObject$`capacity`
      }
      if (!is.null(VenueObject$`grass`)) {
        self$`grass` <- VenueObject$`grass`
      }
      if (!is.null(VenueObject$`city`)) {
        self$`city` <- VenueObject$`city`
      }
      if (!is.null(VenueObject$`state`)) {
        self$`state` <- VenueObject$`state`
      }
      if (!is.null(VenueObject$`zip`)) {
        self$`zip` <- VenueObject$`zip`
      }
      if (!is.null(VenueObject$`country_code`)) {
        self$`country_code` <- VenueObject$`country_code`
      }
      if (!is.null(VenueObject$`location`)) {
        locationObject <- VenueLocation$new()
        locationObject$fromJSON(jsonlite::toJSON(VenueObject$location, auto_unbox = TRUE))
        self$`location` <- locationObject
      }
      if (!is.null(VenueObject$`elevation`)) {
        self$`elevation` <- VenueObject$`elevation`
      }
      if (!is.null(VenueObject$`year`)) {
        self$`year` <- VenueObject$`year`
      }
      if (!is.null(VenueObject$`dome`)) {
        self$`dome` <- VenueObject$`dome`
      }
      if (!is.null(VenueObject$`timezone`)) {
        self$`timezone` <- VenueObject$`timezone`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "name": %s,
           "capacity": %d,
           "grass": %s,
           "city": %s,
           "state": %s,
           "zip": %s,
           "country_code": %s,
           "location": %s,
           "elevation": %d,
           "year": %d,
           "dome": %s,
           "timezone": %s
        }',
        self$`id`,
        self$`name`,
        self$`capacity`,
        self$`grass`,
        self$`city`,
        self$`state`,
        self$`zip`,
        self$`country_code`,
        self$`location`$toJSON(),
        self$`elevation`,
        self$`year`,
        self$`dome`,
        self$`timezone`
      )
    },
    fromJSONString = function(VenueJson) {
      VenueObject <- jsonlite::fromJSON(VenueJson)
      self$`id` <- VenueObject$`id`
      self$`name` <- VenueObject$`name`
      self$`capacity` <- VenueObject$`capacity`
      self$`grass` <- VenueObject$`grass`
      self$`city` <- VenueObject$`city`
      self$`state` <- VenueObject$`state`
      self$`zip` <- VenueObject$`zip`
      self$`country_code` <- VenueObject$`country_code`
      VenueLocationObject <- VenueLocation$new()
      self$`location` <- VenueLocationObject$fromJSON(jsonlite::toJSON(VenueObject$location, auto_unbox = TRUE))
      self$`elevation` <- VenueObject$`elevation`
      self$`year` <- VenueObject$`year`
      self$`dome` <- VenueObject$`dome`
      self$`timezone` <- VenueObject$`timezone`
    }
  )
)
