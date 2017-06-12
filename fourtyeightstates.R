library(ggplot2)
library(maps)
library(gridExtra)


all_states <- map_data("state")
mw <- subset(all_states, region %in% 
             c("ohio", "michigan", "wisconsin", "iowa", "south dakota",
               "north dakota", "nebraska", "minnesota","indiana", "illinois",
               "kansas", "missouri"))
ne <- subset(all_states, region %in% 
             c("pennsylvania", "new york", "vermont", "new hampshire", 
               "maine", "massachusetts","rhode island", "connecticut",
               "new jersey", "delaware", "maryland"))
w <- subset(all_states, region %in% 
            c("washington", "oregon", "utah", "alaska", "california",
              "idaho", "colorado", "hawaii", "nevada", "montana", "wyoming"))
sw <- subset(all_states, region %in% 
             c("arizona", "texas", "new mexico", "oklahoma"))
se <- subset(all_states, region %in% 
             c("florida", "georgia", "louisiana", "kentucky",
               "virginia", "west verginia", "north carolina",
               "south carolina", "arkansas", "alabama", "mississippi",
               "west virginia", "tennessee"))

pw <- geom_polygon(data=w, 
              aes(x=long, y=lat, group=group), 
              colour = "green", fill = "coral", size=2)
pmw <- geom_polygon(data=mw, 
               aes(x=long, y=lat, group=group), 
               colour = "blue", fill = "cyan", size=2)
pne <- geom_polygon(data=ne, 
               aes(x=long, y=lat, group=group), 
               colour = "magenta", fill = "palegreen", size=2)
psw <- geom_polygon(data=sw, 
               aes(x=long, y=lat, group=group), 
               colour = "firebrick", fill = "grey60", size=2)
pse <- geom_polygon(data=se, 
               aes(x=long, y=lat, group=group), 
               colour = "purple", fill = "grey75", size=2)

png("fourtyeightstates.png", width = 480, height= 480, units = "px")

p <- ggplot() + pw + pmw + pne + pse + psw + coord_equal()
print(p)        
       
dev.off() 
