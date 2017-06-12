library(ggplot2)
library(maps)

all_states <- map_data("state")
ne <- subset(all_states, region %in% 
        c("pennsylvania", "new york", "vermont", "new hampshire", 
          "maine", "massachusetts","rhode island", "connecticut",
        "new jersey", "delaware", "maryland"))

png("northeast.png", width = 480, height= 480, units = "px")

p <- ggplot() + geom_polygon(data=ne, 
              aes(x=long, y=lat, group=group), 
              colour = "magenta", fill = "grey99", size=2)
print(p)

dev.off()
