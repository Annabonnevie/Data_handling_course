library(ggplot2)
require(palmerpenguins)
install.packages("palmerpenguins")
data("penguins")
ggplot(data = penguins)

ggplot(data = penguins,
       mapping = aes(x=flipper_len,
                     y=body_mass,
                     colour = species))

ggplot(data = penguins,
       mapping = aes(x=flipper_length_mm,
                     y=body_mass_g,
                     colour = species))
str(penguins)

ggplot(data = penguins,
       mapping = aes(x=flipper_length_mm,
                     body_mass_g)) +  geom_point()

ggplot(penguins,
       mapping = aes(x=flipper_len,
                     y=body_mass)) + geom_point()


ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, 
                     y = body_mass_g, 
                     colour = species)) + geom_point()

penguins <- as.data.frame(penguins)

ggplot(data = penguins,
       mapping = aes(x=flipper_length_mm,
                     body_mass_g)) +  geom_point()

install.packages("tidyverse")
install.packages("ggplot2")

ggplot(data = penguins,
       mapping = aes(x=flipper_length_mm,
                     body_mass_g)) +  geom_point()

penguins %>%
  ggplot(aes(x=flipper_len, y=body_mass)) +
  geom_point(na.rm=T)

library(ggplot2)
df <- data.frame(x = 1:3, y = c(1, NA, 3))
ggplot(df, aes(x, y)) + geom_point(na.rm = TRUE)

sessionInfo()
packageVersion("ggplot2")
packageVersion("rlang")

remove.packages(c("ggplot2", "rlang"))
quit (q())

install.packages(c("rlang", "ggplot2"))

ggplot(penguins,
       mapping = aes(x=flipper_len,
                     y=body_mass)) + geom_point()

ggplot(penguins,
       mapping = aes(x=flipper_len,
                     y=body_mass,
                     colour = species)) + geom_point()

x <- ggplot(penguins) + geom_bar(aes(x=flipper_len), stat = "bin")
x

y <- ggplot(penguins) + geom_bar(aes(x=species), stat = "count") 
y

wrap_plots(x,y,nrow=1)
wrap_plots

p <- ggplot(penguins, aes(x=year, y=body_mass, fill = species))
p            

p + geom_bar(stat = "identidy",
             position = "stack")

rlang::last_trace()

ggplot(data = penguins)+
  geom_point(aes(x=flipper_len,
                 y=body_mass,
                 size=bill_len,
                 alpha=bill_dep,
                 shape=species,
                 color=species))

ggplot(data = penguins)+
  geom_point(aes(x=flipper_len,
                 y=body_mass),
             size=2,
             alpha=0.8,
             shape=15,
             color="steelblue")

ggplot(data = penguins)+
  geom_point(aes(x=flipper_len,
                 y=body_mass),
             size=1,
             alpha=2.8,
             shape=16,
             color="red")

p <- ggplot(penguins, aes(x=flipper_len,
                          y=body_mass)) + 
  geom_point() + 
  geom_line() +
  geom_smooth() +
  geom_rug() +
  geom_step()
p                 

p <- ggplot(penguins, aes(x=flipper_len,
                          y=body_mass,
                          colour = species)) +
  geom_point()
p

p + facet_wrap(~species)
p + facet_wrap(~species, nrow = 3)

p + facet_grid(~island+year)
p + facet_grid(island~year)

library(RColorBrewer)
str(RColorBrewer)
color_brewer <- RColorBrewer

# ggplot2 second lecture
# Building a basic plot

library(dplyr)
library(tidyr)
library(stringr)
library(ggplot2)
library(ggrepel)
install.packages(ggrepel)
library(ggrepel)
library(patchwork)

data("iris")
head(iris)
ggplot(data = iris)

ggplot(data=iris) + 
  geom_point(mapping = aes(x=Sepal.Length, y=Sepal.Width))

ggplot(data=iris) + 
  geom_point(mapping = aes(x=Petal.Length, y=Petal.Width))

ggplot(data = iris, mapping = aes(x=Petal.Length, y=Petal.Width)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width, 
                                  colour = Species)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Species)) +
  geom_smooth(method = "lm")

ggplot(data=iris,mapping=aes(x=Petal.Length,y=Petal.Width))+
  geom_point(aes(color=Species), size = 3)+
  geom_smooth(method="lm")

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Species, size = Petal.Width)) +
  geom_smooth(method = "lm")

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Species, size = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_manual(values = c("red", "blue","green"))

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm")

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_continuous(name="New Legend Title") +
  labs(title = "This is a title", subtitle = "This is a subtitle",
       x="Petal length", y="Petal widht", 
       caption="This is a little caption")

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_continuous(name="New Legend Title") +
  scale_x_continuous(breaks = 1:8) +
  labs(title = "This is a title", subtitle = "This is a subtitle",
       x="Petal length", y="Petal widht", 
       caption="This is a little caption")

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_continuous(name="New Legend Title") +
  scale_x_continuous(breaks = 1:8) +
  labs(title = "This is a title", subtitle = "This is a subtitle",
       x="Petal length", y="Petal widht", 
       caption="This is a little caption") +
  facet_wrap(~Species)

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_continuous(name="New Legend Title") +
  scale_x_continuous(breaks = 1:8) +
  labs(title = "This is a title", subtitle = "This is a subtitle",
       x="Petal length", y="Petal widht", 
       caption="This is a little caption") +
  facet_wrap(~Species) +
  theme_bw()

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_continuous(name="New Legend Title") +
  scale_x_continuous(breaks = 1:8) +
  labs(title = "This is a title", subtitle = "This is a subtitle",
       x="Petal length", y="Petal widht", 
       caption="This is a little caption") +
  facet_wrap(~Species) +
  theme_grey()

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_continuous(name="New Legend Title") +
  scale_x_continuous(breaks = 1:8) +
  labs(title = "This is a title", subtitle = "This is a subtitle",
       x="Petal length", y="Petal widht", 
       caption="This is a little caption") +
  facet_wrap(~Species) +
  theme_bw() +
  theme(
    axis.title = element_text(colour = "Blue", face = "bold"),
    plot.title = element_text(colour = "Green", face = "bold"),
    plot.subtitle = element_text(colour = "Pink"),
    panel.grid = element_blank()
  )

newtheme <- theme(
  axis.title = element_text(colour = "Blue", face = "bold"),
  plot.title = element_text(colour = "Green", face = "bold"),
  plot.subtitle = element_text(colour = "Pink"),
  panel.grid = element_blank())

ggplot(data = iris, mapping = aes(x=Petal.Length, 
                                  y=Petal.Width)) +
  geom_point(aes(colour = Petal.Width)) +
  geom_smooth(method = "lm") +
  scale_color_continuous(name="New Legend Title") +
  scale_x_continuous(breaks = 1:8) +
  labs(title = "This is a title", subtitle = "This is a subtitle",
       x="Petal length", y="Petal widht", 
       caption="This is a little caption") +
  facet_wrap(~Species) +
  theme_bw() +
  newtheme
