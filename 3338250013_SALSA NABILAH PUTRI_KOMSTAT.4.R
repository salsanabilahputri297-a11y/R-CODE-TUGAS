#1.DISTRIBUSI POISSON
# Parameter distribusi Poisson
lambda <- 3

# Menghitung P(X > 5)
p_poisson <- ppois(5, lambda, lower.tail = FALSE)

# Menampilkan hasil
p_poisson

#2.DISTRIBUSI HIPERGOEMETRIK
# Parameter distribusi hipergeometrik
N <- 100
K <- 20
n <- 10

# Nilai X yang mungkin
x <- 0:n

# Menghitung peluang setiap nilai X
p_hyper <- dhyper(x, K, N - K, n)

# Membuat tabel distribusi
tabel_hyper <- data.frame(
  Jumlah_Bola_Merah = x,
  Peluang = p_hyper
)

tabel_hyper

#3.SIMUASI DISTRIBUSI BINOMIAL
# Menentukan seed agar hasil dapat direproduksi
set.seed(123)

# Parameter distribusi Binomial
n <- 15
p <- 0.4

# Simulasi 1.000 percobaan
hasil_simulasi <- rbinom(
  n = 1000,
  size = n,
  prob = p
)

# Membuat histogram hasil simulasi
hist(
  hasil_simulasi,
  breaks = seq(-0.5, 15.5, by = 1),
  probability = TRUE,
  main = "Histogram Simulasi Distribusi Binomial",
  xlab = "Jumlah Sukses (X)",
  ylab = "Frekuensi Relatif",
  col = "lightblue",
  border = "white"
)

# Menghitung PMF teoretis
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)

# Menambahkan PMF teoretis
points(
  x,
  pmf,
  pch = 19,
  col = "red"
)

lines(
  x,
  pmf,
  type = "h",
  lwd = 2,
  col = "red"
)

