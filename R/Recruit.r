# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Recruit Class
#'
#' @field recruitType 
#' @field year 
#' @field ranking 
#' @field name 
#' @field school 
#' @field committedTo 
#' @field position 
#' @field height 
#' @field weight 
#' @field stars 
#' @field rating 
#' @field city 
#' @field stateProvince 
#' @field country 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Recruit <- R6::R6Class(
  'Recruit',
  public = list(
    `recruitType` = NULL,
    `year` = NULL,
    `ranking` = NULL,
    `name` = NULL,
    `school` = NULL,
    `committedTo` = NULL,
    `position` = NULL,
    `height` = NULL,
    `weight` = NULL,
    `stars` = NULL,
    `rating` = NULL,
    `city` = NULL,
    `stateProvince` = NULL,
    `country` = NULL,
    initialize = function(`recruitType`, `year`, `ranking`, `name`, `school`, `committedTo`, `position`, `height`, `weight`, `stars`, `rating`, `city`, `stateProvince`, `country`){
      if (!missing(`recruitType`)) {
        stopifnot(is.character(`recruitType`), length(`recruitType`) == 1)
        self$`recruitType` <- `recruitType`
      }
      if (!missing(`year`)) {
        stopifnot(is.numeric(`year`), length(`year`) == 1)
        self$`year` <- `year`
      }
      if (!missing(`ranking`)) {
        stopifnot(is.numeric(`ranking`), length(`ranking`) == 1)
        self$`ranking` <- `ranking`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`school`)) {
        stopifnot(is.character(`school`), length(`school`) == 1)
        self$`school` <- `school`
      }
      if (!missing(`committedTo`)) {
        stopifnot(is.character(`committedTo`), length(`committedTo`) == 1)
        self$`committedTo` <- `committedTo`
      }
      if (!missing(`position`)) {
        stopifnot(is.character(`position`), length(`position`) == 1)
        self$`position` <- `position`
      }
      if (!missing(`height`)) {
        stopifnot(is.numeric(`height`), length(`height`) == 1)
        self$`height` <- `height`
      }
      if (!missing(`weight`)) {
        stopifnot(is.numeric(`weight`), length(`weight`) == 1)
        self$`weight` <- `weight`
      }
      if (!missing(`stars`)) {
        stopifnot(is.numeric(`stars`), length(`stars`) == 1)
        self$`stars` <- `stars`
      }
      if (!missing(`rating`)) {
        self$`rating` <- `rating`
      }
      if (!missing(`city`)) {
        stopifnot(is.character(`city`), length(`city`) == 1)
        self$`city` <- `city`
      }
      if (!missing(`stateProvince`)) {
        stopifnot(is.character(`stateProvince`), length(`stateProvince`) == 1)
        self$`stateProvince` <- `stateProvince`
      }
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
    },
    toJSON = function() {
      RecruitObject <- list()
      if (!is.null(self$`recruitType`)) {
        RecruitObject[['recruitType']] <- self$`recruitType`
      }
      if (!is.null(self$`year`)) {
        RecruitObject[['year']] <- self$`year`
      }
      if (!is.null(self$`ranking`)) {
        RecruitObject[['ranking']] <- self$`ranking`
      }
      if (!is.null(self$`name`)) {
        RecruitObject[['name']] <- self$`name`
      }
      if (!is.null(self$`school`)) {
        RecruitObject[['school']] <- self$`school`
      }
      if (!is.null(self$`committedTo`)) {
        RecruitObject[['committedTo']] <- self$`committedTo`
      }
      if (!is.null(self$`position`)) {
        RecruitObject[['position']] <- self$`position`
      }
      if (!is.null(self$`height`)) {
        RecruitObject[['height']] <- self$`height`
      }
      if (!is.null(self$`weight`)) {
        RecruitObject[['weight']] <- self$`weight`
      }
      if (!is.null(self$`stars`)) {
        RecruitObject[['stars']] <- self$`stars`
      }
      if (!is.null(self$`rating`)) {
        RecruitObject[['rating']] <- self$`rating`
      }
      if (!is.null(self$`city`)) {
        RecruitObject[['city']] <- self$`city`
      }
      if (!is.null(self$`stateProvince`)) {
        RecruitObject[['stateProvince']] <- self$`stateProvince`
      }
      if (!is.null(self$`country`)) {
        RecruitObject[['country']] <- self$`country`
      }

      RecruitObject
    },
    fromJSON = function(RecruitJson) {
      RecruitObject <- jsonlite::fromJSON(RecruitJson)
      if (!is.null(RecruitObject$`recruitType`)) {
        self$`recruitType` <- RecruitObject$`recruitType`
      }
      if (!is.null(RecruitObject$`year`)) {
        self$`year` <- RecruitObject$`year`
      }
      if (!is.null(RecruitObject$`ranking`)) {
        self$`ranking` <- RecruitObject$`ranking`
      }
      if (!is.null(RecruitObject$`name`)) {
        self$`name` <- RecruitObject$`name`
      }
      if (!is.null(RecruitObject$`school`)) {
        self$`school` <- RecruitObject$`school`
      }
      if (!is.null(RecruitObject$`committedTo`)) {
        self$`committedTo` <- RecruitObject$`committedTo`
      }
      if (!is.null(RecruitObject$`position`)) {
        self$`position` <- RecruitObject$`position`
      }
      if (!is.null(RecruitObject$`height`)) {
        self$`height` <- RecruitObject$`height`
      }
      if (!is.null(RecruitObject$`weight`)) {
        self$`weight` <- RecruitObject$`weight`
      }
      if (!is.null(RecruitObject$`stars`)) {
        self$`stars` <- RecruitObject$`stars`
      }
      if (!is.null(RecruitObject$`rating`)) {
        self$`rating` <- RecruitObject$`rating`
      }
      if (!is.null(RecruitObject$`city`)) {
        self$`city` <- RecruitObject$`city`
      }
      if (!is.null(RecruitObject$`stateProvince`)) {
        self$`stateProvince` <- RecruitObject$`stateProvince`
      }
      if (!is.null(RecruitObject$`country`)) {
        self$`country` <- RecruitObject$`country`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "recruitType": %s,
           "year": %d,
           "ranking": %d,
           "name": %s,
           "school": %s,
           "committedTo": %s,
           "position": %s,
           "height": %d,
           "weight": %d,
           "stars": %d,
           "rating": %s,
           "city": %s,
           "stateProvince": %s,
           "country": %s
        }',
        self$`recruitType`,
        self$`year`,
        self$`ranking`,
        self$`name`,
        self$`school`,
        self$`committedTo`,
        self$`position`,
        self$`height`,
        self$`weight`,
        self$`stars`,
        self$`rating`,
        self$`city`,
        self$`stateProvince`,
        self$`country`
      )
    },
    fromJSONString = function(RecruitJson) {
      RecruitObject <- jsonlite::fromJSON(RecruitJson)
      self$`recruitType` <- RecruitObject$`recruitType`
      self$`year` <- RecruitObject$`year`
      self$`ranking` <- RecruitObject$`ranking`
      self$`name` <- RecruitObject$`name`
      self$`school` <- RecruitObject$`school`
      self$`committedTo` <- RecruitObject$`committedTo`
      self$`position` <- RecruitObject$`position`
      self$`height` <- RecruitObject$`height`
      self$`weight` <- RecruitObject$`weight`
      self$`stars` <- RecruitObject$`stars`
      self$`rating` <- RecruitObject$`rating`
      self$`city` <- RecruitObject$`city`
      self$`stateProvince` <- RecruitObject$`stateProvince`
      self$`country` <- RecruitObject$`country`
    }
  )
)
