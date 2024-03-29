% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uploadOMLRun.R
\name{uploadOMLRun}
\alias{uploadOMLRun}
\title{Upload an OpenML run.}
\usage{
uploadOMLRun(
  run,
  upload.bmr = FALSE,
  tags = NULL,
  confirm.upload = NULL,
  verbosity = NULL,
  ...
)
}
\arguments{
\item{run}{[\code{\link{OMLRun}}|\code{\link{OMLMlrRun}}]\cr
The run that should be uploaded. Either a \code{\link{OMLRun}} or a run created with \code{\link{OMLMlrRun}}.}

\item{upload.bmr}{[\code{logical(1)}]\cr
Should the Benchmark result created by \code{\link[mlr]{benchmark}} function be uploaded?
If set to \code{TRUE} and the flow is created via \link[mlr]{makeTuneWrapper}, an arff file that contains the hyperparameter optimization trace is also uploaded.}

\item{tags}{[\code{character}]\cr
The tags that should be added after uploading.}

\item{confirm.upload}{[\code{logical(1)}]\cr
Should the user be asked to confirm the upload?
Default is the setting from your config.}

\item{verbosity}{[\code{integer(1)}]\cr
Print verbose output on console? Possible values are:\cr
\code{0}: normal output,\cr
\code{1}: info output,\cr
\code{2}: debug output.\cr
Default is set via \code{\link{setOMLConfig}}.}

\item{...}{Not used.}
}
\value{
[\code{invisible(numeric(1))}].
  The run ID.
}
\description{
Share a run of a flow on a given OpenML task by uploading it to the OpenML server.
}
\note{
This function will reset the cache of \code{\link{listOMLRuns}} and
\code{\link{listOMLRunEvaluations}} on success.

By default you will be asked to confirm the upload. You can deactivate the
need for confirmation by setting \dQuote{confirm.upload = TRUE} via
\link{setOMLConfig} or set the corresponding argument each time you call
the function.
}
\seealso{
Other uploading functions: 
\code{\link{makeOMLStudy}()},
\code{\link{uploadOMLDataSet}()},
\code{\link{uploadOMLFlow}()},
\code{\link{uploadOMLStudy}()}

Other run-related functions: 
\code{\link{convertOMLMlrRunToBMR}()},
\code{\link{convertOMLRunToBMR}()},
\code{\link{deleteOMLObject}()},
\code{\link{getOMLRun}()},
\code{\link{listOMLRuns}()},
\code{\link{makeOMLRunParameter}()},
\code{\link{makeOMLRun}()},
\code{\link{tagOMLObject}()}
}
\concept{run-related functions}
\concept{uploading functions}
