
install.packages("RgoogleMaps")

library(RgoogleMaps)

lat <- c(48,64) #define our map's ylim
lon <- c(-140,-110) #define our map's xlim
center = c(mean(lat), mean(lon))  #tell what point to

zoom <- 5  #zoom: 1 = furthest out (entire globe),

terrmap <- GetMap(center=center, zoom=zoom, maptype="terrain", destfile = "terrain.png") 

samps$size <- "small"  #create a column indicating size of marker
samps$col <- "red"   #create a column indicating color of marker
samps$char <- ""   #normal Google Maps pinpoints will be drawn
mymarkers <- cbind.data.frame(samps$lat, samps$lon, samps$size, samps$col, samps$char)   #create the data frame by binding my data columns of GPS coordinates with the newly created columns
names(mymarkers) <- c("lat", "lon", "size", "col", "char")  #assign column headings
lat <- c(0, -34)  #now we are plotting the map
lon <- c(-35,-30)
terrain_close <- GetMap.bbox(lonR= range(lon), latR= range(lat), center= c(-17, -32.5), destfile= "terrclose4.png", zoom=4, maptype="terrain")

cat("\n")