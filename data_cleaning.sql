create  database WindTurbine;
use WindTurbine;

create table wind_turbine(
date_Column date, Wind_speed varchar(50), power varchar(50), Nacelle_ambient_temperature varchar(50),
Generator_bearing_temperature varchar(40), Gear_oil_temperature varchar(50), Ambient_temperature varchar(50),
Rotor_speed varchar(50), Nacelle_temperature varchar(50), Bearing_temperature varchar(50), 
Generator_speed varchar(50), Yaw_angle varchar(50), Wind_direction varchar(50), Wheel_hub_temperature varchar(50),
Gear_box_inlet_temperature varchar(50), Failure_status varchar(50));

alter table wind_turbine
modify date_column varchar(255);

update wind_turbine
set date_column=date_format(date_column, "%b/%d/%y");

show variables like 'secure_file_priv';
show variables like '%local%';
set global local_infile = 1;

load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Wind_turbine.csv"
into table windturbine.wind_turbine
fields terminated by ','
lines terminated by '\n'
ignore 0 rows;

select * from wind_turbine;

select count(*) as 'No of rows' from wind_turbine;
select count(*) as 'No of columns' from information_schema.columns where table_name='wind_turbine';


# **************First Moment Business Decision / Measures of Central Tendency**********************
# *************************************************************************************************

# *******************Calculating Mean*****************
select
avg(wind_speed) as Mean_wind_speed,
avg(power) as mean_power,
avg(Nacelle_ambient_temperature) as mean_nacellele_ambient_temperature,
avg(Generator_bearing_temperature) as mean_Generator_bearing_temperature,
avg(Gear_oil_temperature) as mean_Gear_oil_temperature,
avg(Ambient_temperature) as mean_Ambient_temperature,
avg(Rotor_speed) as mean_Rotor_speed,
avg(Nacelle_temperature) as mean_Nacelle_temperature,
avg(Bearing_temperature) as mean_Bearing_temperature,
avg(Generator_speed) as mean_Generature_speed,
avg(Yaw_angle) as mean_Yaw_angle,
avg(Wind_direction) as mean_Wind_direction,
avg(wheel_hub_temperature) as mean_wheel_hub_temperature,
avg(Gear_box_inlet_temperature) as mean_Gear_box_inlet_temperature
from wind_turbine;



# ***********Calculating Median***************
select
avg(wind_speed) as Median_wind_speed,
avg(power) as median_power,
avg(Nacelle_ambient_temperature) as median_nacellele_ambient_temperature,
avg(Generator_bearing_temperature) as median_Generator_bearing_temperature,
avg(Gear_oil_temperature) as median_Gear_oil_temperature,
avg(Ambient_temperature) as median_Ambient_temperature,
avg(Rotor_speed) as median_Rotor_speed,
avg(Nacelle_temperature) as median_Nacelle_temperature,
avg(Bearing_temperature) as median_Bearing_temperature,
avg(Generator_speed) as median_Generature_speed,
avg(Yaw_angle) as median_Yaw_angle,
avg(Wind_direction) as median_Wind_direction,
avg(wheel_hub_temperature) as median_wheel_hub_temperature,
avg(Gear_box_inlet_temperature) as median_Gear_box_inlet_temperature
from(
select wind_speed,power,Nacelle_ambient_temperature,Generator_bearing_temperature,Gear_oil_temperature,
Ambient_temperature,Rotor_speed,Nacelle_temperature,Bearing_temperature,Generator_speed,Yaw_angle,
Wind_direction,wheel_hub_temperature,Gear_box_inlet_temperature,
row_number() over(order by wind_speed,power,Nacelle_ambient_temperature,Generator_bearing_temperature,Gear_oil_temperature,
Ambient_temperature,Rotor_speed,Nacelle_temperature,Bearing_temperature,Generator_speed,Yaw_angle,
Wind_direction,wheel_hub_temperature,Gear_box_inlet_temperature) as row_num, count(*) over()
as total_rows
from wind_turbine)
as ranked where row_num in (ceil(total_rows/2.0),floor(total_rows/2.0)+1);




#****************Second Moment Business Decision / Measures of Dispersion***************
#***************************************************************************************

#***********Calculating standard deviation**************
SELECT
    STDDEV(wind_speed) AS stddev_wind_speed,
    STDDEV(power) AS stddev_power,
    stddev(Nacelle_ambient_temperature) as stddev_nacellele_ambient_temperature,
	stddev(Generator_bearing_temperature) as stddev_Generator_bearing_temperature,
	stddev(Gear_oil_temperature) as stddev_Gear_oil_temperature,
	stddev(Ambient_temperature) as stddev_Ambient_temperature,
	stddev(Rotor_speed) as stddev_Rotor_speed,
	stddev(Nacelle_temperature) as stddev_Nacelle_temperature,
	stddev(Bearing_temperature) as stddev_Bearing_temperature,
	stddev(Generator_speed) as stddev_Generature_speed,
	stddev(Yaw_angle) as stddev_Yaw_angle,
	stddev(Wind_direction) as stddev_Wind_direction,
	stddev(wheel_hub_temperature) as stddev_wheel_hub_temperature,
	stddev(Gear_box_inlet_temperature) as stddev_Gear_box_inlet_temperature
from wind_turbine;



#**************RANGE***************
SELECT 
 MAX(wind_speed) - MIN(wind_speed) AS wind_speed_range,
 MAX(power) - MIN(power) AS power_range,
 MAX(Nacelle_ambient_temperature) - MIN(Nacelle_ambient_temperature) AS Nacelle_ambient_temperature_range,
 MAX(Generator_bearing_temperature) - MIN(Generator_bearing_temperature) AS Generator_bearing_temperature_range,
 MAX(Gear_oil_temperature) - MIN(Gear_oil_temperature) AS Gear_oil_temperature_range,
 MAX(Ambient_temperature) - MIN(Ambient_temperature) AS Ambient_temperature_range,
 MAX(Rotor_Speed) - MIN(Rotor_Speed) AS Rotor_Speed_range,
 MAX(Nacelle_temperature) - MIN(Nacelle_temperature) AS Nacelle_temperature_range,
 MAX(Bearing_temperature) - MIN(Bearing_temperature) AS Bearing_temperature_range,
 MAX(Generator_speed) - MIN(Generator_speed) AS Generator_speed_range,
 MAX(Yaw_angle) - MIN(Yaw_angle) AS Yaw_angle_range,
 MAX(Wind_direction) - MIN(Wind_direction) AS Wind_direction_range,
 MAX(Wheel_hub_temperature) - MIN(Wheel_hub_temperature) AS Wheel_hub_temperature_range,
 MAX(Gear_box_inlet_temperature) - MIN(Gear_box_inlet_temperature) AS Gear_box_inlet_temperature_range
FROM wind_turbine;


# ********************** Calculating Variance *********************

SELECT
 VARIANCE(wind_speed) AS wind_speed_variance,
 VARIANCE(power) AS power_variance,
 VARIANCE(Nacelle_ambient_temperature) AS Nacelle_ambient_temperature_variance,
 VARIANCE(Generator_bearing_temperature) AS Generator_bearing_temperature_variance,
 VARIANCE(Gear_oil_temperature) AS Gear_oil_temperature_variance,
 VARIANCE(Ambient_temperature) AS Ambient_temperature_variance,
 VARIANCE(Rotor_Speed) AS Rotor_Speed_variance,
 VARIANCE(Nacelle_temperature) AS Nacelle_temperature_variance,
 VARIANCE(Bearing_temperature) AS Bearing_temperature_variance,
 VARIANCE(Generator_speed) AS Generator_speed_variance,
 VARIANCE(Yaw_angle) AS Yaw_angle_variance,
 VARIANCE(Wind_direction) AS Wind_direction_variance,
 VARIANCE(Wheel_hub_temperature) AS Wheel_hub_temperature_variance,
 VARIANCE(Gear_box_inlet_temperature) AS Gear_box_inlet_temperature_variance
FROM wind_turbine;




#****************Third Moment Business Decision / Skewness************
#*********************************************************************
SELECT
(
SUM(POWER(wind_speed- (SELECT AVG(wind_speed) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(wind_speed) FROM wind_turbine), 3))
) AS skewness
FROM wind_turbine;

SELECT
(
SUM(POWER(Power- (SELECT AVG(Power) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Power) FROM wind_turbine), 3))
) AS power_skewness
FROM wind_turbine;

SELECT
(
SUM(POWER(Nacelle_ambient_temperature- (SELECT AVG(Nacelle_ambient_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Nacelle_ambient_temperature) FROM wind_turbine), 3))
) AS Nacelle_ambient_temperature_skewness
FROM wind_turbine;

SELECT
(
SUM(POWER(Generator_bearing_temperature- (SELECT AVG(Generator_bearing_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Generator_bearing_temperature) FROM wind_turbine), 3))
) AS Generator_bearing_temperature_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Gear_oil_temperature- (SELECT AVG(Gear_oil_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Gear_oil_temperature) FROM wind_turbine), 3))
) AS Gear_oil_temperature_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Ambient_temperature- (SELECT AVG(Ambient_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Ambient_temperature) FROM wind_turbine), 3))
) AS Ambient_temperature_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Rotor_Speed- (SELECT AVG(Rotor_Speed) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Rotor_Speed) FROM wind_turbine), 3))
) AS Rotor_Speed_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Nacelle_temperature- (SELECT AVG(Nacelle_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Nacelle_temperature) FROM wind_turbine), 3))
) AS Nacelle_temperature_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Bearing_temperature- (SELECT AVG(Bearing_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Bearing_temperature) FROM wind_turbine), 3))
) AS Bearing_temperature_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Generator_speed- (SELECT AVG(Generator_speed) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Generator_speed) FROM wind_turbine), 3))
) AS Generator_speed_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Yaw_angle- (SELECT AVG(Yaw_angle) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Yaw_angle) FROM wind_turbine), 3))
) AS Yaw_angle_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Wind_direction- (SELECT AVG(Wind_direction) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Wind_direction) FROM wind_turbine), 3))
) AS Wind_direction_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Wheel_hub_temperature- (SELECT AVG(Wheel_hub_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Wheel_hub_temperature) FROM wind_turbine), 3))
) AS Wheel_hub_temperature_skewness
FROM wind_turbine;


SELECT
(
SUM(POWER(Gear_box_inlet_temperature- (SELECT AVG(Gear_box_inlet_temperature) FROM wind_turbine), 3)) /
(COUNT(*) * POWER((SELECT STDDEV(Gear_box_inlet_temperature) FROM wind_turbine), 3))
) AS Gear_box_inlet_temperatureskewness
FROM wind_turbine;


#************Fourth Moment Business Decision / Kurtosis************
#*******************************************************************

SELECT
(
(SUM(POWER(wind_speed- (SELECT AVG(wind_speed) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(wind_speed) FROM wind_turbine), 4))) - 3
) AS wind_speed_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Power- (SELECT AVG(Power) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Power) FROM wind_turbine), 4))) - 3
) AS Power_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Nacelle_ambient_temperature- (SELECT AVG(Nacelle_ambient_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Nacelle_ambient_temperature) FROM wind_turbine), 4))) - 3
) AS Nacelle_ambient_temperature_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Generator_bearing_temperature- (SELECT AVG(Generator_bearing_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Generator_bearing_temperature) FROM wind_turbine), 4))) - 3
) AS Generator_bearing_temperature_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Gear_oil_temperature- (SELECT AVG(Gear_oil_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Gear_oil_temperature) FROM wind_turbine), 4))) - 3
) AS Gear_oil_temperature_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Ambient_temperature- (SELECT AVG(Ambient_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Ambient_temperature) FROM wind_turbine), 4))) - 3
) AS Ambient_temperature_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Rotor_Speed- (SELECT AVG(Rotor_Speed) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Rotor_Speed) FROM wind_turbine), 4))) - 3
) AS Rotor_Speed_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Nacelle_temperature- (SELECT AVG(Nacelle_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Nacelle_temperature) FROM wind_turbine), 4))) - 3
) AS Nacelle_temperature_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Bearing_temperature- (SELECT AVG(Bearing_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Bearing_temperature) FROM wind_turbine), 4))) - 3
) AS Bearing_temperature_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Generator_speed- (SELECT AVG(Generator_speed) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Generator_speed) FROM wind_turbine), 4))) - 3
) AS Generator_speed_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Yaw_angle- (SELECT AVG(Yaw_angle) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Yaw_angle) FROM wind_turbine), 4))) - 3
) AS Yaw_angle_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Wind_direction- (SELECT AVG(Wind_direction) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Wind_direction) FROM wind_turbine), 4))) - 3
) AS Wind_direction_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Wheel_hub_temperature- (SELECT AVG(Wheel_hub_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Wheel_hub_temperature) FROM wind_turbine), 4))) - 3
) AS Wheel_hub_temperature_kurtosis
FROM wind_turbine;


SELECT
(
(SUM(POWER(Gear_box_inlet_temperature- (SELECT AVG(Gear_box_inlet_temperature) FROM wind_turbine), 4)) /
(COUNT(*) * POWER((SELECT STDDEV(Gear_box_inlet_temperature) FROM wind_turbine), 4))) - 3
) AS Gear_box_inlet_temperature_kurtosis
FROM wind_turbine;




# # **************Finding Missing value*****************
select count(*) as missing_value_date_column from wind_turbine where date_column is null;
select count(*) as missing_value_wind_speed from wind_turbine where wind_speed is null;
select count(*) as missing_value_power from wind_turbine where power is null;
select count(*) as missing_value_Nacelle_ambient_temperature from wind_turbine where Nacelle_ambient_temperature is null;
select count(*) as missing_value_Generator_bearing_temperature from wind_turbine where Generator_bearing_temperature is null;
select count(*) as missing_value_Gear_oil_temperature from wind_turbine where Gear_oil_temperature is null;
select count(*) as missing_value_Ambient_temperature from wind_turbine where Ambient_temperature is null;
select count(*) as missing_value_Rotor_speed from wind_turbine where Rotor_speed is null;
select count(*) as missing_value_Nacelle_temperature from wind_turbine where Nacelle_temperature is null;
select count(*) as missing_value_Bearing_temperature from wind_turbine where Bearing_temperature is null;
select count(*) as missing_value_Generator_speed from wind_turbine where Generator_speed is null;
select count(*) as missing_value_Yaw_angle from wind_turbine where Yaw_angle is null;
select count(*) as missing_value_Wind_direction from wind_turbine where Wind_direction is null;
select count(*) as missing_value_Wheel_hub_temperature from wind_turbine where Wheel_hub_temperature is null;
select count(*) as missing_value_Gear_box_inlet_temperature from wind_turbine where Gear_box_inlet_temperature is null;


#***********finding Duplicates*************

SELECT date_column,Wind_speed,Power,Nacelle_ambient_temperature,Generator_bearing_temperature,
Gear_oil_temperature,Ambient_temperature,Rotor_Speed,Nacelle_temperature,Bearing_temperature,Generator_speed,
Yaw_angle,Wind_direction,Wheel_hub_temperature,Gear_box_inlet_temperature
, COUNT(*)
FROM wind_turbine
GROUP BY date_column,Wind_speed,Power,Nacelle_ambient_temperature,Generator_bearing_temperature,
Gear_oil_temperature,Ambient_temperature,Rotor_Speed,Nacelle_temperature,Bearing_temperature,Generator_speed,
Yaw_angle,Wind_direction,Wheel_hub_temperature,Gear_box_inlet_temperature
HAVING COUNT(*) > 1;




#***********calculating zscore and find outliers****************
#******************Zscore**************
SELECT
    date_column,
    wind_speed,
    (wind_speed - avg(wind_speed) over())/stddev(wind_speed) over() as Wind_speed_Zscore
FROM
    wind_turbine;

SELECT
    date_column,
    power,
    (power - avg(power) over())/stddev(power) over() as power_Zscore
FROM
    wind_turbine;
    
SELECT
    date_column,
    Nacelle_ambient_temperature,
    (Nacelle_ambient_temperature - avg(Nacelle_ambient_temperature) over())/stddev(Nacelle_ambient_temperature) over() as Nacelle_ambient_temperature_Zscore
FROM
    wind_turbine; 
    
 
 SELECT
    date_column,
    Generator_bearing_temperature,
    (Generator_bearing_temperature - avg(Generator_bearing_temperature) over())/stddev(Generator_bearing_temperature) over() as Generator_bearing_temperature_Zscore
FROM
    wind_turbine; 
    
    
SELECT
    Gear_oil_temperature,
    (Gear_oil_temperature - avg(Gear_oil_temperature) over())/stddev(Gear_oil_temperature) over() as Gear_oil_temperature_Zscore
FROM
    wind_turbine;     
    

SELECT
    Ambient_temperature,
    (Ambient_temperature - avg(Ambient_temperature) over())/stddev(Ambient_temperature) over() as Ambient_temperature_Zscore
FROM
    wind_turbine; 
    
    
SELECT
    Rotor_Speed,
    (Rotor_Speed - avg(Rotor_Speed) over())/stddev(Rotor_Speed) over() as Rotor_Speed_Zscore
FROM
    wind_turbine;
    
    
SELECT
    Nacelle_temperature,
    (Nacelle_temperature - avg(Nacelle_temperature) over())/stddev(Nacelle_temperature) over() as Nacelle_temperature_Zscore
FROM
    wind_turbine;    



SELECT
    Bearing_temperature,
    (Bearing_temperature - avg(Bearing_temperature) over())/stddev(Bearing_temperature) over() as Bearing_temperature_Zscore
FROM
    wind_turbine; 


SELECT
    Generator_speed,
    (Generator_speed - avg(Generator_speed) over())/stddev(Generator_speed) over() as Generator_speed_Zscore
FROM
    wind_turbine; 
    
    
SELECT
    Yaw_angle,
    (Yaw_angle - avg(Yaw_angle) over())/stddev(Yaw_angle) over() as Yaw_angle_Zscore
FROM
    wind_turbine;     
    
    
SELECT
    Wind_direction,
    (Wind_direction - avg(Wind_direction) over())/stddev(Wind_direction) over() as Wind_direction_Zscore
FROM
    wind_turbine;       
    

SELECT
    Wheel_hub_temperature,
    (Wheel_hub_temperature - avg(Wheel_hub_temperature) over())/stddev(Wheel_hub_temperature) over() as Wheel_hub_temperature_Zscore
FROM
    wind_turbine; 


SELECT
    Gear_box_inlet_temperature,
    (Gear_box_inlet_temperature - avg(Gear_box_inlet_temperature) over())/stddev(Gear_box_inlet_temperature) over() as Gear_box_inlet_temperature_Zscore
FROM
    wind_turbine; 


#****************Finding Outliers******************
SELECT * from
(select
    date_column
    wind_speed,
    (wind_speed - avg(wind_speed) over())/stddev(wind_speed) over() as Wind_Zscore
    from Wind_turbine ) as score_table
where wind_Zscore >3 or wind_zscore<-3;


SELECT * from
(select
    date_column
    power,
    (power - avg(power) over())/stddev(power) over() as power_Zscore
    from Wind_turbine ) as score_table
where power_Zscore >3 or power_zscore<-3;


SELECT * from
(select
    date_column
    Nacelle_ambient_temperature,
    (Nacelle_ambient_temperature - avg(Nacelle_ambient_temperature) over())/stddev(Nacelle_ambient_temperature) over() as Nacelle_ambient_temperature_Zscore
    from Wind_turbine ) as score_table
where Nacelle_ambient_temperature_Zscore >3 or Nacelle_ambient_temperature_zscore<-3;


SELECT * from
(select
    date_column
    Generator_bearing_temperature,
    (Generator_bearing_temperature - avg(Generator_bearing_temperature) over())/stddev(Generator_bearing_temperature) over() as Generator_bearing_temperature_Zscore
    from Wind_turbine ) as score_table
where Generator_bearing_temperature_Zscore >3 or Generator_bearing_temperature_zscore<-3;


SELECT * from
(select
    Gear_oil_temperature,
    (Gear_oil_temperature - avg(Gear_oil_temperature) over())/stddev(Gear_oil_temperature) over() as Gear_oil_temperature_Zscore
    from Wind_turbine ) as score_table
where Gear_oil_temperature_Zscore >3 or Gear_oil_temperature_zscore<-3;



SELECT * from
(select
    Ambient_temperature,
    (Ambient_temperature - avg(Ambient_temperature) over())/stddev(Ambient_temperature) over() as Ambient_temperature_Zscore
    from Wind_turbine ) as score_table
where Ambient_temperature_Zscore >3 or Ambient_temperature_zscore<-3;


SELECT * from
(select
    Rotor_Speed,
    (Rotor_Speed - avg(Rotor_Speed) over())/stddev(Rotor_Speed) over() as Rotor_Speed_Zscore
    from Wind_turbine ) as score_table
where Rotor_Speed_Zscore >3 or Rotor_Speed_zscore<-3;


SELECT * from
(select
    Nacelle_temperature,
    (Nacelle_temperature - avg(Nacelle_temperature) over())/stddev(Nacelle_temperature) over() as Nacelle_temperature_Zscore
    from Wind_turbine ) as score_table
where Nacelle_temperature_Zscore >3 or Nacelle_temperature_zscore<-3;


SELECT * from
(select
    Bearing_temperature,
    (Bearing_temperature - avg(Bearing_temperature) over())/stddev(Bearing_temperature) over() as Bearing_temperature_Zscore
    from Wind_turbine ) as score_table
where Bearing_temperature_Zscore >3 or Bearing_temperature_zscore<-3;


SELECT * from
(select
    Generator_speed,
    (Generator_speed - avg(Generator_speed) over())/stddev(Generator_speed) over() as Generator_speed_Zscore
    from Wind_turbine ) as score_table
where Generator_speed_Zscore >3 or Generator_speed_zscore<-3;


SELECT * from
(select
    Yaw_angle,
    (Yaw_angle - avg(Yaw_angle) over())/stddev(Yaw_angle) over() as Yaw_angle_Zscore
    from Wind_turbine ) as score_table
where Yaw_angle_Zscore >3 or Yaw_angle_zscore<-3;


SELECT * from
(select
    Wind_direction,
    (Wind_direction - avg(Wind_direction) over())/stddev(Wind_direction) over() as Wind_direction_Zscore
    from Wind_turbine ) as score_table
where Wind_direction_Zscore >3 or Wind_direction_zscore<-3;


SELECT * from
(select
    Wheel_hub_temperature,
    (Wheel_hub_temperature - avg(Wheel_hub_temperature) over())/stddev(Wheel_hub_temperature) over() as Wheel_hub_temperature_Zscore
    from Wind_turbine ) as score_table
where Wheel_hub_temperature_Zscore >3 or Wheel_hub_temperature_zscore<-3;


SELECT * from
(select
    Gear_box_inlet_temperature,
    (Gear_box_inlet_temperature - avg(Gear_box_inlet_temperature) over())/stddev(Gear_box_inlet_temperature) over() as Gear_box_inlet_temperature_Zscore
    from Wind_turbine ) as score_table
where Gear_box_inlet_temperature_Zscore >3 or Gear_box_inlet_temperature_zscore<-3;


#********Replace outliers with a central value
-- Creating a temporary table with quartiles and median values
CREATE TEMPORARY TABLE temp_quartiles_median AS
SELECT
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Power) AS Power_median,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Power) AS Power_lower_bound,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Power) AS Power_upper_bound,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Nacelle_ambient_temperature) AS Nacelle_ambient_temperature_median,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Nacelle_ambient_temperature) AS Nacelle_ambient_temperature_lower_bound,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Nacelle_ambient_temperature) AS Nacelle_ambient_temperature_upper_bound,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Gear_oil_temperature) AS Gear_oil_temperature_median,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Gear_oil_temperature) AS Gear_oil_temperature_lower_bound,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Gear_oil_temperature) AS Gear_oil_temperature_upper_bound,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Generator_speed) AS Generator_speed_median,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Generator_speed) AS Generator_speed_lower_bound,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Generator_speed) AS Generator_speed_upper_bound,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Wind_direction) AS Wind_direction_median,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Wind_direction) AS Wind_direction_lower_bound,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Wind_direction) AS Wind_direction_upper_bound
FROM wind_turbine;

-- Update original table to replace outliers with median values
UPDATE wind_turbine AS e
JOIN temp_quartiles_median AS subquery ON e.date_column = subquery.date_column
SET
    e.Power = IF(e.Power < subquery.Power_lower_bound OR e.Power > subquery.Power_upper_bound, subquery.Power_median, e.Power),
    e.Nacelle_ambient_temperature = IF(e.Nacelle_ambient_temperature < subquery.Nacelle_ambient_temperature_lower_bound OR e.Nacelle_ambient_temperature > subquery.Nacelle_ambient_temperature_upper_bound, subquery.Nacelle_ambient_temperature_median, e.Nacelle_ambient_temperature),
    e.Gear_oil_temperature = IF(e.Gear_oil_temperature < subquery.Gear_oil_temperature_lower_bound OR e.Gear_oil_temperature > subquery.Gear_oil_temperature_upper_bound, subquery.Gear_oil_temperature_median, e.Gear_oil_temperature),
    e.Generator_speed = IF(e.Generator_speed < subquery.Generator_speed_lower_bound OR e.Generator_speed > subquery.Generator_speed_upper_bound, subquery.Generator_speed_median, e.Generator_speed),
    e.Wind_direction = IF(e.Wind_direction < subquery.Wind_direction_lower_bound OR e.Wind_direction > subquery.Wind_direction_upper_bound, subquery.Wind_direction_median, e.Wind_direction);

-- Drop temporary table
DROP TEMPORARY TABLE IF EXISTS temp_quartiles_median;




CREATE TEMPORARY TABLE MinMaxValues AS
SELECT
    MIN(Wind_speed) AS min_Wind_speed, MAX(Wind_speed) AS max_Wind_speed,
    MIN(Power) AS min_Power, MAX(Power) AS max_Power,
    MIN(Nacelle_ambient_temperature) AS min_Nacelle_ambient_temperature, MAX(Nacelle_ambient_temperature) AS max_Nacelle_ambient_temperature,
    MIN(Generator_bearing_temperature) AS min_Generator_bearing_temperature, MAX(Generator_bearing_temperature) AS max_Generator_bearing_temperature,
    MIN(Gear_oil_temperature) AS min_Gear_oil_temperature, MAX(Gear_oil_temperature) AS max_Gear_oil_temperature,
    MIN(Ambient_temperature) AS min_Ambient_temperature, MAX(Ambient_temperature) AS max_Ambient_temperature,
    MIN(Rotor_Speed) AS min_Rotor_Speed, MAX(Rotor_Speed) AS max_Rotor_Speed,
    MIN(Nacelle_temperature) AS min_Nacelle_temperature, MAX(Nacelle_temperature) AS max_Nacelle_temperature,
    MIN(Bearing_temperature) AS min_Bearing_temperature, MAX(Bearing_temperature) AS max_Bearing_temperature,
    MIN(Generator_speed) AS min_Generator_speed, MAX(Generator_speed) AS max_Generator_speed,
    MIN(Yaw_angle) AS min_Yaw_angle, MAX(Yaw_angle) AS max_Yaw_angle,
    MIN(Wind_direction) AS min_Wind_direction, MAX(Wind_direction) AS max_Wind_direction,
    MIN(Wheel_hub_temperature) AS min_Wheel_hub_temperature, MAX(Wheel_hub_temperature) AS max_Wheel_hub_temperature,
    MIN(Gear_box_inlet_temperature) AS min_Gear_box_inlet_temperature, MAX(Gear_box_inlet_temperature) AS max_Gear_box_inlet_temperature

FROM wind_turbine;

-- Create a normalized table
CREATE TEMPORARY TABLE NormalizedTable AS
SELECT
    (Wind_speed - min_Wind_speed) / (max_Wind_speed - min_Wind_speed) AS normalized_Wind_speed,
    (Power - min_Power) / (max_Power - min_Power) AS normalized_Power,
    (Nacelle_ambient_temperature - min_Nacelle_ambient_temperature) / (max_Nacelle_ambient_temperature - min_Nacelle_ambient_temperature) AS normalized_Nacelle_ambient_temperature,
    (Generator_bearing_temperature - min_Generator_bearing_temperature) / (max_Generator_bearing_temperature - min_Generator_bearing_temperature) AS normalized_Generator_bearing_temperature,
    (Gear_oil_temperature - min_Gear_oil_temperature) / (max_Gear_oil_temperature - min_Gear_oil_temperature) AS normalized_Gear_oil_temperature,
    (Ambient_temperature - min_Ambient_temperature) / (max_Ambient_temperature - min_Ambient_temperature) AS normalized_Ambient_temperature,
    (Rotor_Speed - min_Rotor_Speed) / (max_Rotor_Speed - min_Rotor_Speed) AS normalized_Rotor_Speed,
    (Nacelle_temperature - min_Nacelle_temperature) / (max_Nacelle_temperature - min_Nacelle_temperature) AS normalized_Nacelle_temperature,
    (Bearing_temperature - min_Bearing_temperature) / (max_Bearing_temperature - min_Bearing_temperature) AS normalized_Bearing_temperature,
    (Generator_speed - min_Generator_speed) / (max_Generator_speed - min_Generator_speed) AS normalized_Generator_speed,
    (Yaw_angle - min_Yaw_angle) / (max_Yaw_angle - min_Yaw_angle) AS normalized_Yaw_angle,
    (Wind_direction - min_Wind_direction) / (max_Wind_direction - min_Wind_direction) AS normalized_Wind_direction,
    (Wheel_hub_temperature - min_Wheel_hub_temperature) / (max_Wheel_hub_temperature - min_Wheel_hub_temperature) AS normalized_Wheel_hub_temperature,
    (Gear_box_inlet_temperature - min_Gear_box_inlet_temperature) / (max_Gear_box_inlet_temperature - min_Gear_box_inlet_temperature) AS normalized_Gear_box_inlet_temperature

FROM wind_turbine
CROSS JOIN MinMaxValues;

-- Use the NormalizedTable as needed

-- Drop the temporary tables
DROP TEMPORARY TABLE IF EXISTS MinMaxValues;
DROP TEMPORARY TABLE IF EXISTS NormalizedTable;







