#' Internal helpers for computing OpenAI endpoints
#'
#' These helpers allow overriding the default API base by setting
#' OPENAI_API_URL in the environment.
#' @keywords internal
openai_api_base <- function() {
    base <- Sys.getenv("OPENAI_API_URL")

    if (!nzchar(base)) {
        base <- "https://api.openai.com/v1"
    }

    sub("/+$", "", base)
}

#' @keywords internal
build_openai_url <- function(path = NULL) {
    base <- openai_api_base()

    if (is.null(path) || !length(path)) {
        return(base)
    }

    # glue objects keep class, make sure we work with a character scalar
    path <- as.character(path[[1]])
    path <- gsub("^/+", "", path)

    if (!nzchar(path)) {
        return(base)
    }

    paste0(base, "/", path)
}


