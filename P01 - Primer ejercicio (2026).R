# Primer Ejercicio

#SE PERMITE INVESITGAR POR FUERA DE LOS MATERIALES DE SER NECESARIO
#AL FINALIZAR LA CLASE ENVIEN UNA COPIA POR GRUPO A emilio.leon@bue.edu.ar


#Asigno variable, nombrando la variable y usando <- para asignar el valor

NumeroVariable <- 3
print(NumeroVariable)

#al reves tambien funciona
204 -> NumeroInv
print(NumeroInv)

#El tipo de dato que asigno se define en la asignación.

elmejordelmundo <- "Lionel Messi"
print(elmejordelmundo)

#Puedo operar entre numeros y variables facilmente

1+1

Sumador1 <- 10
Sumador2 <- 5
print(Sumador1+Sumador2)

#Operadores matematicos básicos
2+7 #suma
2-9 #resta
5*10 #multiplicación
9/3 #division
9^2 #potencia
10%%3 #Parte entera o resto
9%%3 #Parte entera o resto

#Operadores lógicos
!TRUE #negacion
Numero == NumeroA #comparacion
1 %in% c(4,3,2) #verifico si el numero 1 esta en el vector
Numero != NumeroA #verifico si los dos numeros o variables no son iguales
# <,>,<=,>= menor, mayor, menor o igual y mayor o igual

Numero > NumeroA | NumeroA < NumeroInv #verdadero si alguna condicion es verdadera, o el operador 'O'
Numero > NumeroA & NumeroA < NumeroInv #ambas condiciones deben ser verdaeras o 'y'

#Los conjuntos de datos se pueden crear con esta estructura:

bolsaDeDatos <- c(5,6,7,8,9)
print (bolsaDeDatos)
plot(bolsaDeDatos)

#Notas
#Las variables pueden definirse por tipo, usando as.<type>, donde type es variable, por ejemplo:
var1 <- as.integer(5) #asignando como entero
print(var1) #imprimo el entero
var2 <-as.Date(3021) #asignando como fecha
print(var2) #imprimo la fecha
#puedo ver los objetos en memoria en cualquier momento
print(ls.str())
#otros ejemplos

var3 <- as.numeric(5)
var4 <- as.integer(5)
var5 <- as.complex(5i) #no se asusten, no vamos a entrar con números imaginarios, solo para que sepan que se puede.

#Se puede requerir el ingreso de datos en variables usando readline, por ejemplo
nombre <- readline(prompt="Ingrese su nombre: ")
edad <- readline(prompt="Ingrese su edad: ")
print(paste("Mi nombre es",nombre, "y tengo",edad ,"años."))

#Vectores - Los vimos en la guia anterior, la estructura es simple: <- vector <- c(5,6,7,8,9)
vector <- c(5,6,10,8,9,8)

#Podemos hacer un ploteo simple de cualquier vector
plot(vector)

#Funciones estadísticas básicas

print(mean(vector)) #promedio
max (vector) #maximo
min (vector) #minimo
median (vector) #valor medio, de la secuencia ordenada
mode (vector) #valor mas comun

#Hay funciones para percentiles y quantiles los veremos mas adelante

#Funciones matemáticas simples
sum(vector)
prod(vector)
#restos, sirven para divisibilidad
10%%2
13%%2
15%%5

#existen tambien, funciones trigonométricas, logaritmicas, etc.

#rangos
print(1:10)

#Muestreos al azar
sample(0:100, 10, replace=TRUE)

#vista de lista
lista <- c(1:10)
print (head(lista))
print (head(lista,3)) #o para limitar, alternativamente para ver los ultimos, usar tail.

#dataframes/datasets
dataset <- data.frame(mes = character(),
                      temperatura = numeric(),
                      precipitaciones = numeric(),
                      humedad = numeric())

#Creando dataframes
DF <- data.frame(Col1 = 1:5, #numero de observaciones
                 Col2 = c("Sit1","Sit1","Sit2","Sit2","Sit3"), 
                 Log = c(T,T,F,F,T),
                 Fct = factor(c("A","B","C","B","A")))

print(DF)

#Ordenado
sort(lista,decreasing=FALSE)

# Datasets integrados a R

morley #datos de velocidad de la luz en distintos medios
nhtemp #promedio de temperaturas por año en New Haven (vector)
mtcars #Pruebas de distintos vehiculos
nottem #temperaturas promedio en nottingham (matriz)
iris #medidas de distintas flores

?mtcars #para ver información de este dataset
#mas datasets integrados con:
#datasets::
datasets::airmiles

#Para asignar datos a un dataset:
Data_autos <- mtcars

#Si quisiera encontrar el max y minimo de hp de los vehiculos en el dataset:

max(Data_autos$hp)
min(Data_autos$hp)

#plotear vectores
plot(c(7,9,3,4,5,3,7,8))
plot(mtcars$hp)


#Ejercicios
#  ---------------------------------------
# Verificamos si funciona R:

# Crear un hola mundo
saludar <- "Hola Mundo"
print(saludar)

# Crear una suma de dos variables en forma directa y con variables

5+7

A <- 5
B <- 7
C <- A + B
Print(C)


# Crear una resta de dos variables en forma directa y con variables

9-6

A <- 9
B <- 6
C <- A - B
print(C)


# Calcular la potencia en forma directa y con variables

9^2

Base <- 9
Exponente <- 2 
Potencia <- Base^Exponente
print(Potencia)


# plotear un conjunto de datos
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(2, 4, 5, 7, 6, 8, 9, 11, 12, 14)

plot(x, y,
     main = "Gráfico de Dispersión: X vs Y",
     xlab = "Variable Independiente (X)",
     ylab = "Variable Dependiente (Y)",
     col = "blue",
     pch = 19,    
     cex = 1.5)


#Ejercicios iniciales

#1 - Escriba un programa de R para tomar la entrada del usuario (nombre y edad) y mostrar los valores.

print("Formulario de datos personales")
nombre <- readline(prompt="Nombre: ")
edad <- readline(prompt="Edad: ")
print(paste("Su nombre es",nombre, "y tiene",edad ,"años."))


#2 - Escriba un programa de R para obtener los detalles de los objetos en memoria. Hacerlo con un vector, variables y finalmente con un set de datos integrados.

#Vector
vector <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
summary(vector)

#Variables
print("Formulario de datos personales")
nombre <- readline(prompt="Nombre: ")
edad <- readline(prompt="Edad: ")

print("Detalles de  variable:")
print(nombre)
summary(nombre)

print("Detalles de variable:")
print(edad)
summary(edad)

#Set de datos integrados
print("Detalles del dataset mtcars:")
summary(mtcars)


#3 - Escribe un programa R para crear una secuencia de números del 10 al 50 y encuentra la media de los números del 20 al 60 y la suma de los números del 51 al 91.

secuencia_10_50 <- 10:50
print(secuencia_10_50)

media_20_60 <- mean(20:60)
print(media_20_60)

suma_51_91 <- sum(51:91)
print(suma_51_91)


#4 - Escribe un programa de R para crear un vector que contenga 10 valores enteros aleatorios entre -10 y +10.

vector_aleatorio <- sample(-10:10, 10, replace = TRUE)
print(vector_aleatorio)


#5 - Escribe un programa para imprimir únicamente los diez primeros vehículos del dataset de mtcars. Adicionalmente, que liste aparte las 5 primeras cilindradas.

data(mtcars)

autos10 <- head(mtcars, 10)
print(autos10)

cilindradas5 <- mtcars$cyl[1:5]
print(cilindradas5)


#6 - Cual es el promedio de cilindrada de los vehículos en mtcars?

data(mtcars)
promedio <- mean(mtcars$cyl)
print(paste("El promedio de cilindrada del set mtcars es:", promedio))


#7 -Escribe un programa para guardar todos los hp de los vehículos de mtcars en un vector, calcular modo, media y mediana, e imprimir la información. Luego, ordenar los datos y mostrar los 10 superiores

data(mtcars)
hpvector <- mtcars$hp
mediana <- median(hpvector)
media <- mean(hpvector)

tabla_frecuencias <- table(hpvector)
moda <- as.numeric(names(tabla_frecuencias)[tabla_frecuencias == max(tabla_frecuencias)])

print(paste("La moda es: ", moda))
print(paste("La media es: ", media))
print(paste("La mediana es: ", mediana))

top10 <- head(sort(hpvector, decreasing = TRUE), 10)

print("Top 10 HP ordenados de mayor a menor:")
print(top10)



#8 (INVESTIGAR) Escribe un programa que contenga 3 vectores con 5 numeros al azar, luego, unir los tres vectores en una matriz, finalmente que muestre el contenido de la matriz, en cada ejecución la matriz debe cambiar (hint: cbind)

vector1 <- sample(1:100, 5)
vector2 <- sample(1:100, 5)
vector3 <- sample(1:100, 5)
matriz <- cbind(vector1, vector2, vector3)
print(matriz)


#9 - Usando el dataset notten, escribir un programa que me indique la temperatura mas baja de todo el set, la maxima, y despues la minima y maxima por mes, y finalmente el minimo, maximo y promedio por año.

#Maxima y minima historica
temp_min_total <- min(nottem)
temp_max_total <- max(nottem)

#Minima y maxima por mes
data_nottem <- data.frame(
  Temperatura = as.numeric(nottem),
  Ano = floor(time(nottem)),
  Mes = cycle(nottem)
)

library(dplyr)
temp_mes <- data_nottem %>%
  group_by(Mes) %>%
  summarise(
    Minima = min(Temperatura),
    Maxima = max(Temperatura)
  )

#Minimo, maximo y promedio por año
temp_ano <- data_nottem %>%
  group_by(Ano) %>%
  summarise(
    Minimo = min(Temperatura),
    Maximo = max(Temperatura),
    Promedio = mean(Temperatura)
  )


#10 - Crear un dataset que contenga el nombre, apellido, edad, año de nacimiento, mes de nacimiento y día de nacimiento de cada miembro de su grupo. Puede hacerse directamente o con cbind. Una vez hecho, que muestre el contenido, que indique la edad maxima, la minima y el promedio de edad del grupo.

nombres   <- c("Ana Belen", "Fernando", "Pablo", "Florencia")
apellidos <- c("Orellana Miranda", "Solari", "Dell'Orco", "Enciso")
edades    <- c(24, 30, 39, 28)
anos     <- c(2002, 1996, 1986, 1998)
meses     <- c("Diciembre", "Agosto", "Diciembre", "Diciembre")
dias      <- c(15, 2, 28, 10)


grupo_df <- data.frame(
  Nombre = nombres,
  Apellido = apellidos,
  Edad = edades,
  Ano_Nacimiento = anos,
  Mes_Nacimiento = meses,
  Dia_Nacimiento = dias
)

print("--- Contenido del Grupo ---")
print(grupo_df)

edad_maxima   <- max(grupo_df$Edad)
edad_minima   <- min(grupo_df$Edad)
edad_promedio <- mean(grupo_df$Edad)

print("--- Estadísticas de Edad ---")
print(paste("Edad Máxima:  ", edad_maxima))
print(paste("Edad Mínima:  ", edad_minima))
print(paste("Edad Promedio:", edad_promedio))


#11 - (INVESTIGAR) Usando el dataset creado en el ejercicio 10, imprimir el resumen de la información. Probar de hacer lo mismo con iris.

print("--- RESUMEN DATASET GRUPO ---")
summary(grupo_df)

print("--- RESUMEN DATASET IRIS ---")
summary(iris)


#12 Del set IRIS, ordenar indicar el promedio de longitud de pétalos, solamente de la especie setosa. Luego indicar el máximo de longitud de pétalo, solo de la especie virginica. (Se puede resolver solo con lo aclarado en esta guía pero hay formas mas elegantes de hacerlo)

#R1
data(iris)
promedio_setosa <- mean(iris$Petal.Length[iris$Species == "setosa"])
maximo_virginica <- max(iris$Petal.Length[iris$Species == "virginica"])

#R2
iris %>%
  group_by(Species) %>%
  summarise(
    Promedio_Petalo = mean(Petal.Length),
    Maximo_Petalo = max(Petal.Length)
  ) %>%
  filter(Species %in% c("setosa", "virginica"))


#13 Usando el dataset de nhtemp, cual es el promedio total de temperaturas? cual es el promedio total de temperaturas entre 1912 y 1922, y cual es el promedio de temperaturas entre 1961 y 1971. En todos los casos, cual es el mínimo y el máximo.

#Total
promedio <- mean(nhtemp)
min <- min(nottem)
max <- max(nhtemp)

#Período 1: 1912 - 1922
periodo_1 <- window(nhtemp, start = 1912, end = 1922)
prom_1 <- mean(periodo_1)
min_1  <- min(periodo_1)
max_1  <- max(periodo_1)

#Período 2: 1961 - 1971
periodo_2 <- window(nhtemp, start = 1961, end = 1971)
prom_2 <- mean(periodo_2)
min_2  <- min(periodo_2)
max_2  <- max(periodo_2)


#13 Usando el dataset mtcars, indicar cuantos vehículos tienen caja de cambios en números impares

vehiculos_impares <- mtcars[mtcars$gear %% 2 != 0, ]
cantidad_impares <- nrow(vehiculos_impares)


#14 Calcular la relación entre los cilindros y el hp de los vehículos en mtcars y mostrarlo. Luego calcular, modo, mediana y promedio

#Relación: HP promedio por cada cantidad de cilindros
relacion_cyl_hp <- aggregate(hp ~ cyl, data = mtcars, FUN = mean)

colnames(relacion_cyl_hp) <- c("Cilindros", "HP_Promedio")
print("--- Relación: Potencia promedio según cilindrada ---")
print(relacion_cyl_hp)

#Cálculos Estadísticos del HP (Todo el dataset)

promedio_hp <- mean(mtcars$hp)
mediana_hp <- median(mtcars$hp)

# Modo (R no tiene una función 'mode' estadística integrada, la creamos)

calcular_moda <- function(x) {
  tabla <- table(x)
  moda <- as.numeric(names(tabla[tabla == max(tabla)]))
  return(moda)
}
moda_hp <- calcular_moda(mtcars$hp)


#15 - Usando cualquier dataset en datasets::, hacer un estudio aplicando todo lo visto hasta ahora, este ejercicio es libre, pero se pide al menos un resumen, mediana, modo, promedio, alguna relación, top de información, etc. Esta información tiene que tener sentido y ser consistente dentro de los datos analizados.

# 1. Preparación y Resumen General
# El dataset registra: weight (peso), Time (días), Chick (ID pollito) y Diet (1 a 4)
print("--- RESUMEN GENERAL DEL CRECIMIENTO ---")
summary(ChickWeight)

# 2. Estadísticas Descriptivas del Peso (Weight)
promedio_peso <- mean(ChickWeight$weight)
mediana_peso  <- median(ChickWeight$weight)

# Función para calcular la moda
calcular_moda <- function(x) {
  tabla <- table(x)
  return(as.numeric(names(tabla[tabla == max(tabla)])))
}
moda_peso <- calcular_moda(ChickWeight$weight)

print(paste("--- ESTADÍSTICAS DE PESO (Gramos) ---"))
print(paste("Promedio:", promedio_peso))
print(paste("Mediana :", mediana_peso))
print(paste("Modo    :", moda_peso, "(Peso más frecuente al nacer)"))

# 3. Relación: Rendimiento por Dieta
# Analizamos el peso promedio final para ver cuál dieta es más efectiva
# Filtramos por el último día de medición (Tiempo 21)
pesos_finales <- ChickWeight[ChickWeight$Time == 21, ]

relacion_dieta_peso <- aggregate(weight ~ Diet, data = pesos_finales, FUN = mean)
colnames(relacion_dieta_peso) <- c("Dieta", "Peso_Final_Promedio")

print(paste("--- RELACIÓN: EFECTIVIDAD POR DIETA (Día 21) ---"))
print(relacion_dieta_peso)

# 4. Top de Información: Los 5 pollitos más grandes al final del estudio
top_5_pollitos <- pesos_finales[order(-pesos_finales$weight), ]
top_5_pollitos <- head(top_5_pollitos, 5)

print(paste("--- TOP 5 POLLITOS MÁS PESADOS (Final del estudio) ---"))
print(top_5_pollitos[, c("Chick", "weight", "Diet")])

# 5. Análisis de Extremos
# Queremos saber la diferencia de peso entre el nacer y el final
peso_min_nacer <- min(ChickWeight$weight[ChickWeight$Time == 0])
peso_max_final <- max(ChickWeight$weight[ChickWeight$Time == 21])

print(paste("--- CONSISTENCIA DE DATOS ---"))
print(paste("El estudio inició con pollitos de:", peso_min_nacer, "g"))
print(paste("El peso máximo alcanzado fue de:", peso_max_final, "g"))