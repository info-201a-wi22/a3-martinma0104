file <- "https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends.csv"
county_level <- read.csv(file, header=TRUE)
View(county_level)

file <- "https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends_jail_jurisdiction.csv"
jurisdiction_level <- read.csv(file, header=TRUE)
View(jurisdiction_level)

#5 computed data
library(dplyr)
jail_population <- county_level %>%
  filter(year == max(year, na.rm = TRUE)) %>%
  pull(total_pop)

barplot(jail_population, main="Jail population", xlab="Population in 2018 in different county",  
        ylab="Total population",
        border="blue", density=c(10,20,30,40,50))

Stat_with_most_population <- county_level %>%
  filter(total_pop == max(total_pop, na.rm=TRUE)) %>%
  pull(state)

Stat_with_least_population <- county_level %>%
  filter(total_pop == min(total_pop, na.rm=TRUE)) %>%
  pull(state)

Year_with_most_population <- county_level %>%
  filter(total_pop == max(total_pop, na.rm=TRUE)) %>%
  pull(year)

Year_with_least_population <- county_level %>%
  filter(total_pop == min(total_pop, na.rm=TRUE)) %>%
  pull(year)














