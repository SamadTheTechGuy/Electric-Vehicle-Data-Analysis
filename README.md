# Electric-Vehicle-Data-Analysis
This is an explorative analysis of an eletric vehicle data.
# Brief Introduction
The electric vehicle population data of two main electric vehicles provided by the Department of Licensing: The Battery Electric Vehicle (BEV) - an all-electric vehicle using one or more batteries to store the electrical energy that powers the motor and is charged by plugging the vehicle into an electric power source. A Plug-in Hybrid Electric Vehicle (PHEV) - a vehicle that uses one or more batteries to power an electric motor; uses another fuel, such as gasoline or diesel, to power an internal combustion engine or other propulsion source; and is charged by plugging the vehicle in to an electric power source. So, recently, the Director of the Department hired me as a data analyst to help find some insightful information about the data.
## Brief Overview of the dataset
This dataset was made available on data.gov provided by the Department of Licensing, Washington state. It shows the Battery Electric Vehicles (BEVs) and Plug-in Hybrid Electric Vehicles (PHEVs) information currently registered through the department. 471 dupicated rows were deleted. Finally, the dataset consists of 124,245 rows and 17 columns.
## Problem Questions
*  What are the total number of Battery Electric Vehicle (BEV) and Plug-in Hybrid Electric Vehicle (PHEV) registered?
*  Which state, city, and county had the highest number of registered BEV?
*  What are the model years of the vehicle?
*  Which model has the highest registered number of electric vehicle with the model year?
*  Who are the top 10 manufacturers of the electric vehicle?
*  What are the top 10 electric vehicle model?
*  What are the categories of the vehicle model for clean alternative fuel vehicle(CAFV) with their model year?
*  What is the the total number of vehicle categories by model for CAFV that are Eligible, Non-eligible, or unknown?
*  Which vehicle model with its electric type covers the highest electric range (miles) greater than 100miles per electric charge?
*  What are the vehicle models that are not eligible for CAFV but can cover higher electric range?
*  What are the ranges for the lowest suggested retail price for the vehicle models with their model year and type by the manufacturers?
## Tool used
*  Postgresql
##  Processes
*  Created a table for the dataset in pgadmin
*  Imported the data into the table
*  Data cleaning - checked for errors/removed duplicates
*  Analysis
##  Key Insights
*  Many people registered for **Battery Electric Vehicle (BEV)** compared to **Plug-in hybrid electric vehicle (PHEV)** with **more than 60,000 registrations**.
![Screenshot (136)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/7c7d6ca3-379c-46fd-8672-998e5f0fe74e)

*  **Washinghton state**, **Seatle city**, and **King county** had the highest number of registered BEV.
*  The model year of the vehicles range from **1997 to 2023** excluding 2001, 2004, 2005, 2006, and 2007.
*  **Model Y 2022** had the highest registered number with a total of **7,558 registrations**.
![Screenshot (139)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/e2e0b1fd-08f4-467f-9a08-05dfe471c00e)

*  **Tesla** is the top manufacturer of the electric vehicle.
![Screenshot (141)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/7b9d15cd-4fff-4889-820e-9d7d118ef0d5)

* **Model 3** ranked as the top electric vehicle model.
![Screenshot (144)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/02d4e3d1-e929-4dcc-ab80-1174208bee3e)

* The 3 categories of the vehicle model for clean alternative fuel vehicle(CAFV) are: **Eligible, Not Eligible, and Unknown**.
![Screenshot (146)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/5f66360e-0f48-45b2-8d0f-fac721559cac)

* More of the vehicles **were eligible** for clean_alternative_fuel_vehicle (CAFV).
![Screenshot (148)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/483228c3-72c0-4a79-bda6-9e36e7c01fca)

* **Model S** with electric vehicle type **BEV** had the highest electric range - **337 miles per electric charge**.
![Screenshot (150)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/e9a0029b-10b6-4601-a7c5-69441d81b859)

* **NIRO and IONIQ** were the only two vehicle models not eligible for CAFV but can still cover higher range above 100miles.
![Screenshot (152)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/dc445f1e-8491-45bc-8889-818f446ec556)

* **PORSCHE 918 2015 PHEV** had the highest manufacturer's suggested lowest retail price while **KIA SOUL 2016 BEV** had the lowest.
![Screenshot (155)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/fc8f68bb-f3d0-4217-90ed-174887f8d4e8)

![Screenshot (156)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/fdd98c97-0d18-455d-ae4b-40c8f3f3daf7)

## Recommendation
I would suggest that the date for each registration of the vehicle be added to the dataset so as to track the trend of each registration over time - say monthly and yearly. With that, we can have a more convincing data to make a data-driven decision on the records of each vehicle. 

 


 


















