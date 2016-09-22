getwd()
setwd("~/GitHub/Programacion_Actuarial_III/specdata")


corr <- function(directorio, horizonte= 0){
   x <- vector("numeric")
   t <- vector("numeric")
   
   for (i in 1:332){
    
    datos<-formatC(i,width = 3 ,flag = "0")
    numar <- read.csv(paste(datos, ".csv",sep=""), header=T)
    casosc <- complete.cases(numar)
    
    j <- numar[casosc,]
    if (i >= horizonte) {
      
      x <-  cor(j[2],j[3])
      y <-as.vector(x)
      t <- c(t,y)
    
    }
    
   }
  
  t
}
corr("specdata",10)
