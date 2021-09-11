library(dplyr)
library(ggplot2)
library(reshape2)
library(tidyr)
library(knitr)
library(ggalt)



Mn_data <- read.csv(file = 'C:/Users/evaba/Documents/NAU/Research/Prospectus/New_laptop_prospectus/Excel_sheets_for_Graphs/Mn_Rich_sediments.csv', stringsAsFactors=FALSE)

ggplot(Mn_data, aes(x=dNi)) + 
  geom_histogram(aes(color = Type, fill = Type),alpha=0.5, bins = 15)+
  theme_classic()
  

ggplot(Mn_data, aes(x=dNi, xend = dNi, y=Type)) + 
  geom_dumbbell(aes(color=Type), 
                size=3)+
  theme_classic()+
  labs(title=expression(paste("Variances in ", delta^{60}, "Ni by Fe-Mn type")),
       x=expression(paste(delta^{60}, "Ni (\u2030)")), y = "")+
  scale_x_continuous(breaks = seq(-2.5,5, 1))+
  theme(axis.text=element_text(size=14,face="bold"),
        axis.title=element_text(size=14,face="bold"), legend.text = element_text(size=14),
        title = element_text(size=14,face="bold"))
