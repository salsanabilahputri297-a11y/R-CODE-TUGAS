# 1. Membuka data
data(airquality)
View(airquality)
str(airquality)

# 2. Histogram dan Density Wind
hist(airquality$Wind,
     probability = TRUE,
     main = "Histogram dan Density Wind",
     xlab = "Kecepatan Angin (Wind)",
     ylab = "Density",
     col = "lightblue",
     border = "black")

lines(density(airquality$Wind, na.rm = TRUE),
      col = "red",
      lwd = 2)

# 3. Boxplot
boxplot(airquality$Wind,
        main = "Boxplot Variabel Wind",
        ylab = "Kecepatan Angin (Wind)",
        col = "lightgreen")

# Stem and Leaf
stem(airquality$Wind)

# 4. Scatter Plot
plot(airquality$Wind,
     airquality$Ozone,
     main = "Scatter Plot Ozone dan Wind",
     xlab = "Kecepatan Angin (Wind)",
     ylab = "Ozone",
     pch = 19,
     col = "blue")