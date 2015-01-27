# Afertnoon ggplot exercise

install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")  #library command to run the actual libray/script/program and load the program into the memory

library("plyr")
library("ggthemes")
library("reshape2")

head(iris)  #built in dataset

iris[1:2,  ]
df  <- melt(iris, id.vars = "Species")
library("reshpae2")
library("reshape2")
df  <- melt(iris, id.vars = "Species")
df [1:2,  ]

myplot <- ggplot(data =iris, aes(x=Sepal.Length, y = Sepal.Width))

#load libraries
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")

myplot <- ggplot(data =iris, aes(x=Sepal.Length, y = Sepal.Width))
head(iris)
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
plot(myplot)

#option1 
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) 
myplot + geom_point()
plot(myplot)

#option2
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))+
geom_point()
plot(myplot)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))+ #each line needs to be run individually
  geom_point() #each line needs to be run individually   (#highlight all the lines and hit command+run)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size =3 )

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size =6 )

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size =4)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(aes(shape=Species), size =3 )

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
plot(d2)

ggplot(data=d2, aes(x=carat, y=price, color=color)) + geom_point(aes(shape=color), size=3)

ggplot(data=d2, aes(x=carat, y=price, color=color)) + geom_point(aes(shape=color), size=4)

## new plat
libray(MASS)
library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()

ggplot(birthwt, aes(x=factor(race), y=bwt)) + geom_boxplot()

MASS [1:2  ]
head (MASS)
head (iris)
library(MASS)
head (MASS)

#Options/Alternatives

ggplot(birthwt, aes(x=factor(race), y=bwt, color=birthwt)) + geom_boxplot()
ggplot(birthwt, aes(x=factor(race), y=bwt)) + geom_boxplot()

#grid options: 1
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size =3 ) + facet_grid(Species ~ .)
#2
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size =3 ) + facet_grid(. ~ Species)
#3
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size =3 )+ facet_wrap(~ Species)

aes(color = variable) # mapping
color = "black" # setting

#Or add it as a scale
scale_fill_manual(values=c("color"))

#Color libtrary
library(RColorBrewer)
display.brewer.all()

# Using a color brewer palette

df <- melt(iris, id.vars = "Species")    #df: data frame (need to melt the dataset first)
ggplot(df, aes(Species, value, fill =variable))+
geom_bar(stat="identity", position = "dodge")+
scale_fill_brewer(palette="Set1") #import color from the RcolorBrewer. 


## New figures dimaond

df <- melt(iris, id.vars = "Species")    #df: data frame (need to melt the dataset first)
ggplot(df, aes(Species, value, fill =variable))+
  geom_bar(stat="identity", position = "dodge")+
  scale_fill_brewer(palette="Set1") #import color from the RcolorBrewer. 



d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
plot(d2)

ggplot(data=d2, aes(x=carat, y=price, color=color)) + geom_point(aes(shape=color), size=3)

ggplot(data=d2, aes(x=carat, y=price, color=color)) + geom_point(aes(shape=color), size=4)

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
df2 <- melt(d2, id.vars = "clarity")
ggplot(df2, aes(clarity, count, fill =variable))+
geom_bar(stat="identity", position = "dodge")+
scale_fill_brewer(palette="Set1")


d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
df2 <- melt(d2, id.vars = "clarity")
ggplot(df2, aes(clarity, value, fill =variable))+
  geom_bar(stat="identity", position = "dodge")+
  scale_fill_brewer(palette="Set1")

## Working figures
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(d2, aes(clarity, fill=cut)) + geom_bar(position="dodge") #don't need to assign the y-axis

ggplot(faithful, aes(waiting)) + geom_density(stat="density")

+geom_point(aes(shape=Species))  #column name does not need quote. 
geom_smooth(method = "lm" )  # search the actual "lm" word in the database, need to be quoted. 



Library(MASS)
library(MASS)




h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth=30, colour="black")

h + geom_histogram(binwideth=8, colour="steelblue")

ggplot(iris, aes(Species, Sepal.Length))+
geom_bar(stat="identity")
