install.packages("maps")
library(maps)
install.packages("tmap")
library(tmap)   
library(leaflet) 
library(ggplot2) 
library(sf)
library(raster)
library(dplyr)
library(tidyverse)
install.packages("ggmap")
library(ggmap)


map <- get_stamenmap(
  bbox = c(left = -133.77, bottom = 8.32, right = -51.33, top = 62.02),
  maptype = "toner",
  zoom = 4
)

ggmap(map)
