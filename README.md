# MechaCar_Statistical_Analysis
 
## Linear Regression to Predict MPG

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
In a regression model, cofficients describe the mathematical relationship between an independent variable and the dependent variable. We use p-value for each coffient to inform whether the relationship is statistically signifiant and non-random.

Our model assumes a 95% confidence level by default, which 

Of the 6 variables/coefficients fit into the model, we've observed the following:
* mpg: 0 < 0.05 - therefore statistically significant non-random amount of variance
* **vehicle length**: 0 < 0.05 - therefore **statistically significant** non-random amount of variance
* vehicle weight: 0.08 > 0.05 - therefore statistically insignificant random amount of variance
* spoiler angle: 0.31 > 0.05 - therefore statsstically insignificant random amount of variance
* **ground clearance**: 0 < 0.05 - therefore **statistically significant** non-random amount of variance
* AWD: 0.19 > 0.05 - therefore statistically insignificant random amount of variance

We can conclude that vehicle length and ground clearance are statistically likely to provide non-random amounts of variance to this model to predict MPG.

<img width="829" alt="Screen Shot 2022-06-26 at 4 23 48 PM" src="https://user-images.githubusercontent.com/100495799/175832699-90db64d8-7cf3-4855-b65d-5c3b7413c4c2.png">

**Is the slope of the linear model considered to be zero? Why or why not?**
The slope of a linear regression informs how much change in the dependent variable is caused by changes in independent variables.  

The p-value for this model is 5.35e-11.  A low p-value suggests that we can reject the null hypothesis and that the slope is not zero, which then indicates changes in dependent variable can be explained by changes in dependent variables.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
In a linear regression model, r-square value explains the dress of the variability of our dependent variable (MPG) can be explained using this linear model. As such, with a r-square value of 0.7149, we can conclude that roughtly 71.49% of the variability of MPG can be explained using this linera model.  We can further test the model by including other variables of interest however, the model does predict mgp of MechCar prototypes effectively.

## Summary Statistics on Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Looking at the total summary, which consists of the output for all 3 manufacturing lots, the variance of the  suspension coils is 62.39, which is well within the 100 pounds per square inch requirement.

In addition, we examine each manufacturing lot separately and found that Lot 1 and Lot 2 are still the design spec requirement, with a variance of 0.97 and 7.47 respectively.  Lot 3, however, when looked one in isolation, has a variance that does not meet the requirement.  The variance is 170 PSI combined with a standard deviation of 13!

**Total Lots Summary**
<img width="408" alt="Screen Shot 2022-06-26 at 5 47 14 PM" src="https://user-images.githubusercontent.com/100495799/175834938-749d29b6-2d95-46e8-8311-586672f657ed.png">

**Individual Lot Summary**
<img width="492" alt="Screen Shot 2022-06-26 at 5 47 33 PM" src="https://user-images.githubusercontent.com/100495799/175834950-38985138-2d68-4a94-a540-572aadc737bc.png">

## T-Tests on Suspension Coils

In statistics, t-tsets compares the means of two samples and tells you how significant the differences between the group means are. In this section, we will examine whether all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

###### Total Summary:
p-value = 0.06028 > 0.05: which suggests that it is _not_ statistically different from the population mean of 1,500 pounds psi.
<img width="444" alt="Screen Shot 2022-06-26 at 6 03 06 PM" src="https://user-images.githubusercontent.com/100495799/175835460-d9cf01bb-bc2c-448b-9df5-b0445defecbd.png">

##### Lot 1:
p-value = 1 > 0.05: which suggests that it is _not_ statistically different from the population mean of 1,500 pounds psi.
 <img width="492" alt="Screen Shot 2022-06-26 at 6 06 13 PM" src="https://user-images.githubusercontent.com/100495799/175835520-1c0e582d-280d-47f7-8723-9616dc5ac96b.png">

##### Lot 2:
p-value = 0.6072 > 0.05: which suggests that it is _not_ statistically different from the population mean of 1,500 pounds psi.
 <img width="480" alt="Screen Shot 2022-06-26 at 6 06 59 PM" src="https://user-images.githubusercontent.com/100495799/175835531-7cef0b05-0bc4-4ac5-8711-40e2b9bb5c6e.png">

##### Lot 3:
p-value = 0.04168 > 0.05: which suggests that it is statistically different from the population mean of 1,500 pounds psi.
<img width="469" alt="Screen Shot 2022-06-26 at 6 07 20 PM" src="https://user-images.githubusercontent.com/100495799/175835542-7f6e440f-a98c-436c-a1b4-deb344f33ea2.png">

Clearly, there are some defects in manufacturing #3 based on multiple tests indicating that suspension coiled manufactured in this lot do not meet the design requirement due to high variability, high standard deviation and a mean that is significantly different than a sample population of 1,500.

## Study Design: MechaCar vs Competition
The next study we will conduct will focus on comparing performance of the MechaCar vehicles against perforrmance of vehicles from other manufacturers.

We will use **sales volume** as the gauge for performance - grouped by vehicles in similar category (coup, sedan, SUV, minivan, trucks, etc).
* Fuel efficiency
* Horsepower
* Engine Type
* Safety rating
* Price

**The null hypothesis:** MechaCar vehicles' sales volume is accurately reflected relative to the key variables above when compared to other manufacturers.
**The altherative hypothesis:** MechaCar vehicles' sales volume does not correlate to the key variables above compared to other manufacturers.

We can conduct several statistical tests to test the hypothesis, such as a multiple linear regression to help inform us how much each variable impacts sales volume (dependent varaible) and utilize t-tests using data from Mechacar and its competitors to point to any significant differences that could requirement further examinations.

