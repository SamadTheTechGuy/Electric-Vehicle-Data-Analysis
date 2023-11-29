--To create the table for the dataset
CREATE TABLE Electric_Vehicle_Data (
		VIN_1_10 VARCHAR(50),
		County TEXT,
		City TEXT,
		State TEXT,
		Postal_Code INT,
		Model_Year INT,
		Make VARCHAR(50),
		Model VARCHAR(50),
		Electric_Vehicle_Type VARCHAR(100),
		Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility VARCHAR(100),
		Electric_Range INT,
		Base_MSRP INT,
		Legislative_District INT,
		DOL_Vehicle_ID INT,
		Vehicle_Location VARCHAR(50),
		Electric_Utility VARCHAR(250),
		_2020_Census_Tract BIGINT
);

--VIN: Vehicle's Identification Number
--Make: The manufacturer of the vehicle determined by decoding the VIN
--Base_MRSP: The lowest Manufacturer's Suggested Retail Price for any trim level of the model question
--DOL_Vehicle_ID: Unique number assigned to each vehicle by Department of Licensing for identification purposes.

--To import the data into pgadmin
COPY Electric_Vehicle_Data FROM 'C:\Users\Public\Documents\Electric_Vehicle_Population_Data.csv'
	WITH DELIMITER ',' CSV HEADER;
--To view the whole dataset
SELECT * FROM Electric_Vehicle_Data;

--Data Cleaning
--To check for/remove duplicates
ALTER TABLE Electric_Vehicle_Data ADD COLUMN row_num INT GENERATED ALWAYS AS IDENTITY;

DELETE FROM Electric_Vehicle_Data
WHERE row_num IN (
		  SELECT MAX(row_num)
		  FROM Electric_Vehicle_Data
		  GROUP BY county, city
		  HAVING COUNT(*) > 1);
				
ALTER TABLE Electric_Vehicle_Data DROP COLUMN row_num;

--To view the registered electric vehicle type
SELECT
	DISTINCT electric_vehicle_type
FROM Electric_Vehicle_Data;

--To find the total number of Battery Electric Vehicle (BEV) and Plug-in Hybrid Electric Vehicle (PHEV) registered
SELECT
      DISTINCT electric_vehicle_type,
      COUNT(*) OVER (PARTITION BY electric_vehicle_type) AS num_registered_vehicle				
FROM Electric_Vehicle_Data
ORDER BY 2;

--To find the number of electric vehicle type registered by state
SELECT
      electric_vehicle_type,
      state,
      COUNT(*) AS num_registered_vehicle_state
FROM Electric_Vehicle_Data
GROUP BY 2,1
ORDER BY 3 DESC;

--To find the number of electric vehicle type registered by county
SELECT
      electric_vehicle_type,
      county,
      COUNT(*) AS num_registered_vehicle_county
FROM Electric_Vehicle_Data
WHERE county is not null
GROUP BY 2,1
ORDER BY 3 DESC;

--To find the number of electric vehicle type registered by city
SELECT
      electric_vehicle_type,
      city,
      COUNT(*) AS num_registered_vehicle_city
FROM Electric_Vehicle_Data
WHERE city is not null
GROUP BY 2,1
ORDER BY 3 DESC;

--To view the model year of each vehicle
SELECT
     DISTINCT model_year
FROM Electric_Vehicle_Data
ORDER BY model_year;

--To find the model that has the highest registered number of electric vehicle with the model year
SELECT
      model,
      model_year,
      COUNT(*) AS num_registered_vehicle
FROM Electric_Vehicle_Data
WHERE model is not null
GROUP BY 1,2
ORDER BY 3 DESC;

--To find the top 10 manufacturers of the electric vehicle
SELECT
      make,
      COUNT(*) AS num_manufacturers
FROM Electric_Vehicle_Data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

--To find the top 10 electric vehicle model
SELECT
      model,
      COUNT(*) AS num_models
FROM Electric_Vehicle_Data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

--To find the categories of the vehicle model for clean alternative fuel vehicle with their model year 
SELECT
      DISTINCT model,
		CASE 
		    WHEN clean_alternative_fuel_vehicle_cafv_eligibility = 'Clean Alternative Fuel Vehicle Eligible'
			THEN 'Eligible' 
		    WHEN clean_alternative_fuel_vehicle_cafv_eligibility = 'Eligibility unknown as battery range has not been researched'
			THEN 'Unknown'
		    ELSE 'Not Eligible'
		END AS Vehicle_Categories,
     model_year
FROM Electric_Vehicle_Data
WHERE model is not null
ORDER BY 3 DESC;

--To find the the total number of vehicle categories by model for CAFV that are Eligible, Non-eligible, or unknown
SELECT
      vehicle_categories,
      COUNT(*) AS num_vehicle_categories
FROM
      (SELECT
	     DISTINCT model,
		       CASE 
		 	    WHEN clean_alternative_fuel_vehicle_cafv_eligibility = 'Clean Alternative Fuel Vehicle Eligible'
				THEN 'Eligible' 
			    WHEN clean_alternative_fuel_vehicle_cafv_eligibility = 'Eligibility unknown as battery range has not been researched'
				THEN 'Unknown'
			    ELSE 'Not Eligible'
		       END AS Vehicle_Categories,
		       model_year
	FROM Electric_Vehicle_Data
	WHERE model is not null
	ORDER BY 3 DESC) x
WHERE vehicle_categories IN ('Eligible','Not Eligible', 'Unknown')
GROUP BY 1
ORDER BY 2 DESC;

--To find the vehicle model with its electric type that covers the highest electric range (miles)
--greater than 100miles per electric charge
SELECT
	DISTINCT model,
	electric_vehicle_type,
	MAX(electric_range) as Max_distance
FROM Electric_Vehicle_Data
WHERE model is not null
GROUP BY 1,2
HAVING MAX(electric_range) > 100
ORDER BY 3 DESC;

--To find the vehicle model that are not eligible for CAFV but can cover higher electric range
SELECT 
	model,
	Higher_range
FROM
	(SELECT
		DISTINCT model,
			CASE 
	 			WHEN clean_alternative_fuel_vehicle_cafv_eligibility = 'Clean Alternative Fuel Vehicle Eligible'
					THEN 'Eligible' 
				WHEN clean_alternative_fuel_vehicle_cafv_eligibility = 'Eligibility unknown as battery range has not been researched'
					THEN 'Unknown'
	 			ELSE 'Not Eligible'
				END AS Vehicle_Categories,
		MAX(electric_range) OVER(PARTITION BY model) AS Higher_range
	FROM Electric_Vehicle_Data
	WHERE model is not null
	ORDER BY 3 DESC) X
WHERE Vehicle_Categories = 'Not Eligible'
AND Higher_range > 100;

--To find the range for the lowest suggested retail price for the vehicle models with their model year 
--and type by the manufacturers 
SELECT
	DISTINCT make,
	model,
	electric_vehicle_type,
	model_year,
	Max(base_msrp) AS manufacture_retail_price
FROM Electric_Vehicle_Data
WHERE base_msrp <> 0
GROUP BY 1,2,3,4
ORDER BY 5 DESC;














