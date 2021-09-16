install.packages("ggplot2")
install.packages("tidyverse")
library(ggplot2)
library(tidyverse)


flux_dat<- read.csv("C:/Users/evaba/Documents/GitHub/Prospectus/Flux_caltech_plot.csv")
limits=c(2.5*10^6,1.75*10^9)
flux_dat %>% 
  ggplot(aes(label =Flux))+
  geom_rect(mapping=aes(xmin=min, xmax=max, ymin=ymin, ymax =ymax, fill = Flux, color = Flux))+
  theme_bw()+
  theme(axis.title.y = element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        legend.position = "none")+
 # scale_x_log10(limits=limits, name="Ni mol/yr" )+
  annotate("text", x = 6*10^7, y=c(5.5,15.5), label = "?", size=6)+
#  geom_text(x = 9.5,y=(flux_dat$ymax+flux_dat$ymin)/2, size = 5, hjust = 0, aes(color = Flux))+
  theme(plot.margin = unit(c(1, 18, 1, 3), "lines")) +
  xlim(c(-2*10^9,2*10^9))+
  geom_text(x=3*10^9, y= 15.5, label =  "outputs", angle = 90, size=5)+
  geom_text(x=-10^9, y= 5.5, label =  "inputs", angle = 90, size=5)+
  coord_cartesian(clip = "off")
