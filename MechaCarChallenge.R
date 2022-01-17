library(dplyr)
library(jsonlite)

#Deliverable 1
MechaCarMpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) # Read and crete table using MechaCar_mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMpg_table) #linear regression MechaCarMpg_table 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMpg_table))


# Deliverable 2
suspension_coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- suspension_coil_table %>%
  summarize(Mean = mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #Get Mean, Median Variance and Standard Deviation for PSI column in suspension_coil_table

lot_summary <- suspension_coil_table %>%
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table by LOt number

# Deliverable 3
t.test(suspension_coil_table$PSI,mu=mean(1500))

t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI, mu=mean(1500))
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI, mu=mean(1500))
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI, mu=mean(1500))