library(ggplot2)
library(maps)

all_states <- map_data("state")
sw <- subset(all_states, region %in% 
        c("arizona", "texas", "new mexico", "oklahoma"))

png("southwest.png", width = 480, height = 480, units = "px")
p <- ggplot() + geom_polygon(data=sw, 
              aes(x=long, y=lat, group=group), 
              colour = "firebrick", fill = "grey95", size=2)
print(p)

dev.off()
