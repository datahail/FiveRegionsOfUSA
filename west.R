library(ggplot2)
library(maps)

all_states <- map_data("state")
west <- subset(all_states, region %in% 
                c("washington", "oregon", "utah", "alaska", "california",
                   "idaho", "colorado", "hawaii", "nevada", "montana", "wyoming"))
        
png("west.png", width = 480, height= 480, units = "px")
        p <- ggplot() + geom_polygon(data=west, 
                aes(x=long, y=lat, group=group), 
                          colour = "green", fill = "grey95", size=2) 
        print(p)  
dev.off()
