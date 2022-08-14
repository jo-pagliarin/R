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

metadados_pac <- data.frame(
  paciente = c("Joana", "Rafael", "Eduardo", "Matheus", "Luiz", "Guilherme"),
  idade = c("20", "23", "25", "22", "26", "19"),
  sexo = c("feminino", "masculino", "masculino", "masculino", "masculino", "masculino"),
  fumante = c(NA,TRUE, TRUE, TRUE, FALSE, FALSE)
)
metadados_pac

#EXPORTAÇAO DE ARQUIVOS DO AMBIENTE R PARA ALGUM DIRETÓRIO DO MEU PC
install.packages("rio")
library("rio")
export(metadados_pac, file = "metadados_pac.csv")
getwd()
dir()

#EXPORTANDO PARA UMA PLANILHA EXISTENTE "TESTE.XLSX"
export(metadados_pac, file = "teste.xlsx", which = "dados")
#dados é o nome da "aba" da planilha
#assim é possível adicionar dados em uma planilha existente,
#alternando somente a aba


numeros <- data.frame(
  primos = c(1,2,3,5,7,9,13),
  pares = c(2,4,6,8,10,12,14),
  ímpares = c(1,3,5,7,9,11,13)
)

export(numeros, file = "teste.xlsx", which = "NOVA")
#a aba "NOVA" será criada
#não dá certo exportar dados para uma aba existente

#Manipulando dados com pacotes básicos
download.file(
  url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data',
      destfile = "wbdc.data")
brca <- read.table(file = "wbdc.data", sep = ',')
colnames(brca)
View(brca)
colnames(brca)[2] <- "COLUNA2"#mudar o nome da coluna 2
colnames(brca)
#mudar o nome de várias colunas
colnames(brca) <- c('id_number', 'diagnosis', 'radius_mean', 'texture_mean') #pega da 1 até 4col
colnames(brca)[5:7] <- c("symmetry_mean", "area_mean", "perimeter_mean")
View(brca)
head(brca)
View(brca)
class(brca)
summary(brca)
#somente a coluna 'diagnosis' apresenta caracteres e não numeros inteiros; podemos muda-la
#para fatores; B para amostras benignas e M para malignas
summary(brca$diagnosis)
brca$diagnosis <- as.factor(brca$diagnosis) #agora o programa apresenta o numero de amostras
#benignas e malignas; já muda automticamente para B e para M

#Acessando e manipulando dados
#visualizando as 2,3,4 colunas e todas as linhas dessas colunas
brca[,c(2,3,4)]
#visualizando as linhas 2,4,6 das colunas 2,3,4
brca[c(2,4,6),c(2,3,4)]
#visualizando as colunas diagnosis, radius_mean e texture_mean para as linhas 2,4,6
brca[c(2,4,6), c("diagnosis", "radius_mean", "texture_mean")]
#excluir primeira coluna
brca[,-1]
#criando novo data frame para as colunas de interesse
brca2 <- brca[,c("diagnosis", "radius_mean", "texture_mean",
                 "symmetry_mean", "area_mean", "perimeter_mean" )]
View(brca2)
#adicionar nona coluna com a razão do perímetro pelo raio dos nódulos
brca2$perimeter.radius <- brca2$perimeter_mean/brca2$radius_mean

#Filtrando informações
#Filtrando apenas amostras benignas
benign <- brca[brca$diagnosis == "B",] #pega todas as linhas cujo valor é B
summary(benign) #mostra 357 amostras
summary(brca$diagnosis) #mostra 569 amostras
malign <- brca[brca$diagnosis != "B", ]
summary(malign) #mostra 212 amostras
#Filtrando tumores com raio maior que 16
radiusM16 <- brca[brca$radius_mean > 16,]
summary(radiusM16) #141 diagnósticos
radiusm16 <- brca[brca$radius_mean < 16,]
summary(radiusm16) #mostra 428
radius16 <- brca[brca$radius_mean == 16,]
summary(radius16) #mostra 0

#Adicionando condições
#filtrar apenas amostras com raio maior que 16 e benignas
radiusM16B <- brca[brca$radius_mean > 16 & brca$diagnosis == "B",]
summary(radiusM16B) #mostra 6 casos
# condição OU usa |


#Adicionando linhas: rbind
View(brca2) 
dim(brca2) #569 linhas e 7 colunas 
           #nova linha de brca2 terá de ter 7 variáveis 
novaamostra <- rbind(c("M", 17, 10, 120, 1000, 0.2, 0.0117), brca2)
summary(novaamostra)
dim(brca2) #569 linhas e 7 colunas 
dim(novaamostra) #570 linhas e 7 colunas #foi criada uma novo dataframe
View(novaamostra) #a linha recém criada aparece em primeiro lugar

#Ordenando linhas de um data frame
data("BOD")
dados <- BOD
rm(BOD)
View(dados)

#Ordenou coluna "demand" em ordem crescente
dados <- dados[order(dados$demand),]
dados <- dados[order(dados$demand, decreasing = F),]

#Ordenou coluna "demand" em ordem decrescente
dados <- dados[order(dados$demand, decreasing = T),]

#Testando ordenação com pacotes
getwd()
setwd("/Users/Joana/Desktop/RStudio") #lembrar de mudar a direção da barra
download.file(
  url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data',
  destfile = "wbdc.data")
brca <- read.table(file = "wbdc.data", sep = ',')
View(brca)
brca <- brca[order(brca$V1),]
brca <- brca[order(brca$V1, decreasing = T),]

# Juntando colunas
View(brca)
dim(brca) #apresenta dimensões = 569 linhas e 32 colunas
# Criando novo dama frame com as 3 primeiras colunas
SegundaTabela <- brca[,1:3]
View(SegundaTabela)
dim(SegundaTabela) #569 linhas e 3 colunas
TerceiraTabela <- brca[,4:6]
#Unindo tabelas
TabelaUnida <- cbind(SegundaTabela,TerceiraTabela)
View(TabelaUnida)
#Adicionando uma coluna de brca em uma nova tabela
NovaTabela <- cbind(TabelaUnida, brca$V7) #recebe todas as colunas de TabelaUnida (V1 a V6) + a V7 da brca
View(NovaTabela)
NovaTabela$V7 <- brca$V8 #Isso substitui os dados da coluna 7 da nova tabela pelos dados da coluna 8 da tabela brca, mas não deleta a coluna 7
#deletar a coluna 7 da NovaTabela não é o ideal, melhor criar outro data frame com as colunas de interesse
#ao tentar excluir a coluna 7, o R cria uma nova coluna com o nome brca com os mesmos dados
NovaTabela2 <- cbind(NovaTabela, V7 = brca$V7)
View(NovaTabela2)
#Mesmo processo feito em NovaTabela, a diferença é q mudamos o nome de brca$V7 para V7

#lembrar de remover os objetos que não estarão mais em uso com a função rm()

#MANIPULAÇÃO DE DADOS COM TIDYVERSE
#pacotes: dplyr e tidyr #código limpo e legível
install.packages("tidyr")
library(tidyr)

#FILTRAR OBSERVAÇÕES (dentro do pacote dplyr tem a função filter, que também está presente no pacote stats)

#Criando bando de dados
alunos <- data.frame(
  nome = c("Jean", "Dan", "Pepe", "Bruna", "Rafaela"),
  altura = c(1.74, 1.7, 1.73, 1.65, 1.68),
  massa = c(69, 66, NA, 55, 53),
  sexo = c("masculino", "masculino", "masculino", "feminino", "feminino")
)
alunos
View(alunos)

#Filtrar dados = dplyr
filter(alunos, altura >= 1.7)
dplyr::filter(alunos, altura >= 1.7) #assim temos certeza q estamos carregando a função certa 


#SELECIONANDO VARIÁVEIS (função select() dentro do pacote dplyr)
select(alunos, nome, sexo, massa)
select(alunos, ends_with("a")) #retorna as colunas alturA e massA

#MODIFICAÇÃO DE DADOS
alunos_2 <- mutate(alunos, imc = (massa/altura^2)) #incluiu coluna imc na tabela alunis
View(alunos_2)
#tabela alunos_2 é igual a tabela alunos

#RENOMEANDO VARIÁVEIS
#função rename() do pacote dplyr
alunos <- rename(alunos,
      altura.m = altura,
      massa.kg = massa)
                 
#USO DE PIPES (%>%)
#OPERAÇÕES MÚLTIPLAS EM SEQUÊNCIA
#PACOTE MAGRITTR #simplifica o código
install.packages("magrittr")
library(magrittr)

#Sem pipes
select(filter(alunos_2, imc >= 22), nome, massa)

#Com pipes
alunos_2 %>%
  filter(imc>= 22) %>%
  select(nome,massa,imc) 

#media, desvio padrao e qntdd das massas separando por sexo
alunos %>%
  group_by(sexo) %>%
  summarise(media = mean(massa.kg, na.rm = T),
            sd.massa = sd(massa.kg, na.rm = T), 
            total.massa = n())

# na.rm = T permite cálculos mesmo que haja dados faltantes; caso contrário, o valor dos campos será NA

#ORDENANDO DADOS
#função arrange() do pacote dplyr
#ordena de forma descrescente a massa dos alunos

alunos %>%
  arrange(desc(massa.kg))

#para ordenar de forma crescente, só tirar o desc

#agrupando por sexo e ordenando pela massa

rm(alunos_2)

alunos_2 <- data.frame(
  nome = c("Jean", "Dan", "Pepe", "Bruna", "Rafaela"),
  altura = c(1.74, 1.7, 1.73, 1.8, 1.68),
  massa = c(69, 66, NA, 80, 53),
  sexo = c("masculino", "masculino", "masculino", "feminino", "feminino")
)
alunos_2
#sequencia original das massas: 69M, 66M, NA, 80F, 53F

alunos_2 %>%
  group_by(sexo) %>%
  arrange(massa, .by_group = T)

#ordena massas de forma crescente de acordo com o sexo, começando pelo feminino
#saída: 53F, 80F, 66M, 69M, NA

alunos_2 %>%
  group_by(sexo) %>%
  arrange(massa, .by_group = F)
#ordena massas de forma crescente misturado sexos
#saída: 53F, 66M, 69M, 80F, NA

alunos_2 %>%
  arrange(massa)
#retorna a mesma coisa que o código anterior
#nao faz sentido usar o código anterior


#COMBINANDO VARIÁVEIS (combinando colunas)
#função bind_cols(), pacote dplyr
#criando conjunto de dados para combinar
complemento <- data.frame(
  tipo.sang = c("A+", "A+", "B-", "B+", "B-")
)
complemento

bind_cols(alunos,complemento)
