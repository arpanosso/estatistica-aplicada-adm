set.seed(1235)
pop <- rnorm(30000, 25, 8)
mu <- mean(pop)
sigma <- sd(pop)

med_vec <- var_vec <- 0

n<-10
for(i in 1:100){
  amostra <- sample(pop,n,replace = TRUE)
  med_vec[i] <- mean(amostra)
  var_vec[i] <- var(amostra)
}

hist(med_vec)
hist(var_vec)

hist(var_vec*(n-1)/sigma^2, probability = TRUE)
curve(dchisq(x,10),0,80, add=TRUE)
