#TUGAS KE 2 (MANAJEMENT DATA)

# Memanggil data iris
data(iris)

# 1. Menampilkan data Sepal.Length saja
iris$Sepal.Length


# 2. Melihat tipe data setiap kolom
str(iris)

sapply(iris, class)


# 3. Membuat variabel baru bernama turunan
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")

head(iris)


# 4. Mengubah nama variabel turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"

names(iris)


# 5. Mengambil data sepal bernilai Besar dari species virginica
hasil <- subset(iris, sepal == "Besar" & Species == "virginica")

hasil


# 6. Mengecek jumlah setiap species
table(iris$Species)


# 7. Memecah data iris menjadi 3 data frame berdasarkan species

iris_setosa <- subset(iris, Species == "setosa")

iris_versicolor <- subset(iris, Species == "versicolor")

iris_virginica <- subset(iris, Species == "virginica")


# 8. Mengurutkan setiap data frame berdasarkan Sepal.Width

iris_setosa <- iris_setosa[order(iris_setosa$Sepal.Width), ]

iris_versicolor <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]

iris_virginica <- iris_virginica[order(iris_virginica$Sepal.Width), ]


# Menampilkan hasil
head(iris_setosa)

head(iris_versicolor)

head(iris_virginica)