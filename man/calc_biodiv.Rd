% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mobr_boxplots.R
\name{calc_biodiv}
\alias{calc_biodiv}
\title{Calculate biodiversity statistics from sites by species table.}
\usage{
calc_biodiv(abund_mat, groups, index, effort, rare_thres)
}
\arguments{
\item{abund_mat}{Sites by species table with species abundances
in the respective cells}

\item{groups}{Vector with group labels for the sites. The length
of the vector has to correspond to the number of rows of the
sites by species table.}

\item{index}{The calculated biodiversity indices. The options are
\itemize{
   \item \code{N} ... Number of individuals (total abundance)
   \item \code{S} ... Number of species
   \item \code{S_n} ... Rarefied or extrapolated number of species for n individuals
   \item \code{S_asymp} ... Estimated asymptotic species richness
   \item \code{f_0} ... Estimated number of undetected species 
   \item \code{pct_rare} ... The percent of rare species
   \item \code{PIE} ... Hurlbert's PIE (Probability of Interspecific Encounter)
   \item \code{S_PIE} ... Effective number of species based on PIE
}

See the documentation of \code{\link{get_mob_stats}} for further details on the
biodiversity indices.}

\item{effort}{The standardized number of individuals used for the 
calculation of rarefied species richness. This can a be
single value or an integer vector.}

\item{rare_thres}{The threshold for determining if a species is rare or not. 
It can ranges from (0, 1] and defaults to 0.05 which specifies that any 
species with less than or equal to 5% of the total abundance in a sample is
considered rare.}
}
\value{
A dataframe with four columns:
\itemize{
   \item \code{group} ... Group label for sites
   \item \code{index} ... Name of the biodiversity index
   \item \code{effort} ... Sampling effort for rarefeid richness 
   (NA for the other indices)
   \item \code{value} ... Value of the biodiversity index
}
}
\description{
Calculate biodiversity statistics from sites by species table.
}
\details{
This function is primarily intended as auxiliary function used in
\code{\link{get_mob_stats}}, but can be also used directly for data exploration.
}
\author{
Felix May and Dan McGlinn
}
