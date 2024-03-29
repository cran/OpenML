% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runTaskMlr.R
\name{runTaskMlr}
\alias{runTaskMlr}
\alias{OMLMlrRun}
\title{Run mlr learner on OpenML task.}
\usage{
runTaskMlr(
  task,
  learner,
  measures = NULL,
  verbosity = NULL,
  seed = 1,
  scimark.vector = NULL,
  models = TRUE,
  ...
)
}
\arguments{
\item{task}{[\code{\link{OMLTask}}]\cr
An OpenML task.}

\item{learner}{[\code{\link[mlr]{Learner}}]\cr
Learner from package mlr to run the task.}

\item{measures}{[\code{\link[mlr]{Measure}}]\cr
Additional measures that should be computed.}

\item{verbosity}{[\code{integer(1)}]\cr
Print verbose output on console? Possible values are:\cr
\code{0}: normal output,\cr
\code{1}: info output,\cr
\code{2}: debug output.\cr
Default is set via \code{\link{setOMLConfig}}.}

\item{seed}{[\code{numeric(1)}|\code{\link{OMLSeedParList}} ]\cr
Set a seed to make the run reproducible.
Default is \code{1} and sets the seed using \code{set.seed(1)}.}

\item{scimark.vector}{[\code{numeric(6)}]\cr
Optional vector of performance measurements computed by the scientific SciMark
benchmark. May be computed using the \pkg{rscimark} R package.
Default is \code{NULL}, which means no performance measurements.}

\item{models}{[\code{logical(1)}]\cr
This argument is passed to \code{\link[mlr]{benchmark}}.
Should all fitted models be stored in the \code{\link[mlr]{ResampleResult}}?
Default is \code{TRUE}.}

\item{...}{[any]\cr
Further arguments that are passed to \code{\link{convertOMLTaskToMlr}}.}
}
\value{
[\code{list}] Named list with the following components:
\describe{
  \item{run}{The \code{\link{OMLRun}} object.}
  \item{bmr}{Benchmark result returned by \code{\link[mlr]{benchmark}}.}
  \item{flow}{The generated \code{\link{OMLFlow}} object.}
}
}
\description{
Run task with a specified learner from \pkg{mlr} and produce predictions.
By default, the evaluation measure contained in the task is used.
}
\examples{
# \dontrun{
#   library(mlr)
#   ## run a single flow (learner) on a single task
#   task = getOMLTask(57)
#   lrn = makeLearner("classif.rpart")
#   res = runTaskMlr(task, lrn)
#   ## the result "res" is a list, storing information on the actual "run", the
#   ## corresponding benchmark result "bmr" and the applied "flow"
# }
}
\seealso{
\code{\link{getOMLTask}}, \code{\link[mlr]{makeLearner}}
}
