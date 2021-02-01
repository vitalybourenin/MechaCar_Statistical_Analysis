library(dplyr)
mecha_df <- read.csv('MechaCar_mpg.csv') #import file as dataframe
lm(mpg ~ vehicle_length + vehicle_weight + AWD + spoiler_angle + ground_clearance, data=mecha_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + AWD +spoiler_angle +ground_clearance, data=mecha_df)) #generate summary table
