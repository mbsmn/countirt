% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrappers_model_fitting.R
\name{cirt}
\alias{cirt}
\title{Model fitting function for count data IRT models.}
\usage{
cirt(
  model,
  data,
  family,
  data_long = FALSE,
  person_id = NULL,
  stand_errors = FALSE,
  control = list(n_nodes = 121, thres = Inf, prob = 0, init_disp_one = TRUE, maxiter =
    1000, convtol = 1e-05, ctol_maxstep = 1e-08, m_method = "nleqslv", convcrit =
    "marglik")
)
}
\arguments{
\item{model}{A string specifying the model. 

- For a data frame in wide format (default; for the 2PCMP and the CLRM): You specify the items that belong to the factor by writing "theta =~ item1 + item2 ...;" where you replace "itemj" with correct name in your data frame in wide format (note that currently, only one-dimensional models are possible but in the future, I might also implement multi-dimensional models). You can specify constraints (as long as they are implemented, see below) on the item parameters. For constraints on the slope parameters, you can currently contrain them to be equal across item ("alphas ~ 1;") or fix them to specific values ("alpha1 =: 0.5 alpha2 =: 0.3 ...;" But please note that currently, either all slopes must be fixed to specific values or all are estimated. This will be extended in the future to allow for some items to have fixed slopes and others to have freely estimated slopes.). The same is possible for the intercepts delta (with "deltas ~ 1;"; but note that fixing intercepts to certain values ha

- For a data frame in long format (note that you must specify the argument `long_data = TRUE`; for the DRTM): Specify the factor formula as "theta =~ counts(itemid::item1) + counts(itemid::item2) ...;" where you replace "count" with the name of the column with responses in your data frame in long format and "itemj" with the correct item identifier as in your data frame in long format and "itemid" with the name of the column in your data frame in long format that contains the item identifier. You need to use the :: between identifier column and respective item identifier. You can specify item parameter constraints as described above. To include covariates on any of the three item parameters, specify "alphas ~ 1 + C1 + C2 ...;" (or "deltas ~ ...;" or "log_nus ~ ...;" respectively), where you replace Ci with the names of the covariates in your data frame in long format. You can include covariates on any subset of parameters and constraints (as described above) on the remaining item parame

Please note that the model specification expects you to use the name for the parameters as explained here. Your items must have the same name as in the data frame. If you just specify the factor formula, the full 2PCMPM with no covariates will be estimated. Each line of specification must start with the correct parameter name as explained above and must end with ; . Note that for the model specification to be successfully passed, the variable names in your data frame must not contain any '(' nor any '::'.}

\item{data}{A data frame either in long or in wide format. For the 2PCMP and the CLRM, wide format is required (which is the default expected format). For the DRTM, long format is required (for which you have to specify `long_format = TRUE`).}

\item{family}{A string indicating the count data family, can be either "cmp" or "poisson".}

\item{data_long}{A boolean. Indicates whether data is in long format. If FALSE, expects data in wide format. Defaults to FALSE.}

\item{person_id}{A character string. Name of the column with person id in long format data frame. Only necessary if data_long = TRUE.}

\item{stand_errors}{A boolean. Indicates whether standard errors for model parameters should be estimated. Defaults to FALSE.}

\item{control}{A list providing control parameters for the estimation.}
}
\description{
Model fitting function for count data IRT models.
}
