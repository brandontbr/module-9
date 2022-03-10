library(leaflet)

set.seed(12345)
df <- data.frame(lat= runif(30, min = 19.07, max = 28.70), long=runif(30, min = 72.87, max = 77.10))
head(df)

df %>%
  leaflet( width = 900) %>%
  addTiles() %>%
  addMarkers(clusterOptions = markerClusterOptions(), popup = "Hello!")