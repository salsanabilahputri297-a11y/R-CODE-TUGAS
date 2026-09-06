# 1. Vector Numeric
vector_numeric <- c(10.5, 20.5, 30.5, 40.5, 50.5)
vector_numeric

# 2. Vector Integer
vector_integer <- c(10L, 20L, 30L, 40L, 50L)
vector_integer

# 3. Vector Logical
vector_logical <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
vector_logical

# 4. Vector Character
vector_character <- c("Andi", "Budi", "Citra", "Dina", "Eka")
vector_character

# Matrix 4 x 4
  matrix_4x4 <- matrix(
    1:16,
    nrow = 4,
    ncol = 4,
    byrow = TRUE
  )

matrix_4x4

# Array 4 dimensi
  array_4d <- array(
    1:81,
    dim = c(3, 3, 3, 3)
  )

array_4d


#Data frame dengan 4 kolom
  data_frame_4kolom <- data.frame(
    Nama = c("Andi", "Budi", "Citra", "Dina", "Eka"),
    Nilai = c(80.5, 75.0, 90.5, 85.0, 70.5),
    Lulus = c(TRUE, TRUE, TRUE, TRUE, FALSE),
    Aktif = c(TRUE, FALSE, TRUE, TRUE, FALSE)
  )

data_frame_4kolom
str(data_frame_4kolom)

# Vector baris
vector_baris <- c(1, 2, 3, 4)

# Vector kolom
vector_kolom <- c(5, 6, 7, 8)

# Matrix 4 x 4
matrix_4x4 <- matrix(
  1:16,
  nrow = 4,
  ncol = 4,
  byrow = TRUE
)

# Array 4D
array_4d <- array(
  1:81,
  dim = c(3, 3, 3, 3)
)

# Data frame 4 kolom
data_frame_4kolom <- data.frame(
  Nama = c("Andi", "Budi", "Citra", "Dina", "Eka"),
  Nilai = c(80.5, 75.0, 90.5, 85.0, 70.5),
  Lulus = c(TRUE, TRUE, TRUE, TRUE, FALSE),
  Aktif = c(TRUE, FALSE, TRUE, TRUE, FALSE)
)

# List bagian dalam
list_dalam <- list(
  matrix_4x4 = matrix_4x4,
  array_4d = array_4d,
  data_frame = data_frame_4kolom,
  vector_baris = vector_baris
)

# List utama dengan 5 komponen
list_utama <- list(
  vector_baris = vector_baris,
  vector_kolom = vector_kolom,
  matrix_4x4 = matrix_4x4,
  data_frame = data_frame_4kolom,
  list_dalam = list_dalam
)

# Menampilkan list utama
list_utama

