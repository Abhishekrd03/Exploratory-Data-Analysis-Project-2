# Exploratory-Data-Analysis-Project-2
This is the 2nd course project from the course "Exploratory Data Analysis" provided by John Hopkins University on coursera.
The dataset can be downloaded from here:
<a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip">Dataset</a>

The zip file contains two files:

* PM2.5 Emissions Data (summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. The description of the variables is:<ol>
  <li><b>fips</b>: A five-digit number (represented as a string) indicating the U.S. county
  <li><b>SCC</b>: The name of the source as indicated by a digit string (see source code classification table)
  <li><b>Pollutant</b>: A string indicating the pollutant
  <li><b>Emissions</b>: Amount of PM2.5 emitted, in tons
  <li><b>type</b>: The type of source (point, non-point, on-road, or non-road)
  <li><b>year</b>: The year of emissions recorded
</ol>

* Source Classification Code Table (Source_Classification_Code.rds): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source.

## Assignment
The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

## Questions
You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.
<ol>
  <li>Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
  <li>Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
  <li>Of the four types of sources indicated by the type(point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
  <li>Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
  <li>How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
  <li>Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
