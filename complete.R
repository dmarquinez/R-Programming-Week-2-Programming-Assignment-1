complete <- function(directory,id=1:332){
  file_names <- list.files(directory)
  nobs <- c()
  data <- 0
  for (i in id) {
    data <- na.omit(read.csv(file=paste(directory,file_names[i],sep="/")))
    nobs <- c(nobs,dim(data)[1])
    }
  d <- data.frame(id=id,nobs=nobs)
  d
}
  