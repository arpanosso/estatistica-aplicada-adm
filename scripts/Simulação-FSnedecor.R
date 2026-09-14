set.seed(1235)
pop1 <- rnorm(30000, 25, 2.8)
mu1 <- mean(pop1)
sigma1 <- sd(pop1)
med_vec1 <- var_vec1 <- 0

n1<-15
for(i in 1:10000){
  amostra1 <- sample(pop1,n1,replace = TRUE)
  med_vec1[i] <- mean(amostra1)
  var_vec1[i] <- var(amostra1)
}

hist(med_vec1)
hist(var_vec1)

hist(var_vec1*(n1-1)/sigma1^2, probability = TRUE,
     las=1,ylim = c(0,0.10))
curve(dchisq(x,n1-1),0,80, add=TRUE,
      col="red",lwd=2)



pop2 <- rnorm(30000, 30, 3.2)
mu2 <- mean(pop2)
sigma2 <- sd(pop2)

med_vec2 <- var_vec2 <- 0

n2<-10
for(i in 1:10000){
  amostra2 <- sample(pop2,n2,replace = TRUE)
  med_vec2[i] <- mean(amostra2)
  var_vec2[i] <- var(amostra2)
}
hist(med_vec2)
hist(var_vec2)

hist(var_vec2*(n2-1)/sigma2^2, probability = TRUE,
     las=1)
curve(dchisq(x,n2-1),0,90, add=TRUE,
      col="red",lwd=2)

# A razão entre duas distribuição Qui-quadrado
# é uma F com n1-1 e n2-1 graus de liberadade

for(i in 1:10000){
  amostra2 <- sample(pop2,n2,replace = TRUE)
  var_vec2[i] <- var(amostra2)

  amostra2 <- sample(pop2,n2,replace = TRUE)
  var_vec2[i] <- var(amostra2)
}

f_snedeco <- (var_vec1/sigma1^2)/(var_vec2/sigma2^2)
hist(f_snedeco, probability = TRUE,
     las=1,xlim=c(0,15))
curve(df(x , df1 = n1-1, df2 = n2-1),add=TRUE,
      col="red",lwd=2)


