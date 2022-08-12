# Para executar o código = crtl + Enter

# A função sd calcula o desvio padrão. 
# Calcule o desvio padrão entre os números 0 e 100.
sd(c(1:100))

# Calcule a média entre os números 4, 7, 8 e 9. (A resposta deve ser 7).
mean(c(4,7,8,9))

# Instale o pacote swirl.
install.packages("swirl")
library(swirl)

# Atribuindo valor p/ as variáveis numéricas
var_1 <- 10 # CONVENÇÃO
var_1 # imprime 10
ou
var_2 = 20 # será utilizada p/ delimitar parâmetros dentro de funções ou data
# frames
var_2 # imprime 20

a <- (var_1 + var_2)
a <- sd(c(1:50))
a

# Manipulando vetores numéricos
b <- c(5, 1, 7, 89, 63, 78, 8)
max(b)
range(b)  # encontra o maior e o menor
sum(b) # soma de todos os valores
length(b) # mostra a quantidade de elementos
median(b) # mediana
quantile(b) # Os quantis dividem os dados ordenados em q 
# subconjuntos de dados de dimensão essencialmente igual.
# 50% dos valores estão abaixo de 8
# 25% dos valores estão abaixo de 6
summary(b) #resumo dos valores 

# Atribuindo valor p/ as variáveis string
v_char <- c("J", "O", "A", "N", "A")
v_char

v_genes <- c("ATC", "GTC", "ATG")
v_genes

# Acessando valores
v_aleatorio <- (1:10)
v_aleatorio
v_aleatorio[5] 
v_aleatorio[1:4]
v_aleatorio[c(4,6)]
v_aleatorio[-4]
v_aleatorio[4] <- 6
v_aleatorio[4]            

# Listando e removedo objetos 
ls() #mostra as variáveis declaradas até então
rm(v_char) #remove a variável v_char do roll

#Gerando sequências
#seq(from,to,by)
#gerar uma sequencia do 3 até o 11, de 2 em 2
seq(3,11,2)
seq

b <- letters[1:10]
c <- LETTERS[1:10]
b
c

#repete o número 2 três vezes
a <- rep(2,3) 
a

# Gerando dados aleatórios e uniformes
e <- runif(n = 15, min = 10, max = 20)
e
hist(e)

f <- rnorm(n=15, mean = 5, sd = 6)
f

# Gerando amostras aleatórias
sample(x = 1: 15, size = 7)
sample(x = 1: 15, size = 7, replace = TRUE)

# Colocando os dados em ordem
j <- c(1,4,5,29,8,7,1)
j
sort(j) #ordem crescente
sort(j, decreasing = TRUE) #ordem decrescente
order(j) #ordem original
rank(j)

#Matrizes
mat <- matrix(c(1:9), ncol = 3)
mat

x <- 1:8
x

mat_2 <- matrix(x, ncol = 2)
mat_2

# Juntando linhas e colunas de matrizes distintas
ls()
a <- 1:5
a
b <- seq(from = 12, to = 20, by = 2)
b
mat_3 <- cbind (a,b) #une colunas
mat_3

mat_4 <- rbind (a,b) #une linhas
mat_4

# Acessando elementos de uma matriz
mat_4[2,3] #2a linha 3a coluna
mat_4 [,4] #todas as linhas e 4a coluna
mat_4[1:2, 5] #linha 1 e 2 e coluna 5


# DATA FRAMES # diferentes classes
#comandos:
head () #exibe as 6 primeiras obs
tail () #exibe as 6 últimas obs
names () #exibe nome das colunas
str() #apresenta a estrutura do data frame
dim() #exibe o numero de linhas e colunas
rbind() #empilha duas tabelas
cbind() #junta duas tabelas lado a lado

# DATA FRAMES PRONTOS
# banco de dados disponibilizados pelo R
data () #consulta banco de dados disponiveis 
data ("iris") #acessa banco de dados "iris"
dados <- iris #coloca os dados iris dentro de um objeto
rm(iris) #remove iris, evitando dados duplicados no workspace

# criando uma tabela de metadados de pacientes
metadados_pac <- data.frame(
  paciente = c("Joana", "Rafael", "Eduardo", "Matheus", "Luiz", "Guilherme"),
  idade = c("20", "23", "25", "22", "26", "19"),
  sexo = c("feminino", "masculino", "masculino", "masculino", "masculino", "masculino"),
  fumante = c(FALSE, TRUE, TRUE, TRUE, FALSE, FALSE)
)
metadados_pac #visualiza data frame

iris # nome dado ao conjunto de dados que não geramos e queremos estudá-los
?iris


#visualizando as duas primeiras linhas e todas as colunas da tabela
metadados_pac[1:2, ]

names (metadados_pac)

#selecionando a variável que queremos utilizar
metadados_pac$fumante

# LISTAS
x <- c(1:10)
y <- letters[1:5]
a <- list(metadados_pac, x, y)
a

# ACESSANDO ELEMENTOS DE UMA LISTA [[i]]7
a[[3]] #corresponde a y

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

metadados_pac <- data.frame(
  paciente = c("Joana", "Rafael", "Eduardo", "Matheus", "Luiz", "Guilherme"),
  idade = c("20", "23", "25", "22", "26", "19"),
  sexo = c("feminino", "masculino", "masculino", "masculino", "masculino", "masculino"),
  fumante = c(NA,TRUE, TRUE, TRUE, FALSE, FALSE)
)
metadados_pac

is.na(metadados_pac$fumante) #retorna TRUE para o primeiro campo, porque este está vazio
complete.cases(metadados_pac$fumante) #retorna FALSO para o primeiro campo, porque não está completo

metadados_pac$fumante[is.na(metadados_pac$fumante)] <- "Não informado" #após esse comando, todos os campos estão completos

# DIRETÓRIO DE TRABALHO
getwd() #verifica diretorio ==> retorno "C:/Users/Joana/Documents"
setwd("/Users/Joana/Desktop/Repositórios") #importando arquivos para o R desta pasta
dir() #verifica se estou na pasta certa; retorna as pastas q tem dentro da pasta "Repositórios"

#IMPORTAÇÃO DE ARQUIVOS C para o ambiente R
setwd("/Users/Joana/Desktop/Repositórios/repositorio-C")
dir()
setwd("/Users/Joana/Desktop/Repositórios/repositorio-C/4. Vetores")
dir()
setwd("/Users/Joana/Desktop/Repositórios/repositorio-C/4. Vetores/ex_04")
input_C_4_4 <- read.table(file = "main.c", header = F, sep = "|")
input_C_4_4
#O argumento header=TRUE informa que os dados possuem cabeçalho, ou seja, a primeira linha
#contém os nomes dos atributos (variáveis) e a primeira coluna possui o nome das amostras.


#PARA EXTENSÃO .CSV HÁ UM ATALHO
setwd("/Users/Joana/Desktop")
input_csv <- read.csv("Lógica proposicional.csv")
input_csv2 <- read.csv("Cópia de Connect  - Página1.csv") 
# posso excluir os arquivos do computador e os dados irão continuar no RStudio

#IMPORTANDO QUALQUER ARQUIVO QUE NÃO SEJA COMPACTADO
install.packages("rio", dependencies = TRUE)
library(rio)
input_txt <- import(file = "teste.txt")

#IMPORTANDO ARQUIVO COMPACTADO
#não consegui importar .RAR, apenas .ZIP
install.packages("readr")
library(readr)
dir()
input_zip <- read_delim("Arquivo.zip", delim = ";")

#IMPORTANDO APENAS PARTE DE UM ARQUIVO
library("data.table")
install.packages("read.table")
library("read.table")
#arquivo inteiro
input_arquivo_csv <- read.table("arquivo.csv", header = TRUE, sep = ",",
                       colClasses = c("character", "character", "character",
                                      "numeric", "numeric"))


#nao imprime as colunas marcadas com NULL
input_arquivo_csv <- read.table("arquivo.csv", header = TRUE, sep = ",",
                                colClasses = c("NULL", "character", "NULL",
                                               "numeric", "numeric"))

head(input_arquivo_csv) #imprime as 6 primeiras linhas

#IMPORTANDO ARQUIVOS EXCEL (.xlsx)
install.packages("readxl")
library(readxl)
input_xlsx <- readxl::read_xlsx("Connect .xlsx")
dir()

