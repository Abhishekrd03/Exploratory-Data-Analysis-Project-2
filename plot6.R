library(ggplot2)

# reading the data
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")

# subsetting the required data
scc.motor <- grep("Mobile.*Vehicles", SCC$EI.Sector)
scc.motor <- SCC[scc.motor, 1]
req_data <- NEI[(NEI$SCC %in% scc.motor), c(1,4,6)]
req_data <- subset(req_data, (fips=="24510" | fips=="06037"))

# adding city
req_data$city <- NA
for(i in 1:nrow(req_data)) {
      if(req_data[i,1] == "24510") req_data[i,4] <- "Baltimore"
      else req_data[i,4] <- "Los Angeles"
}

# plot
ggplot(req_data, aes(x=factor(year),y=Emissions, fill=city))+
      geom_bar(stat = "identity")+
      facet_grid(city~.)+
      xlab("Years")+
      ylab("PM2.5 emissions (in tons)")+
      ggtitle("Motor vehicle emission in Baltimore and Los Angeles")
      
# copy to png
dev.copy(png, file="plot6.png")
dev.off()
