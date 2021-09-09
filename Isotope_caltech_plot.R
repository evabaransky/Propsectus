install.packages("ggplot2")
install.packages("tidyverse")
library(ggplot2)
library(tidyverse)

setwd("Z:/Documents/GitHub/Prospectus")
flux_dat<- read.csv("Isotope_caltech_plot.csv")
flux_dat %>% 
  ggplot(aes(label =Flux))+
  geom_rect(mapping=aes(xmin=min, xmax=max, ymin=ymin, ymax =ymax, fill = Flux, color = Flux))+
  theme_bw()+
  theme(axis.title.y = element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        legend.position = "none")+
  xlim(-2,3)+
  xlab(label="dNi (permil)")+
  annotate("text", x = 0.5, y=c(7.5,9.5, 15.5,19.5), label = "?", size=6)+
  geom_text(x = 3.5,y=(flux_dat$ymax+flux_dat$ymin)/2, size = 5, hjust = 0, aes(color = Flux))+
  theme(plot.margin = unit(c(1, 18, 1, 1), "lines")) +
  coord_cartesian(clip = "off")
