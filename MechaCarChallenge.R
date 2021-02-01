library(dplyr)
mecha_df <- read.csv('MechaCar_mpg.csv') #import file as dataframe
lm(mpg ~ vehicle_length + vehicle_weight + AWD + spoiler_angle + ground_clearance, data=mecha_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + AWD +spoiler_angle +ground_clearance, data=mecha_df)) #generate summary table
##Deliverable 2
suspension_table <- read.csv('Suspension_Coil.csv')
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), St.Dev=sd(PSI), Variance=var(PSI))
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), St.Dev=sd(PSI), Variance=var(PSI))
##Deliverable 3
sample_PSI <- suspension_table %>% sample_n(50) #Get random sample of PSI across lots
t.test(sample_PSI$PSI, mu=mean(suspension_table$PSI)) 

t.test(subset(sample_PSI, Manufacturing_Lot == "Lot1")$PSI, mu=mean(suspension_table$PSI)) #Determine if PSI for each lot statistically different from that of population
t.test(subset(sample_PSI, Manufacturing_Lot == "Lot2")$PSI, mu=mean(suspension_table$PSI)) #Determine if PSI for each lot statistically different from that of population
t.test(subset(sample_PSI, Manufacturing_Lot == "Lot3")$PSI, mu=mean(suspension_table$PSI)) #Determine if PSI for each lot statistically different from that of population
