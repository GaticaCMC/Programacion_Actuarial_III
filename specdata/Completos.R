getwd()
setwd("~/GitHub/Programacion_Actuarial_III/specdata")


completos <- function(directorio, id= 1:332){
  
  casos <- vector("numeric")
  
  
for (i in id){
  
  datos<-formatC(i,width = 3 ,flag = "0")
    numar <- read.csv(paste(datos, ".csv",sep=""), header=T)
    casosc <- complete.cases(numar)
    #casosc
    
      j <- numar[casosc,]
      k <- nrow(j)
       casos <- c(casos,k)
  }
x<- data.frame(id=id,nobs=casos)
x
}
completos("specdata",1:3)






