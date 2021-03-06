% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/create_documentation.r
\name{create_roxygen_documentation}
\alias{create_roxygen_documentation}
\title{roxygenize an R code file, output the documentation to pdf.}
\usage{
create_roxygen_documentation(file_name, output_directory = ".",
  overwrite = FALSE, check_package = TRUE,
  copy_tmp_files_to = dirname(tempdir()), working_directory = tempdir(),
  ...)
}
\arguments{
\item{file_name}{The name of the R code file to be documented.}

\item{output_directory}{The directory to put the documentation into.}

\item{overwrite}{Overwrite an existing documentation file?}

\item{check_package}{Run R CMD check on the sources?}

\item{copy_tmp_files_to}{path to copy temporary files to. See Note. \cr This
parameter has no effect if make_check is not TRUE.}

\item{working_directory}{A working directory. Defaults to tempdir().
\bold{Warning} the working_directory will be recursively
\code{\link{unlink}}ed. You can erase your disk if you change the default!}

\item{...}{Arguments passed to \code{\link{get_lines_between_tags}}.}
}
\value{
TRUE if pdf creation is successfull, FALSE otherwise.
}
\description{
extract the roxygen parts by using special tags in the code, then wrap
utils::package.skeleton() and roxygen2::roxygenize().
}
\section{Version}{
 $Id: 9bbb752b06d887f2115e37c3e9dadd89e40c49c7 $
}
\examples{
create_template(file_name = 'my_r_file.r', type = 'template')
create_roxygen_documentation('my_r_file.r', overwrite = TRUE)
}
\author{
Dominik Cullmann, <dominik.cullmann@forst.bwl.de>
}

