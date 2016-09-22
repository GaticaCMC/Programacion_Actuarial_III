getwd()
setwd("~/GitHub/Programacion_Actuarial_III/specdata")

mediacontaminante <- function(directorio, contaminante, id = 1:332){
  suma <- numeric()
  for (i in id){
    
    datos <- formatC(i,width = 3 ,flag = "0")  #Sirve para que lea los archivos,
    #en caso de ser 1 digito agrega los "00"antes
    numar <- read.csv(paste(datos, ".csv",sep=""),header = T)  #numera los archivos y concatena el nombre de ellos
    
    if (contaminante == "sulfate"){
      
      #Queremos solo la columna de sulfato
      suma <- c(suma,numar$sulfate)
    } 
    else if (contaminante == "nitrate"){
      
      suma <- c(suma,numar$nitrate)
    } 
    else {
      paste("Error",contaminante,"no se encuentra")
    } 
    
  }
  promedio <- mean(suma, na.rm = T)
  promedio
}


mediacontaminante("specdata","nitrate",5)