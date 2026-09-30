

# Objektklassen -----------------------------------------------------------
### Objektklassen
class(17)
class("O'zapft is!")

# in einem Vektor besitzen alle Elemente die selbe Klasse
a <- c("Ich bin", "ein Vektor mit", 4, "Elementen")
class(a[3])

# in einer Liste besitzt jedes Element eine individuelle Klasse
b <- list("Ich bin", "eine Liste mit", 4, "Elementen")
class(b[[3]])


### Objektklassen - Type conversion
# das hier funktioniert
2 + 2
# das hier funktioniert nicht
2 + "2"

# Lösung: Benutzung von type conversion
2 + as.numeric("2")


### Objektklassen
# in einer Matrix besitzen alle Elemente die selbe Klasse
m <- matrix(c("Wort",1,"Wort",9), nrow = 2, byrow = TRUE)
m
class(m[,2]) # zweite Spalte

# in einem data frame besitzt jede Spalte eine individuelle Klasse
d <- data.frame(Var1 = c("Wort","Wort"),
                Var2 = c(2,4))
d
class(d[,2]) # zweite Spalte




# Funktionen und Pakete ---------------------------------------------------
### Benutzung von Funktionen
# Benutzung von Hilfeseiten
?mean

# ... oder fragt das Orakel
????mean

# Aufruf einer Funktion
sample <- c(2,5,3,17)
mean(sample)

# Definition einer neuen Funktion
do_something <- function(a, b) {
  result <- a + b
  return(result)
}
do_something(2,4)


### Benutzung von Paketen
# Installation eines Pakets (nur ein einziges Mal notwendig)
install.packages("mgcv")
# Laden eines Pakets (bei jedem Neustart von R notwendig)
library(mgcv)




# Arbeit mit Daten --------------------------------------------------------
### Arbeit mit Daten
# Daten einlesen
dat <- read.table(file   = "Daten/WDI_Daten.csv",
                  header = TRUE,
                  sep    = ",",
                  dec    = ".")

# mit Variablen arbeiten
mean(dat$Area)
dat$new_variable <- dat$CO2emission / dat$Area

# Daten kennenlernen mit str()
str(dat)


### Arbeit mit Daten - Visualisierung
# Bestes R-Paket für Visualisierungen: ggplot2
install.packages("ggplot2")
library(ggplot2)
theme_set(theme_bw()) # globales Plot-Theme setzen

ggplot(dat, aes(x = region)) + 
  geom_bar()
ggplot(dat, aes(x = year, y = CO2emission)) + 
  geom_point()
ggplot(dat, aes(x = year, y = CO2emission, color = country)) + 
  geom_line()
