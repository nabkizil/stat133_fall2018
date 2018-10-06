#title: Nba Teams Data
#description: this script is about ranking the data in the NBA
#inputs: the input is the data within the NBA file
#output: Ranking of the Nba data

library(dplyr)

setwd('C:/Users/nabki/Desktop/Stat133/workout1/data')
data <- read.csv("nba2018.csv")

data$experience <- as.character(data$experience)
data$experience[data$experience == "R"] = 0
data$experience <- as.integer(data$experience)

data$salary <- data$salary/1000000

levels(data$position) <-  c("center", 
                            "power_fwd", 
                            "point_guard", 
                            "small_fwd", 
                            "shoot_guard")



data <- mutate(data, missed_fg = field_goals_atts - field_goals)
data <- mutate(data, missed_ft = points1_atts - points1)
data <- mutate(data, rebounds = total_rebounds)
data <- mutate(data, efficiency = (points + total_rebounds + assists + steals + blocks - missed_fg - missed_ft - turnovers) / games)

a <- summary(data$efficiency)

getwd()
sink(file = "C:/Users/nabki/Desktop/Stat133/workout1/code/efficiency-summary.txt" )
a
sink()

teams <- summarise(group_by(teams, team),
                   experience = sum(experience),
                   salary = round(sum(salary), 2),
                   points3 = sum(points3),
                   points2 = sum(points2),
                   points1 = sum(points1),
                   points = sum(points),
                   off_rebounds = sum(off_rebounds),
                   def_rebounds = sum(off_rebounds),
                   assists = sum(assists),
                   steals = sum(steals),
                   blocks = sum(blocks),
                   turnovers = sum(turnovers),
                   fouls = sum(fouls),
                   efficiency = sum(efficiency)
)
teams

summary(teams)
write.csv(teams, "../data/nba2018-teams.csv")
sink()



