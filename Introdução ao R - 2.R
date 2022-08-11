# MANEJO DE DADOS
# para verificar o tipo de cada objeto usamos a função class()
a <- 5
class(a) #retorna numeric
is.integer(a) #retorna FALSE
is.double(a) #retorna TRUE
is.character(a) #retorna FALSE
is.numeric(a) #retorna TRUE

x <- c(15L, 36L) #o L faz o número retornar inteiro (ocupa menos espaço de memória)
x
class(x) #retorna integer

#conversão de tipos de variáveis
age <- 20
pwd <- "FALSE" #tudo entre aspas equivale a caractere
pwd
class(pwd)
as.logical(age) #retorna TRUE pq age != 0
b = as.logical(pwd) #retorna FALSE sem aspas
b
as.numeric(b) #retorna 0 porque b corresponde a FALSE

#VETORES FALTANTES
data("ToothGrowth")
data_ToothGrowth <- ToothGrowth
rm(ToothGrowth)
class(data_ToothGrowth)
summary(data_ToothGrowth)
str(data_ToothGrowth)
names(data_ToothGrowth)
is.na(data_ToothGrowth)
complete.cases(data_ToothGrowth$len)
View(data_ToothGrowth)
