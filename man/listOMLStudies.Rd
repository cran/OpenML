% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/listOMLStudies.R
\name{listOMLStudies}
\alias{listOMLStudies}
\title{list OpenML Studies.}
\usage{
listOMLStudies(
  main.entity.type = NULL,
  status = "all",
  uploader.id = NULL,
  limit = NULL,
  offset = NULL,
  verbosity = NULL
)
}
\arguments{
\item{main.entity.type}{[\code{character}]\cr
Whether a collection of runs (study) or collection of tasks (benchmark suite) should be returned.
Subsets the results according to the entity type.
Possible values are  \code{{NULL, "task", "run"}}.
Default is \code{NULL} which means that no subsetting is done.}

\item{status}{[\code{character}]\cr
Subsets the results according to the status. Possible values are 
\code{{"active", "deactivated", "in_preparation", "all"}}.
Default is \code{"active"}.}

\item{uploader.id}{[\code{integer}]\cr
a single ID or a vector of IDs of uploader profile(s).}

\item{limit}{[\code{numeric(1)}]\cr
Optional. The maximum number of entries to return. 
Without specifying \code{offset}, it returns the first '\code{limit}' entries.
Setting \code{limit = NULL} returns all available entries.}

\item{offset}{[\code{numeric(1)}]\cr
Optional. The offset to start from. 
Should be indices starting from 0, which do not refer to IDs. 
Is ignored when no \code{limit} is given.}

\item{verbosity}{[\code{integer(1)}]\cr
Print verbose output on console? Possible values are:\cr
\code{0}: normal output,\cr
\code{1}: info output,\cr
\code{2}: debug output.\cr
Default is set via \code{\link{setOMLConfig}}.}
}
\value{
[\code{data.frame}].
}
\description{
Retrives a list of available studies.
}
\note{
This function is memoised. I.e., if you call this function twice in a running R session,
the first call will query the server and store the results in memory while the second and all subsequent calls will return
the cached results from the first call.
You can reset the cache by calling \code{\link[memoise]{forget}} on the function manually.
}
\seealso{
Other listing functions: 
\code{\link{chunkOMLlist}()},
\code{\link{listOMLDataSetQualities}()},
\code{\link{listOMLDataSets}()},
\code{\link{listOMLEstimationProcedures}()},
\code{\link{listOMLEvaluationMeasures}()},
\code{\link{listOMLFlows}()},
\code{\link{listOMLRuns}()},
\code{\link{listOMLSetup}()},
\code{\link{listOMLTaskTypes}()},
\code{\link{listOMLTasks}()}
}
\concept{listing functions}
