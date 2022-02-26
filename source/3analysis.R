library(readxl)
Info_data1 <- read_excel("~/Desktop/Info_data1.xlsx")
View(Info_data1)

library(ggplot2)
library(dplyr)
library(plotly)
install.packages("hrbrthemes")
library(hrbrthemes)

Info_data1$Date <- as.Date(Info_data1$Date)

Info_data1 %>% 
  ggplot( aes(x=Date, y=male_pop_15to64)) +
  geom_line(color="#69b3a2") +
  ylim(0,20000) +
  theme_ipsum()

library(readxl)
Info2 <- read_excel("~/Desktop/Info2.xlsx")
View(Info2)

Info2$Date <- as.Date(Info2$Date)

Info2 %>% 
  ggplot( aes(x=Date, y=female_pop_15to64)) +
  geom_line(color="#69b3a2") +
  ylim(0,20000) +
  theme_ipsum()
