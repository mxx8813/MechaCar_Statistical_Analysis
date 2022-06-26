## Deliverable #1

#load libraries to read
library(dplyr)
library(tidyverse)

#import csv to read into a dataframe
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg)

# RScript written for a linear regression model to be performed on all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

#create the statistical summary of the linear regression model with the intended p-values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

## Deliverable #2
#import suspension_coil csv to read into a dataframe
suspension_coil <- read.csv(file='suspension_coil.csv',check.names=F,stringsAsFactors = F)
head(suspension_coil)

#total_summary
total_summary <- suspension_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          .groups = 'keep') 

#lot_summary with groupby() & summary by
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI), 
                                                                             Variance = var(PSI), 
                                                                             SD = sd(PSI) ,
                                                                             .groups = 'keep') 

#Deliverable #3 T-tests
#t-test for all lots, determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI,mu=1500)

#t-test for each lot

#Lot 1
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

#Lot 2
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

#Lot 3
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

