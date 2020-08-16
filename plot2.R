# reading the data
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")

#subsetting required data
req_data <- subset(NEI, fips == "24510", c("Emissions", "year"))
# calculating total emission for each year
total_emission <- tapply(req_data$Emissions, req_data$year, sum, na.rm=T)

# plot
barplot(total_emission, col= c("red", "green", "blue", "grey"), 
        xlab = "Years", 
        ylab = "PM2.5 emission (in tons)",
        main = "Annual PM2.5 emission in Maryland",
        ylim = c(0,4000))

# copy to png
dev.copy(png, file="plot2.png")
dev.off()
