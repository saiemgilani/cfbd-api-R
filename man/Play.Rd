% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Play.r
\name{Play}
\alias{Play}
\title{Play Class}
\description{
Play Class

Play Class
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{id}}{}

\item{\code{drive_id}}{}

\item{\code{game_id}}{}

\item{\code{drive_number}}{}

\item{\code{play_number}}{}

\item{\code{offense}}{}

\item{\code{offense_conference}}{}

\item{\code{offense_score}}{}

\item{\code{defense}}{}

\item{\code{home}}{}

\item{\code{away}}{}

\item{\code{defense_conference}}{}

\item{\code{defense_score}}{}

\item{\code{period}}{}

\item{\code{clock}}{}

\item{\code{offense_timeouts}}{}

\item{\code{defense_timeouts}}{}

\item{\code{yard_line}}{}

\item{\code{yards_to_goal}}{}

\item{\code{down}}{}

\item{\code{distance}}{}

\item{\code{yards_gained}}{}

\item{\code{scoring}}{}

\item{\code{play_type}}{}

\item{\code{play_text}}{}

\item{\code{ppa}}{}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{Play$new()}}
\item \href{#method-toJSON}{\code{Play$toJSON()}}
\item \href{#method-fromJSON}{\code{Play$fromJSON()}}
\item \href{#method-toJSONString}{\code{Play$toJSONString()}}
\item \href{#method-fromJSONString}{\code{Play$fromJSONString()}}
\item \href{#method-clone}{\code{Play$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Play$new(
  id,
  drive_id,
  game_id,
  drive_number,
  play_number,
  offense,
  offense_conference,
  offense_score,
  defense,
  home,
  away,
  defense_conference,
  defense_score,
  period,
  clock,
  offense_timeouts,
  defense_timeouts,
  yard_line,
  yards_to_goal,
  down,
  distance,
  yards_gained,
  scoring,
  play_type,
  play_text,
  ppa
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Play$toJSON()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Play$fromJSON(PlayJson)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Play$toJSONString()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Play$fromJSONString(PlayJson)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Play$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
