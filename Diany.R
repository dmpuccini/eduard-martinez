
# intial configuration
rm(list = ls()) # limpia el entorno de R
pacman::p_load(tidyverse,viridis,forcats) # cargar y/o instalar paquetes a usar


library()
geih = readRDS(file = "data/output/geih nacional.rds" )

geih %>% group_by(dpto) %>%
  summarise(mean = mean(p6500, na.rm = T) ,
            mean_w = weighted.mean(x = p6500,w = fex_c_2011, na.rm = T))
