library(ggplot2)
library(maps)

all_states <- map_data("state")
midwest <- subset(all_states, region %in% 
        c("ohio", "michigan", "wisconsin", "iowa", "south dakota",
          "north dakota", "nebraska", "minnesota","indiana", "illinois",
        "kansas", "missouri"))

png("midwest.png", width = 480, height= 480, units = "px")

p <- ggplot() + geom_polygon(data=midwest, 
              aes(x=long, y=lat, group=group), 
              colour = "blue", fill = "grey95", size=2)
print(p)

dev.off()