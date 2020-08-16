library(ggplot2)

# reading the data
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")

# subsetting required data
scc.coal <- grep("Fuel Comb.*Coal", SCC$EI.Sector)
scc.coal <- SCC[scc.coal,1]
req_data <- NEI[(NEI$SCC %in% scc.coal), c(4,6)]

# plot
ggplot(req_data, aes(x=factor(year), y=Emissions/1000, fill=year))+
      geom_bar(stat="identity")+
      xlab("Years")+
      ylab("PM2.5 emission (in Kilotons)")+
      ggtitle("Emissions from coal combustion related sources")

# copy to png
dev.copy(png, file="plot4.png")
dev.off()
