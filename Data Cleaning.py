import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
data = pd.read_csv(r"C:\Users\Sandy Salim\Desktop\360digiTMG\Final Project\Wind_turbine.csv") 

data.dtypes

print(data)
data

data.head()
data.tail()

data.columns.values


mean = data['Wind_speed'].mean()
print(mean)
mean = data['Nacelle_ambient_temperature'].mean()
print(mean)
mean = data['Power'].mean()
print(mean)
mean = data['Generator_bearing_temperature'].mean()
print(mean)
mean = data['Gear_oil_temperature'].mean()
print(mean)
mean = data['Ambient_temperature'].mean()
print(mean)
mean = data['Rotor_Speed'].mean()
print(mean)
mean = data['Nacelle_temperature'].mean()
print(mean)
mean = data['Bearing_temperature'].mean()
print(mean)
mean = data['Generator_speed'].mean()
print(mean)
mean = data['Yaw_angle'].mean()
print(mean)
mean = data['Wind_direction'].mean()
print(mean)
mean = data['Wheel_hub_temperature'].mean()
print(mean)
mean = data['Gear_box_inlet_temperature'].mean()
print(mean)



median = data['Wind_speed'].median()
print(median)
median = data['Power'].median()
print(median)
median = data['Nacelle_ambient_temperature'].median()
print(median)
median = data['Generator_bearing_temperature'].median()
print(median)
median = data['Gear_oil_temperature'].median()
print(median)
median = data['Ambient_temperature'].median()
print(median)
median = data['Rotor_Speed'].median()
print(median)
median = data['Nacelle_temperature'].median()
print(median)
median = data['Bearing_temperature'].median()
print(median)
median = data['Generator_speed'].median()
print(median)
median = data['Yaw_angle'].median()
print(median)
median = data['Wind_direction'].median()
print(median)
median = data['Wheel_hub_temperature'].median()
print(median)
median = data['Gear_box_inlet_temperature'].median()
print(median)



#Second Moment Business Decision / Measures of Dispersion
# Calculating Standard Deviation

stddev = data['Wind_speed'].std()
print("Standard Deviation of Wind_speed:",stddev)
stddev = data['Power'].std()
print("Standard Deviation of Power:",stddev)
stddev = data['Nacelle_ambient_temperature'].std()
print("Standard Deviation of Nacelle_ambient_temperature:",stddev)
stddev = data['Generator_bearing_temperature'].std()
print("Standard Deviation of Generator_bearing_temperature:",stddev)
stddev = data['Gear_oil_temperature'].std()
print("Standard Deviation of Gear_oil_temperature:",stddev)
stddev = data['Ambient_temperature'].std()
print("Standard Deviation of Ambient_temperature:",stddev)
stddev = data['Rotor_Speed'].std()
print("Standard Deviation of Rotor_Speed:",stddev)
stddev = data['Nacelle_temperature'].std()
print("Standard Deviation of Nacelle_temperature:",stddev)
stddev = data['Bearing_temperature'].std()
print("Standard Deviation of Bearing_temperature:",stddev)
stddev = data['Generator_speed'].std()
print("Standard Deviation of Generator_speed:",stddev)
stddev = data['Yaw_angle'].std()
print("Standard Deviation of Yaw_angle:",stddev)
stddev = data['Wind_direction'].std()
print("Standard Deviation of Wind_direction:",stddev)
stddev = data['Wheel_hub_temperature'].std()
print("Standard Deviation of Wheel_hub_temperature:",stddev)
stddev = data['Gear_box_inlet_temperature'].std()
print("Standard Deviation of Gear_box_inlet_temperature:",stddev)


# Calculating Range

range = data['Wind_speed'].max() - data['Wind_speed'].min()
print("Range of wind_speed:", range)
range = data['Power'].max() - data['Power'].min()
print("Range of Power:", range)
range = data['Nacelle_ambient_temperature'].max() - data['Nacelle_ambient_temperature'].min()
print("Range of Nacelle_ambient_temperature:", range)
range = data['Generator_bearing_temperature'].max() - data['Generator_bearing_temperature'].min()
print("Range of Generator_bearing_temperature:", range)
range = data['Gear_oil_temperature'].max() - data['Gear_oil_temperature'].min()
print("Range of Gear_oil_temperature:", range)
range = data['Ambient_temperature'].max() - data['Ambient_temperature'].min()
print("Range of Ambient_temperature:", range)
range = data['Rotor_Speed'].max() - data['Rotor_Speed'].min()
print("Range of Rotor_Speed:", range)
range = data['Nacelle_temperature'].max() - data['Nacelle_temperature'].min()
print("Range of Nacelle_temperature:", range)
range = data['Bearing_temperature'].max() - data['Bearing_temperature'].min()
print("Range of Bearing_temperature:", range)
range = data['Generator_speed'].max() - data['Generator_speed'].min()
print("Range of Generator_speed:", range)
range = data['Yaw_angle'].max() - data['Yaw_angle'].min()
print("Range of Yaw_angle:", range)
range = data['Wind_direction'].max() - data['Wind_direction'].min()
print("Range of Wind_direction:", range)
range = data['Wheel_hub_temperature'].max() - data['Wheel_hub_temperature'].min()
print("Range of Wheel_hub_temperature:", range)
range = data['Gear_box_inlet_temperature'].max() - data['Gear_box_inlet_temperature'].min()
print("Range of Gear_box_inlet_temperature:", range)


# Calculating Variance

variance = data['Wind_speed'].var()
print("Variance of Wind_speed:", variance)
variance = data['Power'].var()
print("Variance of Power:", variance)
variance = data['Nacelle_ambient_temperature'].var()
print("Variance of Nacelle_ambient_temperature:", variance)
variance = data['Generator_bearing_temperature'].var()
print("Variance of Generator_bearing_temperature:", variance)
variance = data['Gear_oil_temperature'].var()
print("Variance of Gear_oil_temperature:", variance)
variance = data['Ambient_temperature'].var()
print("Variance of Ambient_temperature:", variance)
variance = data['Rotor_Speed'].var()
print("Variance of Rotor_Speed:", variance)
variance = data['Nacelle_temperature'].var()
print("Variance of Nacelle_temperature:", variance)
variance = data['Bearing_temperature'].var()
print("Variance of Bearing_temperature):", variance)
variance = data['Generator_speed'].var()
print("Variance of Generator_speed:", variance)
variance = data['Yaw_angle'].var()
print("Variance of Yaw_angle:", variance)
variance = data['Wind_direction'].var()
print("Variance of Wind_direction:", variance)
variance = data['Wheel_hub_temperature'].var()
print("Variance of Wheel_hub_temperature:", variance)
variance = data['Gear_box_inlet_temperature'].var()
print("Variance of Gear_box_inlet_temperature:", variance)


# Third Moment Business Decision / Skewness

skewness = data['Wind_speed'].skew()
print(skewness)
skewness = data['Power'].skew()
print(skewness)
skewness = data['Nacelle_ambient_temperature'].skew()
print(skewness)
skewness = data['Generator_bearing_temperature'].skew()
print(skewness)
skewness = data['Gear_oil_temperature'].skew()
print(skewness)
skewness = data['Ambient_temperature'].skew()
print(skewness)
skewness = data['Rotor_Speed'].skew()
print(skewness)
skewness = data['Nacelle_temperature'].skew()
print(skewness)
skewness = data['Bearing_temperature'].skew()
print(skewness)
skewness = data['Generator_speed'].skew()
print(skewness)
skewness = data['Yaw_angle'].skew()
print(skewness)
skewness = data['Wind_direction'].skew()
print(skewness)
skewness = data['Wheel_hub_temperature'].skew()
print(skewness)
skewness = data['Gear_box_inlet_temperature'].skew()
print(skewness)


# Fourth Moment Business Decision / Kurtosis

kurtosis = data['Wind_speed'].kurtosis()
print(kurtosis)
kurtosis = data['Power'].kurtosis()
print(kurtosis)
kurtosis = data['Nacelle_ambient_temperature'].kurtosis()
print(kurtosis)
kurtosis = data['Generator_bearing_temperature'].kurtosis()
print(kurtosis)
kurtosis = data['Gear_oil_temperature'].kurtosis()
print(kurtosis)
kurtosis = data['Ambient_temperature'].kurtosis()
print(kurtosis)
kurtosis = data['Rotor_Speed'].kurtosis()
print(kurtosis)
kurtosis = data['Nacelle_temperature'].kurtosis()
print(kurtosis)
kurtosis = data['Bearing_temperature'].kurtosis()
print(kurtosis)
kurtosis = data['Generator_speed'].kurtosis()
print(kurtosis)
kurtosis = data['Yaw_angle'].kurtosis()
print(kurtosis)
kurtosis = data['Wind_direction'].kurtosis()
print(kurtosis)
kurtosis = data['Wheel_hub_temperature'].kurtosis()
print(kurtosis)
kurtosis = data['Gear_box_inlet_temperature'].kurtosis()
print(kurtosis)


#*********************Preprocessing*************************


# checking for duplicates Duplicates

duplicate_values = data['Wind_speed'].duplicated()
print(duplicate_values)
duplicate_values = data['Power'].duplicated()
print(duplicate_values)
duplicate_values = data['Nacelle_ambient_temperature'].duplicated()
print(duplicate_values)
duplicate_values = data['Generator_bearing_temperature'].duplicated()
print(duplicate_values)
duplicate_values = data['Gear_oil_temperature'].duplicated()
print(duplicate_values)
duplicate_values = data['Ambient_temperature'].duplicated()
print(duplicate_values)
duplicate_values = data['Rotor_Speed'].duplicated()
print(duplicate_values)
duplicate_values = data['Nacelle_temperature'].duplicated()
print(duplicate_values)
duplicate_values = data['Bearing_temperature'].duplicated()
print(duplicate_values)
duplicate_values = data['Generator_speed'].duplicated()
print(duplicate_values)
duplicate_values = data['Yaw_angle'].duplicated()
print(duplicate_values)
duplicate_values = data['Wind_direction'].duplicated()
print(duplicate_values)
duplicate_values = data['Wheel_hub_temperature'].duplicated()
print(duplicate_values)
duplicate_values = data['Gear_box_inlet_temperature'].duplicated()
print(duplicate_values)


data.drop_duplicates()


# Finding Missing Values
data.isna()

data.isnull().sum()


# ********************** Outliers Treatment*******************


# --- Checking Outliers In Each Column-------

#-----------Wind_Speed---------

sns.boxplot(data.Wind_speed)

# ---Calculating IQR for outliers treatment---

IQR = data['Wind_speed'].quantile(0.75) - data['Wind_speed'].quantile(0.25)

lower_limit = data['Wind_speed'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Wind_speed'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Wind_speed > upper_limit, True, np.where(data.Wind_speed < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Wind_speed)



# ----------Power-------

sns.boxplot(data.Power)

# ---Calculating IQR for outliers treatment---

IQR = data['Power'].quantile(0.75) - data['Power'].quantile(0.25)

lower_limit = data['Power'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Power'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Power > upper_limit, True, np.where(data.Power < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Power)


#--------Nacelle_ambient_temperature--------

sns.boxplot(data.Nacelle_ambient_temperature)

# ---Calculating IQR for outliers treatment---

IQR = data['Nacelle_ambient_temperature'].quantile(0.75) - data['Nacelle_ambient_temperature'].quantile(0.25)

lower_limit = data['Nacelle_ambient_temperature'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Nacelle_ambient_temperature'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Nacelle_ambient_temperature > upper_limit, True, np.where(data.Nacelle_ambient_temperature < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Nacelle_ambient_temperature)

#--------Generator_bearing_temperature--------

sns.boxplot(data.Generator_bearing_temperature)

# ---Calculating IQR for outliers treatment---

IQR = data['Generator_bearing_temperature'].quantile(0.75) - data['Generator_bearing_temperature'].quantile(0.25)

lower_limit = data['Generator_bearing_temperature'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Generator_bearing_temperature'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Generator_bearing_temperature > upper_limit, True, np.where(data.Generator_bearing_temperature < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Generator_bearing_temperature)


#------------Gear_oil_temperature----------

sns.boxplot(data.Gear_oil_temperature) # there is no outliers in this column.

#-----------Ambient_temperature-----------

sns.boxplot(data.Ambient_temperature)  # there is no outliers in this column.

#-----------Rotor_Speed---------

sns.boxplot(data.Rotor_Speed)    # there is no outliers in this column.

#-----------Nacelle_temperature-----------

sns.boxplot(data.Nacelle_temperature)

# ---Calculating IQR for outliers treatment---

IQR = data['Nacelle_temperature'].quantile(0.75) - data['Nacelle_temperature'].quantile(0.25)

lower_limit = data['Nacelle_temperature'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Nacelle_temperature'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Nacelle_temperature > upper_limit, True, np.where(data.Nacelle_temperature < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Nacelle_temperature)


#----------Bearing_temperature-----------

sns.boxplot(data.Bearing_temperature)

# ---Calculating IQR for outliers treatment---

IQR = data['Bearing_temperature'].quantile(0.75) - data['Bearing_temperature'].quantile(0.25)

lower_limit = data['Bearing_temperature'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Bearing_temperature'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Bearing_temperature > upper_limit, True, np.where(data.Bearing_temperature < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Bearing_temperature)


#------------Generator_speed----------

sns.boxplot(data.Generator_speed)

# ---Calculating IQR for outliers treatment---

IQR = data['Generator_speed'].quantile(0.75) - data['Generator_speed'].quantile(0.25)

lower_limit = data['Generator_speed'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Generator_speed'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Generator_speed > upper_limit, True, np.where(data.Generator_speed < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Generator_speed)


#--------------Yaw_angle---------

sns.boxplot(data.Yaw_angle)   # there is no Outliers in this Column.


#-------------Wind_direction-----------

sns.boxplot(data.Wind_direction)

# ---Calculating IQR for outliers treatment---

IQR = data['Wind_direction'].quantile(0.75) - data['Wind_direction'].quantile(0.25)

lower_limit = data['Wind_direction'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Wind_direction'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Wind_direction> upper_limit, True, np.where(data.Wind_direction < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Wind_direction)


#-------------Wheel_hub_temperature--------

sns.boxplot(data.Wheel_hub_temperature)  # there no outliers in this column

#------------Gear_box_inlet_temperature---------

sns.boxplot(data.Gear_box_inlet_temperature)

# ---Calculating IQR for outliers treatment---

IQR = data['Gear_box_inlet_temperature'].quantile(0.75) - data['Gear_box_inlet_temperature'].quantile(0.25)

lower_limit = data['Gear_box_inlet_temperature'].quantile(0.25) - (IQR * 1.5)
upper_limit = data['Gear_box_inlet_temperature'].quantile(0.75) + (IQR * 1.5)

outliers_data = np.where(data.Gear_box_inlet_temperature> upper_limit, True, np.where(data.Gear_box_inlet_temperature < lower_limit, True, False))

data_out = data.loc[outliers_data, ]

data_trimmed = data.loc[~(outliers_data), ]
data.shape, data_trimmed.shape

sns.boxplot(data_trimmed.Gear_box_inlet_temperature)



data['Wind_speed_new'] = pd.cut(data['Wind_speed'], 
                              bins = [min(data.Wind_speed), data.Wind_speed.mean(), max(data.Wind_speed)],
                              labels = ["Low", "High"])


columns_to_correlate = ['Wind_speed', 'Power', 'Nacelle_ambient_temperature', 'Generator_bearing_temperature',
                         'Gear_oil_temperature', 'Ambient_temperature', 'Rotor_Speed', 'Nacelle_temperature',
                         'Bearing_temperature', 'Generator_speed', 'Yaw_angle', 'Wind_direction',
                         'Wheel_hub_temperature', 'Gear_box_inlet_temperature']

subset_df = data_trimmed[columns_to_correlate]

correlation_matrix = subset_df.corr()

print(correlation_matrix)


data_trimmed.isna()

data_trimmed[['Wind_speed', 'Power', 'Nacelle_ambient_temperature', 'Generator_bearing_temperature',
                         'Gear_oil_temperature', 'Ambient_temperature', 'Rotor_Speed', 'Nacelle_temperature',
                         'Bearing_temperature', 'Generator_speed', 'Yaw_angle', 'Wind_direction',
                         'Wheel_hub_temperature', 'Gear_box_inlet_temperature']] = data_trimmed[['Wind_speed', 'Power', 'Nacelle_ambient_temperature', 'Generator_bearing_temperature',
                                                  'Gear_oil_temperature', 'Ambient_temperature', 'Rotor_Speed', 'Nacelle_temperature',
                                                  'Bearing_temperature', 'Generator_speed', 'Yaw_angle', 'Wind_direction',
                                                  'Wheel_hub_temperature', 'Gear_box_inlet_temperature']].fillna(data_trimmed[['Wind_speed', 'Power', 'Nacelle_ambient_temperature', 'Generator_bearing_temperature',
                                                                           'Gear_oil_temperature', 'Ambient_temperature', 'Rotor_Speed', 'Nacelle_temperature',
                                                                           'Bearing_temperature', 'Generator_speed', 'Yaw_angle', 'Wind_direction',
                                                                           'Wheel_hub_temperature', 'Gear_box_inlet_temperature']].median())    


data_trimmed.to_csv('data_trimmed.csv')                                                                                                                               

