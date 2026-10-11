# Studi Kasus Distribusi kontinu:Distribusi Eksponensial
# Waktu Tunggu Pelanggan

# 1. Menentukan parameter
rata_rata <- 5
lambda <- 1 / rata_rata

# 2. Peluang menunggu kurang dari 3 menit
peluang_kurang_3 <- pexp(3, rate = lambda)
cat("P(X < 3):", round(peluang_kurang_3, 5), "\n")

# 3. Peluang menunggu lebih dari 5 menit
peluang_lebih_5 <- pexp(5, rate = lambda,
                        lower.tail = FALSE)
cat("P(X > 5):", round(peluang_lebih_5, 5), "\n")

# 4. Peluang menunggu antara 2 dan 6 menit
peluang_2_6 <- pexp(6, rate = lambda) -
  pexp(2, rate = lambda)
cat("P(2 < X < 6):", round(peluang_2_6, 5), "\n")

# 5. Nilai harapan dan varians
nilai_harapan <- 1 / lambda
varians <- 1 / lambda^2

cat("Nilai harapan:", nilai_harapan, "menit\n")
cat("Varians:", varians, "menit kuadrat\n")

# 6. Simulasi waktu tunggu 10 pelanggan
set.seed(123)
simulasi <- rexp(10, rate = lambda)
print(round(simulasi, 2))

# 7. Membuat grafik distribusi
x <- seq(0, 20, length.out = 100)
y <- dexp(x, rate = lambda)

plot(x, y,
     type = "l",
     main = "Distribusi Eksponensial Waktu Tunggu",
     xlab = "Waktu Tunggu (menit)",
     ylab = "Kepadatan Probabilitas",
     lwd = 2)

