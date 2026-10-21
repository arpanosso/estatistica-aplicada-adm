# Data 19/10/2026
# Programado Por Alan Rodrigo Panosso
nome <- c("Leticia", "Joao", "Murilo", "Amanda", "Marcus")
idade <- c(21, 22, 19, 13, 22)
n1 <- c(10, 2.1, 3.9, 7.8, 2.9)
n2 <- c(8.8, 8.1, 5, 7, 6.8)

## Reunir todos esses vetores um um único arquivo chamado
## dados
dados <- data.frame(nome, idade, n1, n2)
dados[2,4]
dados[,3] # mostra vetor
dados[4,]
dados[3] # mostra o data.frame (coluna)
dados$idade # mesmo que dados[,3]
mean(dados$idade) # média dos valores de idade

# $ é utilizado para acessar as colunas de um
# banco de dados
dados$media <- (dados$n1 + dados$n2) / 2
dados

# Classificar as médias em:
### Aprovado se a média for maior ou igual a 5
### Reprovado se a média for menor que 5
dados$class <- ifelse(dados$media >=5,"APROVADO",
                      "REPROVADO")
dados

## Classificar a idade
## IDADE <= 18 - Jovem
## IDADE > 18 - Adulto
## class_idade
dados$class_idade <- ifelse(dados$idade <= 18,
                            "JOVEM","ADULTO")
dados

# Gráfico das médias
barplot(dados$media,
        names.arg = dados$nome,
        col="aquamarine4",
        las=1,
        ylim=c(0,10) )
box()

# Gráfico das médias
barplot(dados$media[2:3],
        names.arg = dados$nome[2:3],
        col="salmon",
        las=1,
        ylim=c(0,10) )
box()


# Dados os vetores
# alunos 1 a 5
# e notas de 5.8, 4.3, 2.9, 8.5, 5.1
# criar vetores
# criar data.frame chamado dados2
# classificar as notas em
## Notas menores que 3 = REPROVADO
## Notas entre 3 e 4.9 = RECUPERAÇÂO
## Notas maior ou iguais a 5 = APROVADO

dados2 <- data.frame(
  aluno = 1:5,
  notas = c(5.8, 4.3, 2.9, 8.5, 5.1)
)
dados2$class <- ifelse(dados2$notas<3,"RP",
                       ifelse(dados2$notas<5,"REC",
                              "AP"))
dados2










