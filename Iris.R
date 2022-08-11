library(tidyverse)
data<-read.csv("C:/Users/colin_az7zrwq/OneDrive/Desktop/crypto/iris.csv")

y1 <- data %>% filter(class=="Iris-setosa")
y2 <- data %>% filter(class=="Iris-versicolor")
y3 <- data %>% filter(class=="Iris-virginica")

y1sl <- y1$sepal_length
y1sw <- y1$sepal_width
y1pl <- y1$petal_length
y1pw <- y1$petal_width
my1sl = mean(y1sl)
my1sw = mean(y1sw)
my1pl = mean(y1pl)
my1pw = mean(y1pw)

t.test(y2sl, mu = my1sl)
t.test(y3sl, mu = my1sl)
t.test(y2sw, mu = my1sw)
t.test(y3sw, mu = my1sw)
t.test(y2pl, mu = my1pl)
t.test(y3pl, mu = my1pl)
t.test(y2pw, mu = my1pw)
t.test(y3pw, mu = my1pw)

y2sl <- y2$sepal_length
y2sw <- y2$sepal_width
y2pl <- y2$petal_length
y2pw <- y2$petal_width



y3sl <- y3$sepal_length
y3sw <- y3$sepal_width
y3pl <- y3$petal_length
y3pw <- y3$petal_width