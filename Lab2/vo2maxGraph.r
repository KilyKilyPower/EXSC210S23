library(ggplot2)

hr <- c(110, 118, 138, 194)
kgm <- c(990, 1050, 1200, 1620)
prediction <- data.frame(kgm, hr) 

predictionGraph <- ggplot(prediction, aes(x = kgm, y = hr), color = "gray") + 
   geom_line(colour = "red") +
   geom_point(x = 1620, y = 194, color = "black", size = 2) +
   labs(x = "Kilogram meters (kg · m · min^-1)", y = "Heart Rate (beats · min^-1)") +
   theme_bw()
print(predictionGraph)
ggsave(filename = "predictionGraph", plot = predictionGraph, device = png, scale = 0.5)