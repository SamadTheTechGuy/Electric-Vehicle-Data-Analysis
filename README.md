# Electric-Vehicle-Data-Analysis
This is an exploratory analysis of an electric vehicle population data.
# Brief Introduction
The electric vehicle population data of two main electric vehicles provided by the Department of Licensing: The Battery Electric Vehicle (BEV) - an all-electric vehicle using one or more batteries to store the electrical energy that powers the motor and is charged by plugging the vehicle into an electric power source. A Plug-in Hybrid Electric Vehicle (PHEV) - a vehicle that uses one or more batteries to power an electric motor; uses another fuel, such as gasoline or diesel, to power an internal combustion engine or other propulsion source; and is charged by plugging the vehicle in to an electric power source. So, recently, the Director of the Department hired me as a data analyst to help find some insightful information about the data.
## Brief Overview of the dataset
This dataset was made available on data.gov provided by the Department of Licensing, Washington state. It shows the Battery Electric Vehicles (BEVs) and Plug-in Hybrid Electric Vehicles (PHEVs) information currently registered through the department. 124,716 rows was recorded. More than 120,000 duplicated rows were deleted. Finally, the dataset consists of 700 rows with 17 columns.
## Problem Questions
*  What are the total number of Battery Electric Vehicle (BEV) and Plug-in Hybrid Electric Vehicle (PHEV) registered?
*  Which state, and county had the highest number of registered electric vehicle type?
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
*  More people registered for **Battery Electric Vehicle (BEV)** compared to **Plug-in hybrid electric vehicle (PHEV)** with **more than 210 registrations**.
![Screenshot (193)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/90549b68-b4e4-43fa-ac70-1769102750e4)

*  **Washinghton state (WA)** and **King county** had the highest number of registered BEV.
![Screenshot (195)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/3516647f-4a33-4fbb-a251-6ea4ba76f557)
![Screenshot (197)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/f921f042-327d-438a-b601-4c521faf2185)

*  The model year of the vehicles ranges from **2008 to 2023** excluding 2009 and 2010.
![Screenshot (199)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/9c9b4ddf-a9ba-40ee-8651-70af97dd83fe)

*  **Model 3 2018** had the highest registered number with a total of **39 registrations**.
![Screenshot (201)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/a946a40d-2b0d-403f-b7f5-426a87a88cc8)

*  **Tesla** was the top manufacturer of the electric vehicle.
![Screenshot (203)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/5f9538bd-24fd-4489-9a04-775c340bce29)

* **Model 3** ranked as the top electric vehicle model.
![Screenshot (205)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/263a6ac6-d211-437d-9ec6-228ec5c1eaf2)

* The 3 categories of the vehicle model for clean alternative fuel vehicle(CAFV) are: **Eligible, Not Eligible, and Unknown**.
![Screenshot (207)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/749b5579-a8d1-4152-bca2-8dbdce514bf3)

* More of the vehicles **were eligible** for clean_alternative_fuel_vehicle (CAFV).
![Screenshot (209)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/4ca328a3-8426-482f-9635-1b66bc311224)

* **Model S** with electric vehicle type **BEV** had the highest electric range - **330 miles per electric charge**.
![Screenshot (212)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/3d1b41c9-e2f5-4abd-9696-e232a16a9808)

* **NIRO** was the only vehicle model not eligible for CAFV but can still cover higher range above 100miles.
![Screenshot (214)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/2caa76b0-eea7-4a82-8a3b-46ece921adfb)

* **FISKER KARMA 2012 PHEV** had the highest manufacturer's suggested lowest retail price while **KIA SOUL 2016 BEV** had the lowest.
![Screenshot (216)](https://github.com/SamadTheTechGuy/Electric-Vehicle-Data-Analysis/assets/97789215/0ebea87e-772e-4394-bf8b-6b7252525627)



## Recommendation
I would suggest that the date for each vehicle registration should be provided so as to track the trend of each registration over time - say monthly and yearly. With that, we can have a more convincing data to give insights - for instance we can have the exact figures of BEV and PHEV vehicles being registered monthly or yearly which could eventually help in decision making. 

 


 


















