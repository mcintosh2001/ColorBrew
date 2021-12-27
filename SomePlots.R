require("tidyverse")
require("ggplot2")
require("cowplot")
library(RColorBrewer)

devtools::install_github("BlakeRMills/MetBrewer") 
require("MetBrewer")

# rm(list = c(paste("p",c(1:12),sep="")))

My_Theme = theme(
  axis.title.x = element_text(size = 10),
  axis.text.x = element_text(size = 7),
  
  axis.title.y = element_text(size = 10),
  axis.text.y = element_text(size = 7)) 

myplot <- function(scheme){
  
  ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
    geom_violin() +
    labs(title = scheme) +
    scale_fill_manual(values=met.brewer(scheme, 3)) +
    My_Theme
  
}

p1 <- myplot("Hokusai1") 
p2 <- myplot("Hokusai2")
p3 <- myplot("Hokusai3")
p4 <- myplot("Manet")
p5 <- myplot("Derain") 
p6 <- myplot("Cassatt1")
p7 <- myplot("Hiroshige") 
p8 <- myplot("OKeeffe2") 
p9 <- myplot("OKeeffe1")
  
# cowplot command
panel1 <- plot_grid(p1, p2, p3, p4, p5, p6, p7, p8, p9,
ncol=3, labels = c('A', 'B','C','D','E','F'),
label_size = 12)

# ggsave("panel1.tiff")
# rm(list = c(paste("p",c(1:6),sep="")))  
# rm(panel1)

# RColorBrewer

myplot1 <- function(scheme){
  
  ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = scheme) +
  scale_fill_brewer(palette = scheme) +
  My_Theme
}

p1 <- myplot1("Greens") 
p2 <- myplot1("Blues") 
p3 <- myplot1("Reds") 
p4 <- myplot1("Oranges") 
p5 <- myplot1("YlOrBr") 
p6 <- myplot1("YlOrRd") 

# cowplot command
panel2 <- plot_grid(p1, p2, p3, p4, p5, p6, ncol=3, labels = c('A', 'B','C','D','E','F'), label_size = 12)
# ggsave("panel2.tiff")
# rm(list = c(paste("p",c(1:6),sep="")))  
# rm(panel2)
