pollutantmean <- function(directory,pollutant,id=1:332){
  x <- div <- 0
  file_names <- list.files(directory)
  for (i in id) {
    data <- read.csv(file=paste(directory,file_names[i],sep="/"))
    x <- x + sum(data[,pollutant],na.rm=TRUE)
    div <-div + length(na.omit(data[,pollutant]))
  }
  x <- x/div
  x
}