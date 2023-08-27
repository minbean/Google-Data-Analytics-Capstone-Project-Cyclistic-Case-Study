## 📝 Introduction 
The **Cyclistic Bike Share Case Study** is a capstone project for the **Google Data Analytics Professional Certificate** on Coursera. In this project, I will follow the data analysis process which I learned from the course: <ins>ask, prepare, process, analyze, share and act</ins> to analyze the data. 

## 💬 Background
Cyclistic is a bike-share company based in Chicago that launched a successful bike-sharing program in 2016. Throughout the years, the program has expanded significantly to a fleet of 5,824 bicycles and a network of 692 geotracked stations sprawled across the city. With the large number of bicycles across numerous stations, customers can rent bikes from one station and return them to any other station within the network at their convenience. This encourages people to opt for cycling as a mode of transportation, therefore contributing to the success of Cyclistic's bike-sharing program. 

Cyclistic's marketing strategy has so far focused on building general awareness and appealing to broad consumer segments. The company offers flexibile pricing plans that cater to diverse needs of users including single-ride passes, full-day passes, and annual memberships. Besides, it provides reclining bikes, hand tricycles, and cargo bikes, effectively welcoming individuals with disabilities and those who can't ride on the standard two-wheeled bicycles. Based on the company database, Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day. While traditional bikes remain as the popular option, around 8% of users opt for the assistive alternatives. 

The company's marketing director believes that the company’s future success depends on maximizing the number of annual memberships. Therefore, as a junior data analyst, my team and I have to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, we will design a new marketing strategy to convert casual riders into annual members. 

## ⚙ Approach/Steps
### 1. Ask
**Business Task -** design marketing strategies to convert casual riders to members by understanding how annual and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.<br>

> Questions for guiding future marketing program: 
> 1. How do annual members and casual riders use Cyclistic bikes differently?
> 2. Why would casual riders buy Cyclistic annual memberships?
> 3. How can Cyclistic use digital media to influence casual riders to become members?

### 2. Prepare
#### 🔗 Quick Links
**Data Source:** [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)
<br> *Note that the data has been made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement).*

**Tools:** <br>
- Data cleaning & processing - SQL on [Google BigQuery]
- Data visualization - [Tableau]

### 3. Process
The basis for this analysis is **2022** data and the steps for processing the data are as follow:
1) [Data Combining] 
2) [Data Exploration]
3) [Data Cleaning]
4) [Data Analysis]

#### Data Combining
The 12 tables from January 2022 to December 2022 were stacked and combined into a single table. The table consists of 5,667,717 rows.

#### Data Exploration
I ran the queries for each column from left to right in order to uncover any missing values, outliers, inconsistencies, and errors within the dataset. 
The data set consists of 13 variables, as shown in the following: <br>

| **No.**|  **Variable**       |  **Description**                                        |
|--------|------------------   | --------------------------------------------------------|
| 1      | ride_id             | Unique ID assigned to each ride                         |
| 2      | rideable_type       | classic, docked, or electric                            |
| 3      | started_at          | Date and time at the start of trip                      |
| 4      | ended_at            | Date and time at the end of trip                        |
| 5      | start_station_name  | Name of the station where the ride journey started from |
| 6      | start_station_id    | ID of the station where the ride journey started from   |
| 7      | end_station_name    | Name of the station where the ride trip ended at        |
| 8      | end_station_id      | ID of the station where the ride trip ended at          |
| 9      | start_lat           | Latitude of starting station                            |
| 10     | start_lng           | Longitude of starting station                           |
| 11     | end_lat             | Latitude of ending station                              |
| 12     | end_lng             | Longitude of ending station                             |                            
| 13     | member_casual       | Type of membership of each rider                        |

#### Data Cleaning
Before analyzing the data, the data was cleaned:
- The trips with null values were removed.
- 3 columns were added: 'ride_length_in_mins', 'day_of_week' and 'month'.
- Rides with duration less than a minute and longer than a day were excluded. <br>
In total, 4,224,062 rows were returned, which means 1,443,655 rows were removed.

### 4. Analyze
#### Data Analysis
The analysis question is: How do annual members and casual riders use Cyclistic bikes differently?

**Total Rides in 2022**
![image]

**Types of Bike**
![image]

**Trips Taken in a Month**
![image]

**Trips Taken in a Week**
![image]

**Trips Taken in a Day**
![image]

**Average Ride Duration**
![image]

### 5. Share
#### Observations

### 6. Act
#### Recommendations

## 🔮 Conclusion

## 📌 Learnings

## 📘 References
