# reading the data
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")

# subsetting required data
req_data <- NEI[ , c(4,6)]
# calculating total emission for each year
total_emission <- tapply(req_data$Emissions, req_data$year, sum, na.rm=T)

# scaling the emission values
for(i in 1:4) {
      total_emission[[i]] <- total_emission[[i]]/1000
}

# plot
barplot(total_emission, col= c("red", "green", "blue", "grey"), 
        xlab = "Years", 
        ylab = "PM2.5 emission (in Kilotons)",
        main = "Annual PM2.5 emission",
        ylim = c(0,8000))

# copy to png
dev.copy(png, file="plot1.png")
dev.off()
