corr <- function(directory,threshold=0){
  c <- complete(directory)
  vector <- numeric()
  if(any(c[,"nobs"]>threshold)){
    file_names <- list.files(directory)
    c <- filter(c,nobs>threshold) #dplyr package
    for(i in c$id){
      data <- na.omit(read.csv(file=paste(directory,file_names[i],sep="/")))
      vector <- c(vector,cor(data[,"nitrate"],data[,"sulfate"]))   
    }
  }
  vector
}