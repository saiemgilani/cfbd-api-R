# College Football Data API
#
# This is an API for accessing all sorts of college football data.  It currently has a wide array of data ranging from play by play to player statistics to game scores and more.
#
# OpenAPI spec version: 2.3.5
# Contact: admin@collegefootballdata.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Stats operations
#' @description swagger.Stats
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
#' get_advanced_team_game_stats Advanced team metrics by game
#'
#'
#' get_advanced_team_season_stats Advanced team metrics by season
#'
#'
#' get_stat_categories Team stat categories
#'
#'
#' get_team_season_stats Team statistics by season
#'
#' }
#'
#' @export
StatsApi <- R6::R6Class(
  'StatsApi',
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
    get_advanced_team_game_stats = function(year, week, team, opponent, exclude_garbage_time, season_type, ...){
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

      if (!missing(`opponent`)) {
        queryParams['opponent'] <- opponent
      }

      if (!missing(`exclude_garbage_time`)) {
        queryParams['excludeGarbageTime'] <- exclude_garbage_time
      }

      if (!missing(`season_type`)) {
        queryParams['seasonType'] <- season_type
      }

      urlPath <- "/stats/game/advanced"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- AdvancedGameStat$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_advanced_team_season_stats = function(year, team, exclude_garbage_time, start_week, end_week, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`year`)) {
        queryParams['year'] <- year
      }

      if (!missing(`team`)) {
        queryParams['team'] <- team
      }

      if (!missing(`exclude_garbage_time`)) {
        queryParams['excludeGarbageTime'] <- exclude_garbage_time
      }

      if (!missing(`start_week`)) {
        queryParams['startWeek'] <- start_week
      }

      if (!missing(`end_week`)) {
        queryParams['endWeek'] <- end_week
      }

      urlPath <- "/stats/season/advanced"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- AdvancedSeasonStat$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_stat_categories = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/stats/categories"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_team_season_stats = function(year, team, conference, start_week, end_week, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`year`)) {
        queryParams['year'] <- year
      }

      if (!missing(`team`)) {
        queryParams['team'] <- team
      }

      if (!missing(`conference`)) {
        queryParams['conference'] <- conference
      }

      if (!missing(`start_week`)) {
        queryParams['startWeek'] <- start_week
      }

      if (!missing(`end_week`)) {
        queryParams['endWeek'] <- end_week
      }

      urlPath <- "/stats/season"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- TeamSeasonStat$new()
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
