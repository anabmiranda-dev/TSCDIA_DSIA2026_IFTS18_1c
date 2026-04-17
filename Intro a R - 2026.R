#Repaso de conceptos básicos de R

#Librerias
library(dplyr)



#variables

#Variables simples
numero <- 30
print(numero)

ejemplo <-("valor")
str(ejemplo)


install.packages('tensorflow')
#Donde, Numero es el nombre, 
#y <- asigna el valor a la variable

#Las variables automáticamente 
#reconocen el tipo de dato
# Por ejemplo:

numero2 <- 12
str(numero2)

#Me dice que el dato es numérico
#pero las puedo forzar

numero2 <- as.integer(12)
str(numero2)

#Se pueden operar las variables directamente
#por ejemplo:
numero3 <- numero+numero2 

EdadNinos <- 12

#Los operadores matemáticos mas comunes
2+7 #suma
2-9 #resta
5*10 #multiplicación
9/3 #división
9^2 #potencia
10%%3 #Parte entera o resto
9%%3 #Parte entera o resto

#Funciones matemáticas, hay más pero para usar de ejemplo
sqrt(9) #raíz cuadrada
log(2, 10) #log de 2 en base 10
abs (-1) #convertir a valor absoluto

#Operadores Logicos
numeroA <- '22'
str(numeroA)
(numerob <- 30)
11 -> numeroInv
!TRUE #negacion
numero == numeroA #comparación
1 %in% c(4,3,2) #verifico si el numero 1 esta en el vector
numero != numeroA #verifico si los dos números o variables no son iguales
# <,>,<=,>= menor, mayor, menor o igual y mayor o igual
numero > numeroA | numeroA < numeroInv #verdadero si alguna condición es verdadera, o el operador 'O'
numero > numeroA & numeroA < numeroInv #ambas condiciones deben ser verdaderas o 'y'

#Se puede requerir el ingreso de datos en variables usando readline, por ejemplo
nombre <- readline(prompt="Ingrese su nombre: ")
edad <- readline(prompt="Ingrese su edad: ")
print(paste("Mi nombre es",nombre, "y tengo",edad ,"años."))

#Ejemplos de vectores
vector1Random <- sample(1:50)
vector2Random <- sample(1:50)
vectorResultado <- vector1Random+vector2Random

mtcars



# Vector de temperaturas en grados Celsius
temperaturas <- c(22.5, 24.0, 19.8, 21.3, 23.1)

# Vector logico
logico <- c(TRUE, FALSE, TRUE, TRUE, FALSE)

# Vector con nombres de productos - Texto
productos <- c("Laptop", "Tablet", "Smartphone", "Monitor")

#Los vectores solo pueden tener un tipo de datos

#Operatoria entre vectores:
#suma de vectores
temperaturas2 <- temperaturas + temperaturas 
print(temperaturas2)  

#suma dentro del vector
resultado <- sum(vector1Random) + sum(vector2Random)

print(temperaturas)

#Puedo localizar un objeto dentro de un vector
temperaturas2[1]
#acá me devuelve el primer objeto del vector

iris1 <- iris$Species
print(iris1)
iris2 <-iris$Petal.Length
median(iris2)
str(iris1)


#FACTORIZACIÓN DE VECTORES
letras <- c("A","B","A","A","A","A","B","A","C","C","B")
str(letras)
print(letras)
factor(letras)
str(letras)

#Veamos funciones de estadística descriptiva
#funciones de medida central

mean(temperaturas) #me indica la media aritmetica
median(temperaturas) #de los valores el valor medio
names(sort(table(temperaturas), decreasing = TRUE))[1] #Calculo de moda, no hay instrucción dedicada mode no devuelve este dato, sino el tipo de dato de la moda
mode(temperaturas)
temperaturas

#funciones de dispersión
sd(temperaturas) #desvió estándar
var(temperaturas) #Varianza
range(temperaturas) #rangos

#frecuencia y conteo
table(temperaturas)
prop.table(table(temperaturas))

sort(temperaturas)

plot(iris)
#algunas visualizaciones
hist(temperaturas)                          # Histograma
boxplot(temperaturas)                       # Boxplot
plot(density(temperaturas))                 # Densidad
barplot(table(temperaturas))                # Barras de frecuencia
plot(temperaturas)                          #mas generico

#muestreos y rangos
#Muestreos al azar
vectorAlAzar <- sample(0:100, 10, replace=FALSE)
vectorAlAzar
#orden
sort(vectorAlAzar, decreasing=FALSE)

#ejemplo de vector desde un set
autos <- mtcars$mpg

#ejemplo de conversion de vector de una posicion a una simple variable.
iris3 <- as.character(iris1[67])
iris3
str(iris3)

#DATASETS-DATAFRAMES
#Creando dataframes
DF <- data.frame(Col1 = 1:5, #numero de observaciones
                 Col2 = c("Sit1","Sit1","Sit2","Sit2","Sit3"), 
                 Log = c(T,T,F,F,T),
                 Fct = factor(c("A","B","C","B","A")))

#ejemplo de esamblado de un dataframe desde uno prexistente (requiere set penguins_iter)
pinguinitos <- data.frame(penguins_lter$Species,penguins_lter$Region, penguins_lter$Island, penguins_lter$Culmen.Length..mm., penguins_lter$Culmen.Depth..mm., penguins_lter$Flipper.Length..mm.)

head(pinguinitos)
summary(pinguinitos)
glimpse(pinguinitos)
print(DF)

#comparacion logica entre dos data frames
head(pinguinitos)
pinguinitos2 <- pinguinitos
pinguinitos2 == pinguinitos

#Para datasets
summary(DF)       # Resumen por columna: min, max, mean, etc.
str(DF)           # Estructura del objeto: tipo y contenido
library(dplyr)
glimpse(DF)       # Versión compacta (requiere dplyr)

#Datases integrados
datasets::cars #vemos la lista de datasets en datasets::
?cars          #vemos los detalles del dataset

#los datasets integrados no son todos dataframes

glimpse(pinguinitos)
str(pinguinitos)

#carguemos un set integrado para ver como acceder a una variable dentro del set
datasets::mtcars
str(mtcars)
autos <- mtcars

#si quiero cargar una variable del dataframe en un vector
cilindradas <- c(autos$cyl)
caballoFuerza <-c(autos$hp)
cajaCambios <- c(autos$gear)

cilindradas2 <- autos$cyl

cilindradas == cilindradas2


#puedo rearmar el dataframe
autosResumen <- data.frame(cilindradas,caballoFuerza,cajaCambios)
str(autosResumen)

#o alternativamente
autosResumen2 <- autos [, -c(3,5)] #remueve columna 3 y 5

str(autosResumen2)
str(autos)

#o eliminar columnas con dplyr
df <- data.frame(
  nombre = c("Ana", "Luis", "Carlos"),
  edad = c(22, 24, 23),
  nota = c(8.5, 9.2, 7.8),
  eliminar = c(NA, NA, NA)
)

df
# Remover columna 'eliminar'
library(dplyr)
df <- df %>% select(-eliminar)
#o dplyr::select si hay sobreposicion

#Creando funciones
nombre_funcion <- function(argumentos) {
  # cuerpo de la función
  resultado <- ...  # operaciones
  return(resultado) # opcional
}

#por ejemplo
clasificar_ingreso <- function(ingreso) {
  if (ingreso < 30000) {
    return("Bajo")
  } else if (ingreso < 60000) {
    return("Medio")
  } else {
    return("Alto")
  }
}

clasificar_ingreso(70000)

#Por ejemplo
filtrar_por <- function(df, columna, valor) {
  df[df[[columna]] == valor, ]
}

# Ejemplo de uso
clientes <- data.frame(nombre = c("Ana", "Luis", "Carlos"), compra = c(TRUE, FALSE, TRUE))


#aplicacion de la funcion
filtrar_por(clientes, "compra", TRUE)

sample(1:10)

