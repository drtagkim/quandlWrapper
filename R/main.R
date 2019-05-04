#' MER
#'
#' @param api_key API Key object (see also, setapi())
#' @param compnum company number (see also, compdata)
#' @param pagination If pagination is TRUE, all data are retrieved.
get_mer_data<-function(api_key,compnum,pagination=FALSE) {
  Quandl::Quandl.database('MER/F1',compnumber=as.character(compnum),pagination=pagination)%>%
    as_tibble()
}
