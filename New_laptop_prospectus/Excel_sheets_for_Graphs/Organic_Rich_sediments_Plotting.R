library(dplyr)
library(reshape2)
library(tidyr)
library(knitr)
library(extrafont)
library(ggplot2)

OM_data <- read.csv(file = 'C:/Users/evaba/Documents/NAU/Research/Prospectus/New_laptop_prospectus/Excel_sheets_for_Graphs/Organic_Matter_Graphs.csv', stringsAsFactors=FALSE)

ggplot(OM_data, aes(x=dNi)) + 
  geom_density()+
  theme_classic()


ggplot(OM_data, aes(x=dNi)) + 
  geom_histogram(aes(fill=Type))+
  theme_classic()+
  labs(title=expression(paste("Variances in ", delta^{60}, "Ni by Organic Rich Sediments")),
       x=expression(paste(delta^{60}, "Ni (\u2030)")), y = "")+
  theme(axis.text=element_text(size=14,face="bold"),
        axis.title=element_text(size=14,face="bold"), legend.text = element_text(size=14),
        title = element_text(size=14,face="bold"))
