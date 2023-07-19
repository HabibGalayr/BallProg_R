install.packages("worldfootballR")
# install.packages("devtools")
devtools::install_github("JaseZiv/worldfootballR")
library(worldfootballR)
library(tidyverse)
a<-fb_big5_advanced_season_stats(season_end_year = 2023,
                              stat_type = "possession",
                              team_or_player = "player")
b<-fb_big5_advanced_season_stats(season_end_year = 2023,
                                 stat_type = "passing",
                                 team_or_player = "player")
library(dplyr)
a$progcarry_p90 <- a$PrgC_Carries / a$Mins_Per_90
b$Progpasses_p90 <- b$PrgP / b$Mins_Per_90
write.csv(a,"~/a.csv")
write.csv(b,"~/b.csv")
