library(ggplot2)
library(maps)

all_states <- map_data("state")
se <- subset(all_states, region %in% 
                 c("florida", "georgia", "louisiana", "kentucky",
                   "virginia", "west verginia", "north carolina",
                        "south carolina", "arkansas", "alabama", "mississippi",
                        "west virginia", "tennessee"))

png("southeast.png", width = 480, height= 480, units = "px")

p <- ggplot() + geom_polygon(data=se, 
                              aes(x=long, y=lat, group=group), 
                              colour = "purple", fill = "grey99", size=2)
print(p)

dev.off()
