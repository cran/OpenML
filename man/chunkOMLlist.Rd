% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chunkOMLlist.R
\name{chunkOMLlist}
\alias{chunkOMLlist}
\title{Do chunked listings}
\usage{
chunkOMLlist(listfun, ..., total.limit = 1e+05, chunk.limit = 1000)
}
\arguments{
\item{listfun}{[\code{character(1)}]\cr
the listing function for which you want to do chunked requests.}

\item{...}{[\code{ANY}]\cr
arguments are passed to the function specified in \code{listfun}.}

\item{total.limit}{[\code{integer}]\cr
the total limit of results that should be listed. Set this to a high number to get all available results from the server.}

\item{chunk.limit}{[\code{integer}]\cr
the limit for a single request. If you reduce this number, the number of server requests will increase.}
}
\description{
Allows you to do multiple chunked requests with the listOML* functions.
The request will be repeated until \code{total.limit} is reached or until there are no more results available on the server.
}
\seealso{
Other listing functions: 
\code{\link{listOMLDataSetQualities}()},
\code{\link{listOMLDataSets}()},
\code{\link{listOMLEstimationProcedures}()},
\code{\link{listOMLEvaluationMeasures}()},
\code{\link{listOMLFlows}()},
\code{\link{listOMLRuns}()},
\code{\link{listOMLSetup}()},
\code{\link{listOMLStudies}()},
\code{\link{listOMLTaskTypes}()},
\code{\link{listOMLTasks}()}
}
\concept{listing functions}
