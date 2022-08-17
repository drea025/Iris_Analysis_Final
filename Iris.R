library(tidyverse)
data<-read.csv("Resources/iris.csv")

y1 <- data %>% filter(class=="Iris-setosa")
y2 <- data %>% filter(class=="Iris-versicolor")
y3 <- data %>% filter(class=="Iris-virginica")
# y1, y2, y3 are variables representing the three different classes of iris.
# data is a variable representing the iris data from our Resources folder
# the filter function divides the data into three subsets of data which are separated by class or specie

y1sl <- y1$sepal_length
y1sw <- y1$sepal_width
y1pl <- y1$petal_length
y1pw <- y1$petal_width
# y1sl,y1sw,y1pl,y1pw are variables for sepal length, sepal width, petal length, and petal width respectively of the Iris-setosa class. The y1 represents the subset of data
# data containing information of Iris-setosa and the '$' takes a single column from the y1 data. 

my1sl = mean(y1sl)
my1sw = mean(y1sw)
my1pl = mean(y1pl)
my1pw = mean(y1pw)
# These variables represents the average of sepal length, sepal width, petal length, and petal width of the Iris-setosa. The mean function computes the average of the data.

y2sl <- y2$sepal_length
y2sw <- y2$sepal_width
y2pl <- y2$petal_length
y2pw <- y2$petal_width

y3sl <- y3$sepal_length
y3sw <- y3$sepal_width
y3pl <- y3$petal_length
y3pw <- y3$petal_width
# Similarly to y1sl,y1sw,y1pl,y1pw, these variables represents the sepal length, sepal width, petal length, and petal width of the other two classes.

# Student's t test
t.test(y2sl, mu = my1sl)
t.test(y3sl, mu = my1sl)
t.test(y2sw, mu = my1sw)
t.test(y3sw, mu = my1sw)
t.test(y2pl, mu = my1pl)
t.test(y3pl, mu = my1pl)
t.test(y2pw, mu = my1pw)
t.test(y3pw, mu = my1pw)
# The t.test function runs the Student's t-test which uses the t-distribution to determine whether there is no significant difference between multiple sets of data, (null hypothesis)
# or if there is a significant difference between the data (alternative hypothesis). In conclusion, we accept the alternative hypothesis for all sepal length, sepal width, petal length, and petal widths
# of all iris classes which means the data in the iris csv is significantly different based on specie. 
