# 1. Peluang waktu tunggu > 5 menit
mu1 <- 5
x1 <- 5
P1 <- pexp(x1, rate = 1/mu1, lower.tail = FALSE)

# 2. Varians waktu tunggu kereta
a <- 0
b <- 20
Var2 <- (b - a)^2 / 12

# 3. Peluang sensor rusak sebelum 5 tahun
mu3 <- 10
x3 <- 5
P3 <- pexp(x3, rate = 1/mu3)

# 4. Proporsi kopi underweight
mu4 <- 250
sigma4 <- 5
x4 <- 240
P4 <- pnorm(x4, mean = mu4, sd = sigma4)

# Menampilkan hasil
P1
Var2
P3
P4

# Dalam persen
P1 * 100
P3 * 100
P4 * 100