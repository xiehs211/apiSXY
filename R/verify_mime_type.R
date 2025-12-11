verify_mime_type <- function(result) {

    type <- httr::http_type(result)

    if (!grepl("json", type, ignore.case = TRUE)) {
        warning(sprintf(
            "Response Content-Type '%s' is not JSON; attempting to parse payload anyway.",
            type
        ))
    }

    invisible(TRUE)

}