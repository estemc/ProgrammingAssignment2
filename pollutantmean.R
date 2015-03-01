setwd("C:/Users/.../specdata")
full<-data.frame()
allFiles <- list.files(pattern="*.csv")
pollutantmean<- function(directory,pollutant,id=1:332){
  for (i in id) {
    full <- rbind(full,read.csv(allFiles[i]))
  }
  if (pollutant == "sulfate"){
    return(mean(full$sulfate, na.rm=TRUE))}
  else if (pollutant == "nitrate"){
    return(mean(full$nitrate, na.rm=TRUE))}
}
