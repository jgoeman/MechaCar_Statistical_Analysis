# MechaCar_Statistical_Analysis

## Linear Regression to predict MPG
![image](https://user-images.githubusercontent.com/36859475/149677990-3bb63b46-0e5a-4518-abe0-23c96f5f38da.png)    
![image](https://user-images.githubusercontent.com/36859475/149678047-28a7da21-0685-4d07-9a2c-0a726ffbc2ec.png)
    
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?    
- vehicle length, ground clearance and intercept are statistically unlikely to providerandom amounts of variance to the model.    

Is the slope of the linear model considered to be zero? Why or why not?    
- The slope of the linear model is not considered zero. The reason for this is the p-value is 5.35x10^-11. The significance level is considered to .05%. Therefore, we can state that there is sufficient evidence to reject the null hypothesis that the slope of the linear model is zero.    

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?    
- I would say yes this model does predict the mpg of the MechaCar effectively. The reason for this comes from looking at the R-squared value of 0.7149. This gives a high probability of the the model performing well in real world scenarios.

## Summary Statistics on Suspension Coils

![image](https://user-images.githubusercontent.com/36859475/149678578-d6a42aef-a18d-473b-8050-e7ed06815142.png)    

![image](https://user-images.githubusercontent.com/36859475/149678599-b65608ef-abac-4e0f-9363-e9b346287c8a.png)
    
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. As can be seen in the information above the current design specification for all lots in total meet this specification. When looking at each lot individually lots 1 and 2 both are within the propper variance of 100 psi, but lot 3 falls outside this specification with a variance of 170. Lots 1 and 2 seem to be skewing data to allow for the suspension coils to remain within 100 psi while looking at all lots in total.


## T-Tests on Suspension Coils
- All Manufacturing Lots    

![image](https://user-images.githubusercontent.com/36859475/149687565-278ece74-ff97-4f21-998d-dfd38daba4db.png)
- Lot 1   

![image](https://user-images.githubusercontent.com/36859475/149687608-827d150a-8ff4-4b38-b6f1-28939838c454.png)
- Lot 2    

![image](https://user-images.githubusercontent.com/36859475/149687657-22e3df03-d42b-4432-a48a-77012fd3ed67.png)
- Lot 3    

![image](https://user-images.githubusercontent.com/36859475/149687688-2d1e07ee-2ef9-4964-8d10-26637e797748.png)    
    
Given the population mean of 1500, the null hypothesis which states the two means(population and Sample) are not statistically different, and using the common 0.05 percent significance level. The following information can be derived:    
- When looking at all manufacturing lots together there is not sufficient evidence to reject the null hypothesis. This is due to a p-value of .06.
- When looking at manufacturing  lots 1 and 2  there is not sufficient evidence to reject the null hypothesis. This is due to a p-value of 1 for lot 1 and .6 for lot 2.
- When looking at manufacturing lot 3 the null hypothesis can be rejected as the p-value is .04. This tells us that lot 3 is statisically different from the population mean of 1500. Given this information the team should inspect lot 3 to look into the reason for these variances.

## Study Design: MechaCar vs Competition
### Metrics
To test the mecha car against the competition I would use 4 metrics for comparison:
- Cost
- Fuel Effiency(City)
- Fuel Efficiency(Hwy)
- safety Rating    

### Hypothesis
The null hypothesis for each of these metrics would be that they are not statistically different from the competition while the alternative hypothesis would be that the items are statistically different.    

### Tests
I would take samples of the competitions vehicles and our own vehicles and compare the information using Two-Sampe t-tests to see where the alternative hypothesis can be accepted. Using Two sample t-tests would allow me to see where there differences in the metrics when the p-value is less than .05(a rejected null hypothesis). This would point me in the best direction to compare the vehicles. i.e We may not be able to reject he null hypothesis for cost(similiar costs), but we can reject on the saftey rating which could allow us to show more value.

### Data
To run the statistical test a sufficiently large test sample data for the four metrics(Cost,Fuel Effiency(City), Fuel Efficiency(Hwy), and safety Rating) would be needed for the competitors and our own vehicles to make the necessary comparisons. This data would be used to get the means of each of the metrics to make our comparisons.
