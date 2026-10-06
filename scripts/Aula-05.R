# Data 05/10/2026
# Programado Por Alan R. Panosso

# R como uma Calculadora...

##########################
# Oparadores Aritméticos #
##########################
2+2 # adição
2*2 # multiplicação
4/2 # divisão
2-2 # subtração
5 %/% 2 # divisão inteira
5 %% 2 # resto da divisão

# Dado um número da 4 dígitos, exemplo
# 4587, quebrar ele em 45 e 87
4587 %/% 100
4587 %%100

#  Dado um número de 3 dígitos, exemplo
# 178, extrair a centena 1, a dezena 7 e
# a unidade 8.
178 %/% 100
178 %% 100 %/% 10
178 %% 10

# Funções no R
# são procedimentos para realizar
# um trabalho específico.
# chamamos o nome da função, sem espaço
# ou caracteres especiais, seguidos de "()"
# o que passamos dentros dos parênteses
# são chamados "argumentos" da função, ou seja
# a função usa esses argumentos para realizar
# o seu trabalho...

# Raiz quadrada - Square Root
sqrt(225)
15*15

# Potênciação, 2 elevado ao cubo é igual a 8
2^3
2**3

# Logarítmo
# 3 elevado ao qual número X resulta em 2
log(2, 3)
3^0.6309298

# A Constante neperiana elevada ao quadrado
exp(2)

# arredondamento - define casas decimais
10/3
round(10/3, 2) # duas casas após a vírgula "."

# Truncar um número é retirar as casas decimais
10/3
trunc(10/3)

# Piso... arredonda um número para baixo
floor(2.5)

# Teto, arredondamento para cima
ceiling(2.5)

##########################
# Oparadores Relacionais #
##########################
# São testes a respeito das relações
# de igualdade e grandezas.
2 > 6 # maior que
2 >= 6/3 #  maior ou igual a
2 < 6 # menor que
2 <= 6/3 # menor ou igual a
2 == 2 # igual a
2 != 2 # diferente de

# somar 2+2, tirar a raiz de 225, relacionar
# de igualdade 2 e 6/3
2+2; sqrt(225); 2 == 6/3

##########################
# Comandos de Atribuição #
##########################
# São usados para criação do que chamamos
# de variáveis. Uma variável é um espaço na
# memória do Computador que temporariamente
# armazena um ou mais valores.
# Em R as variáveis são chamadas de OBJETOS.
# Vamos guardar o valor 1 na variável x
x = 1
x + 2

# Vamos atribuir 2 para a variável x
x <- 2

# Vamos criar a variável y com os valores
# 30, 33, 28 e 46
# quando um objeto tem mais de um elemento
# e tem uma dimensão de indexação, ele é
# chamado do vetor, em outras palavras
# y é um vetor que guarda as idades de
# funcionários de uma empresa.
# para construção do vetor, usamos a atribuição
# e a função concatenate c
y <- c(30, 33, 28, 46)
y[1]
y[2]
y[3]
y[4]

y[1] <- 35
y

# Perguntas sobre as idades
# média?
mean(y)

# mediana?
median(y)

# variância?
var(y)
# a soma dos quadrados dos desvios divido por n-1

# desvio padrão?
# é raiz quadrada da variância
sd(y)

# maior valor
max(y)

# menor velor?
min(y)

# range [ menor maior]
range(y)

# amplitude [maior - menor]
diff(range(y))
46-28

# quais idades são maiores que 35?
y > 35

# quantas idades são maiores que 35?
sum(y > 35)
sum(y >30)

# Quais as idades maiores que 30?
y[y>30]

# quantas idades estão presentes no meu vetor?
length(y)










