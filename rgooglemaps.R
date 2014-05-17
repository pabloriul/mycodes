
install.packages("RgoogleMaps")

library(RgoogleMaps)

lat <- c(0, -34)  #now we are plotting the map
lon <- c(-35,-30)
terrain_close <- GetMap.bbox(lonR= range(lon), latR= range(lat), center= c(-17, -32.5), destfile= "terrclose4.png", zoom=4, maptype="terrain")

cat("\n")