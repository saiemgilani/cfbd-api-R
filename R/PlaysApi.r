# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Plays operations
#' @description swagger.Plays
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_play_stat_types Types of player play stats
#'
#'
#' get_play_stats Play stats by play
#'
#'
#' get_play_types Play types
#'
#'
#' get_plays Play by play data
#'
#' }
#'
#' @export
PlaysApi <- R6::R6Class(
  'PlaysApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_play_stat_types = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/play/stat/types"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- PlayStatType$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_play_stats = function(year, week, team, game_id, athlete_id, stat_type_id, season_type, conference, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`year`)) {
        queryParams['year'] <- year
      }

      if (!missing(`week`)) {
        queryParams['week'] <- week
      }

      if (!missing(`team`)) {
        queryParams['team'] <- team
      }

      if (!missing(`game_id`)) {
        queryParams['gameId'] <- game_id
      }

      if (!missing(`athlete_id`)) {
        queryParams['athleteId'] <- athlete_id
      }

      if (!missing(`stat_type_id`)) {
        queryParams['statTypeId'] <- stat_type_id
      }

      if (!missing(`season_type`)) {
        queryParams['seasonType'] <- season_type
      }

      if (!missing(`conference`)) {
        queryParams['conference'] <- conference
      }

      urlPath <- "/play/stats"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- PlayStat$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_play_types = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/play/types"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- PlayType$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_plays = function(year, week, season_type, team, offense, defense, conference, offense_conference, defense_conference, play_type, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`season_type`)) {
        queryParams['seasonType'] <- season_type
      }

      if (!missing(`year`)) {
        queryParams['year'] <- year
      }

      if (!missing(`week`)) {
        queryParams['week'] <- week
      }

      if (!missing(`team`)) {
        queryParams['team'] <- team
      }

      if (!missing(`offense`)) {
        queryParams['offense'] <- offense
      }

      if (!missing(`defense`)) {
        queryParams['defense'] <- defense
      }

      if (!missing(`conference`)) {
        queryParams['conference'] <- conference
      }

      if (!missing(`offense_conference`)) {
        queryParams['offenseConference'] <- offense_conference
      }

      if (!missing(`defense_conference`)) {
        queryParams['defenseConference'] <- defense_conference
      }

      if (!missing(`play_type`)) {
        queryParams['playType'] <- play_type
      }

      urlPath <- "/plays"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Play$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
