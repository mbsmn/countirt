% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrappers_model_fitting.R
\name{cirt_control}
\alias{cirt_control}
\title{Control parameters for cirt}
\usage{
cirt_control(
  n_nodes = 121,
  thres = Inf,
  prob = 0,
  maxiter = 1000,
  convtol = 1e-05,
  ctol_maxstep = 1e-08,
  m_method = "nleqslv",
  convcrit = "marglik"
)
}
\arguments{
\item{n_nodes}{An integer. Specifies the number of quadrature nodes used in Gauss-Hermite quadrature.}

\item{thres}{A threshold for quadrature node values if we want to truncate the qudrature grid. Will be used to truncate on lower and upper end (i.e., absolute quadrature node values will be compared to the threshhold).}

\item{prob}{A threshold for quadrature weight values if we want to truncate the grid for only quadrature weights above prob.}

\item{maxiter}{An integer. Maximum number of EM iterations.}

\item{convtol}{A real. Convergence tolerance for EM algorithm.}

\item{ctol_maxstep}{A real. Convergence tolerance for M step of EM algorithm.}

\item{m_method}{A string. Can be "nleqslv". Specifying optimizer used for M step of EM algorithm,}

\item{convcrit}{A string. Can be "marglik" or "params". Specifying whether to assess convergence on marginal likelihood or parameter estimates.}
}
\description{
Control parameters for cirt
}
