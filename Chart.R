#---------Packages---------
library(ggplot2)

#-----------Data-----------
data <- read.csv("Data/Fuel-mix.csv")
data$Fuel.Type <- factor(data$Fuel.Type , levels=c("Battery","Wind","Solar","Hydro","Gas","Brown coal"))
data$DateTime <- as.POSIXct(data$DateTime, format = "%d/%m/%Y %H:%M")

#----------Chart----------
ggplot(data, aes(x=DateTime, y=Supply, fill=Fuel.Type)) +
  geom_area() +
  scale_fill_manual(values=c("coral","purple","yellow","blue","#009999","#996633"))+
  labs(title="Hourly fuel mix", subtitle="Victoria - 2 August 2025")+
  theme_minimal()+
  theme(legend.position="bottom")
