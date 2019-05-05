#' MER
#'
#' https://www.quandl.com/databases/MF1/documentation
#' Mergent Global Fundamental Data에서 제공한 데이터를 검색할 수 있습니다.
#' Quandly의 api_key를 첫번째 인자로, compdata의 compnumber를 두번째 인자로 입력합니다.
#'
#' @export
#' @param api_key API Key object (see also, setapi())
#' @param compnum company number (see also, compdata)
get_mer_data<-function(api_key,compnum) {
  if(!setapi(api_key)) {
    return(NULL)
  }
  Quandl.datatable('MER/F1',compnumber=as.character(compnum))%>%
    as_tibble()
}

#' API setup
#'
#' @export
#' @param Quandl 홈페이지에서 받은 api_key입니다.
setapi <- function(your_api_key=NULL) {
  if(is.null(your_api_key)) {
    cat("Visit https://www.quandl.com/ to get an API key.\n")
    return(FALSE)
  }
  Quandl.api_key(your_api_key)
  return(TRUE)
}
#' Test Key
#' @export
test_key<-function() {
  return("xnwKJ-nJVgnVt2JEDpf2")
}
