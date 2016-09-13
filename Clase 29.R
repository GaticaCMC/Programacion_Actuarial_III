
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

data <- read.table("Datos_S&P.csv",T,",", nrows= 100)
clases <- sapply(data, class) #aplica la funcion class columna por columna para ver que tipo de clase es 

data <- read.table("Datos_S&P.csv",T,",", colClasses = clases)
data

#USO DE dput Y dget

y <- data.frame(a=1, b="a")
dput(y)
dput(y,file= "y.R") #guarda objetos uno es especifico
nueva.y <- dget("y.R")
y
nueva.y

x<- "Programacion Actuarial III"
y<- data.frame(a=1, b="a")
dump (c("x","y"), file= "data.R")
rm(x,y) #elimina objetos
x
y
source("data.R")
x
y

aa <
dput(aa,file= "airquality_CG.R") #guarda objetos uno en especifico
aa
rm(aa)
aa

con <- url ("http://www.fcfm.buap.mx/", "r")
x<- readLines(con, 7)
x

x<- c("a","b","c", "c", "d", "e")
x
x[1] #extraemos elementos con []
x[2]
x[1:4] #también se puede extraer secuencia de elementos
x[x>"b"] # es posible extraer elementos que cuentan con restricción

u<- x == "c" # de igual manera se puede obetener un vector lógico 
u


x<- list (foo = 1:4,bar = 0.6)
x
x[1]  # se extrae el primer elemento de la lista, este es una lista que contiene una secuencia
x[[1]] # se extrae el primer elemento de la lista, ahora es la secuencia en sí
x$bar #se extrae un elemento por nombre
x[["bar"]]
x["bar"]
x$foo[[2]]

x<- list (foo = 1:4,bar = 0.6,baz="Hola")
x[c(1,3)] #extrae el primer y el tercer elemento de una lista

x<- list (foo = 1:4,bar = 0.6,baz="Hola")
x[[c(1,3)]] #extrae el tercer elemento del primer objeto

x<- list(a=list(10,12,14), b= list(3.14, 2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[1]][3]
x[[c(2,1)]]

x<- matrix(1:6,2,3)
x
x[1,2]
  x[2,1]
  x[1,]
  x[,2]
  
x[1,2,drop=F] #ensena matriz de 1x1, drop=F matiene la dimensión

x[1, ,drop=F]
  

x<- list(aardvark=1:5)
x$a  #porque así comienza el nombre del primer elemento de la lista

x[["a"]]
x[["a",exact=F]]


#VALORES FALTANTES
airquality[1:6,]
completos<- complete.cases(airquality)
completos   #si está completo pone TRUE y si no, FALSE

airquality[completos,][1:6,]
airquality[1:6,][completos,]


x<- 1:4; y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y


#CICLOS FOR

for (i in 1:10){
  print(i)
}

x<- c("a","b","c","d")
for (i in 1:4){
  print(x[i])
}

for (i in seq_along(x)){
  print(x[i])
  
}

for (letra in x){
  print(x[i])
}

for (i in 1:4) print(x[i])

m <- matrix(1:6,2,3)
m

for (i in seq_len(nrow(m))){
  for(j in seq_len(ncol(m))){
       print (m[i,j])
  }
}


menor3 <- 0
mayor10 <- 0


for (i in 1:100){
  
z<-5
caminata <- vector("numeric")
while (z>=3 && z<=10){
  print(caminata)
  caminata <- c(caminata,z)
  moneda <- rbinom(1,1,0.5)
  if (moneda == 1){
    z<- z + 1
  } else{
    z<- z - 1
  }
}

if(z > 10){
    mayor10 <- mayor10 + 1
  } else {
    menor3 <- menor3 + 1
  }
  
}
x<- data.frame(mayor10 , menor3)
row.names(x) <- c("Salidas")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <- c("Mayor a 10","Menor a 3")
x

