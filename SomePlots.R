require("tidyverse")
require("ggplot2")
require("cowplot")
library(RColorBrewer)

devtools::install_github("BlakeRMills/MetBrewer") 
require("MetBrewer")

rm(list = c(paste("p",c(1:12),sep="")))

My_Theme = theme(
  axis.title.x = element_text(size = 10),
  axis.text.x = element_text(size = 7),
  
  axis.title.y = element_text(size = 10),
  axis.text.y = element_text(size = 7)) 

p1 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Hokusai1") +
  scale_fill_manual(values=met.brewer("Hokusai1", 3)) +
  My_Theme


p2 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Hokusai2") +
  scale_fill_manual(values=met.brewer("Hokusai2", 3)) +
  My_Theme
  

p3 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Hokusai3") +
  scale_fill_manual(values=met.brewer("Hokusai3", 3)) +
  My_Theme 


p4 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Manet") +
  scale_fill_manual(values=met.brewer("Manet", 3)) +
  My_Theme

p5 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Derain") +
  scale_fill_manual(values=met.brewer("Derain", 3)) +
  My_Theme

p6 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Cassatt1") +
  scale_fill_manual(values=met.brewer("Cassatt1", 3)) +
  My_Theme

p7 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Hiroshige") +
  scale_fill_manual(values=met.brewer("Hiroshige", 3)) +
  My_Theme

p8 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "OKeeffe2") +
  scale_fill_manual(values=met.brewer("OKeeffe2", 3)) +
  My_Theme

p9 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "OKeeffe1") +
  scale_fill_manual(values=met.brewer("OKeeffe1", 3)) +
  My_Theme

# cowplot command
panel1 <- plot_grid(p1, p2, p3, p4, p5, p6, p7, p8, p9,
ncol=3, labels = c('A', 'B','C','D','E','F'),
label_size = 12)

ggsave("panel1.tiff")

rm(list = c(paste("p",c(1:6),sep="")))  

# RColorBrewer

p7 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Greens") +
  scale_fill_brewer(palette = "Greens") +
  My_Theme

p8 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Blues") +
  scale_fill_brewer(palette = "Blues") +
  My_Theme

p9 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Reds") +
  scale_fill_brewer(palette = "Reds") +
  My_Theme

p10 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "Oranges") +
  scale_fill_brewer(palette = "Oranges") +
  My_Theme

p11 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "YlOrBr") +
  scale_fill_brewer(palette = "YlOrBr") +
  My_Theme

p12 <- ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  labs(title = "YlOrRd") +
  scale_fill_brewer(palette = "YlOrRd") +
  My_Theme

# cowplot command
panel1 <- plot_grid(p7, p8, p9, p10, p11, p12, nrow=2, ncol=3, labels = c('A', 'B','C','D','E','F'), label_size = 12)
ggsave("panel2.tiff")

