library(ggplot2)

# reading the data
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")

# subsetting the required data
scc.motor <- grep("Mobile.*Vehicles", SCC$EI.Sector)
scc.motor <- SCC[scc.motor, 1]
req_data <- NEI[(NEI$SCC %in% scc.motor & NEI$fips=="24510"), c(4,6)]

# plot
ggplot(req_data, aes(x=factor(year), y=Emissions, fill=year))+
      geom_bar(stat = "identity")+
      xlab("Years")+
      ylab("PM2.5 Emissions (in tons)")+
      ggtitle("Emissions from motor vehicle sources in Baltimore city")

# copy to png
dev.copy(png, file="plot5.png")
dev.off()
