# Lista 1
# Exercício 04

# entrar com valores de vendas

vendas <- c(2.7, 2.9, 3.1, 3.1, 3.2,
            3.8, 3.9, 4.0, 4.2, 4.2)

# Médias das vendas
mean(vendas)

# desvio padrão das vendas
sd(vendas)

# tobservado
(3.51-3.1)/(0.566/sqrt(10))
# Teste t de Student
t.test(vendas,
       mu = 3.1,
       alternative = "t")






















