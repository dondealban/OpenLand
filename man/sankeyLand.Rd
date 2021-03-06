% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/otherplots.R
\name{sankeyLand}
\alias{sankeyLand}
\title{Sankey diagram of LUC transitions (one or multistep)}
\usage{
sankeyLand(dataset, legendtable, iterations = 0)
}
\arguments{
\item{dataset}{A table of the multi step (\code{lulc_Mulstistep}).
or one step transitions (\code{lulc_OneStep}) generated by \code{\link{contingencyTable}}.}

\item{legendtable}{A table containing the LUC legend items and their respective
color (\code{tb_legend}).}

\item{iterations}{numeric. Number of iterations in the diagram layout for
computation of the depth (y-position) of each node. See \code{\link[networkD3]{sankeyNetwork}}.}
}
\value{
A sankey diagram
}
\description{
A sankey showing the one or multi step LUC transitions during the analysed period.
}
\examples{

# editing the category names

SL_2002_2014$tb_legend$categoryName <- factor(c("Ap", "FF", "SA", "SG", "aa", "SF",
                                             "Agua", "Iu", "Ac", "R", "Im"),
                                     levels = c("FF", "SF", "SA", "SG", "aa", "Ap",
                                              "Ac", "Im", "Iu", "Agua", "R"))

SL_2002_2014$tb_legend$color <- c("#FFE4B5", "#228B22", "#00FF00", "#CAFF70",
                                  "#EE6363", "#00CD00", "#436EEE", "#FFAEB9",
                                  "#FFA54F", "#68228B", "#636363")

# onestep sankey
sankeyLand(dataset = SL_2002_2014$lulc_Onestep,
           legendtable = SL_2002_2014$tb_legend)

# multistep sankey
sankeyLand(dataset = SL_2002_2014$lulc_Multistep,
           legendtable = SL_2002_2014$tb_legend)


}
\seealso{
\code{\link[networkD3]{sankeyNetwork}}
}
