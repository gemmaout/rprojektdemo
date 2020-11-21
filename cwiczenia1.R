install.packages("devtools")
library("devtools")

install.packages("httr")
install.packages("jsonlite")

endpoint<-"https://api.openweathermap.org/data/2.5/weather?q=Lublin&units=metric&appid=ccd2c7f8b414cadf0c4383ce0a541dc2"
getWeather<-GET(endpoint)

weatherText<-content(getWeather,"text")
weatherJson<-fromJSON(weatherText,flatten = TRUE)
weatherDF<-as.data.frame(weatherJson)
View(weatherDF)


endpoint2<-"http://api.open-notify.org/astros.json"

getSpace<-GET(endpoint2)
spaceText<-content(getSpace,"text")
spaceJson<-fromJSON(spaceText,flatten = TRUE)
spaceDF<-as.data.frame(spaceJson)
View(spaceDF)
