# Simulação de uma população com distribuição Normal
# com média 5 e desvio padrão 6 e N o tamanho da população
# 4956
set.seed(1235) # semente aleatória
pop <- rnorm(4956, 5, 6)
hist(pop)
med_pop <- mean(pop)
var_pop <- var(pop)
dp_pop <- sd(pop)

## Amostragem aleatória simples com reposição
## de tamanho n = 10
n = 10
medias = 0
var_amostral = 0
qui_quadrado = 0

for(i in 1:10000 ){
  amostra <- sample(pop, n, replace = TRUE)
  medias[i] <- mean(amostra)
  var_amostral[i] <- var(amostra)
}
qui_quadrado = (n-1)*var_amostral/var_pop

# Histograma para Média Amostral
hist(medias, probability = TRUE)
curve(dnorm(x,med_pop,dp_pop/sqrt(n)),
      add=TRUE,col="red",lwd=2)

# Histograma para a variáveil Qui-quadrado
hist(qui_quadrado, probability = TRUE)
curve(dchisq(x,n-1),
      add=TRUE, col="darkgreen",lwd=2)
abline(v=n-1,col="blue",
       lwd=4)

# Buscar o valor de Qui-quadrado
# para alpha de 10% a esquerda
qchisq(0.10, 11)

# para a área alpha acumulada à
# direita de 10%
qchisq(0.90, 11)

## buscar o valor de -t com alpha
## de 0,005 e 11 graus de liberdade
qt(0.005,11)

## buscar o valor de Qui-quadrado para
## 0,005 e 0,995
qchisq(0.005,11)
qchisq(0.995,11)
















