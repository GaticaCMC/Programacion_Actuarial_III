
m <- matrix(nrow=2, ncol = 3)
m
#cambio de dimensiones de 2x3 a 3x2
dim (m) <- c(3,2)
m
m <- matrix(1:6,3,2)
m
m <- matrix(1:6,3,2,TRUE)
m
m <- matrix(1:6,3,3,T)
m
class(m)
str(m)
dim(m)<- c(2,5)
x<- c(1,2,3)
y<- c("a","b","c")
z<- c(x,y)
z




m1 <- rbind(m,x)
m1
m2 <- cbind(m,x)
m2



rbind(m1,y)
cbind(m2,y)


#Factor
x<- factor(c("si", "no", "si","si","no","si","no"),levels = c("si","no"))
x
table(x)
unclass(x)

x<- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)


#Valores Faltantes

x<- c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x<- c(1,2,NaN,10,3)
is.na(x)
is.nan(x)


#DATA FRAMES

x<- data.frame(Eric = 1:4 , Gus = c(T,T,F,F))
row.names(x) <- c("primero","segundo","tercero","cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <- c("J","K")
x

#Los nombres no son exclusivos de los data frames
x<- 1:3
names(x) #NULL
names(x)<- c("A","B","C")
x

x<- list (a=1, b= 100:91, c=51:60)
x
names(x) <- c("Seq.1","Seq.2","Seq.3")
x

m <- matrix(1:4,2,2)
m
attributes(x)
dimnames(m)<- list(c("fil1","fil2"),c("col1","col2"))
m

m <- matrix(nrow = 5, ncol = 5)
dimnames(m)<- list(c(1:5),c("A","B","C","D","E"))
m

#LECTURA DE DATOS
getwd()
setwd("~/GitHub/Programacion_Actuarial_III")
data <- read.csv("Datos_S&P.csv")
data

data <- read.table("Datos_S&P.csv",T,",")
data

