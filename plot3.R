library(ggplot2)

# reading the data
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")

# subsetting required data
req_data <- subset(NEI, fips == "24510", c("Emissions", "type", "year"))

# plot
ggplot(req_data, aes(x=factor(year),y=Emissions, fill=type))+
      geom_bar(stat = "identity")+
      facet_grid(.~type)+
      xlab("Years")+
      ylab("Total PM2.5 emission (in tons)")+
      ggtitle("PM2.5 emission in Baltimore by Source Type")

# copy to png
dev.copy(png, file="plot3.png")
dev.off()
