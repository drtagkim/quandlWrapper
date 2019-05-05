compdata<-read.csv("data-raw/mergent-companies.csv")
usethis::use_data(compdata,overwrite = TRUE)
#
mapcode<-read.csv("data-raw/mapcode.csv")
names(mapcode) <- c("mapcode","indicator","statement")
usethis::use_data(mapcode,overwrite=TRUE)
