% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlayersApi.r
\name{PlayersApi}
\alias{PlayersApi}
\title{Players operations}
\description{
swagger.Players
}
\section{Methods}{

\describe{

get_player_season_stats Player stats by season


get_player_usage Player usage metrics broken down by season


get_returning_production Team returning production metrics


player_search Search for player information

}
}

\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{path}}{Stores url path of the request.}

\item{\code{apiClient}}{Handles the client-server communication.}

\item{\code{userAgent}}{Set the user agent of the request.}
}
\if{html}{\out{</div>}}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{path}}{Stores url path of the request.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{PlayersApi$new()}}
\item \href{#method-get_player_season_stats}{\code{PlayersApi$get_player_season_stats()}}
\item \href{#method-get_player_usage}{\code{PlayersApi$get_player_usage()}}
\item \href{#method-get_returning_production}{\code{PlayersApi$get_returning_production()}}
\item \href{#method-player_search}{\code{PlayersApi$player_search()}}
\item \href{#method-clone}{\code{PlayersApi$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PlayersApi$new(apiClient)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-get_player_season_stats"></a>}}
\if{latex}{\out{\hypertarget{method-get_player_season_stats}{}}}
\subsection{Method \code{get_player_season_stats()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PlayersApi$get_player_season_stats(
  year,
  team,
  conference,
  start_week,
  end_week,
  season_type,
  category,
  ...
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-get_player_usage"></a>}}
\if{latex}{\out{\hypertarget{method-get_player_usage}{}}}
\subsection{Method \code{get_player_usage()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PlayersApi$get_player_usage(
  year,
  team,
  conference,
  position,
  player_id,
  exclude_garbage_time,
  ...
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-get_returning_production"></a>}}
\if{latex}{\out{\hypertarget{method-get_returning_production}{}}}
\subsection{Method \code{get_returning_production()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PlayersApi$get_returning_production(year, team, conference, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-player_search"></a>}}
\if{latex}{\out{\hypertarget{method-player_search}{}}}
\subsection{Method \code{player_search()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PlayersApi$player_search(search_term, position, team, year, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PlayersApi$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
