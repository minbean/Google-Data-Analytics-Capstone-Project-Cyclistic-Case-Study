# Cyclistic Bike Share Case Study

## 📝 Introduction 
The **Cyclistic Bike Share Case Study** is a capstone project for the **Google Data Analytics Professional Certificate** on Coursera. In this project, I will follow the data analysis process which I learned from the course: <ins>ask, prepare, process, analyze, share and act</ins> to analyze the data. 

## 💬 Background
Cyclistic is a **bike-share company** based in Chicago that launched a successful bike-sharing program in 2016. Throughout the years, the program has expanded significantly to a fleet of 5,824 bicycles and a network of 692 geotracked stations sprawled across the city. With the large number of bicycles across numerous stations, customers can rent bikes from one station and return them to any other station within the network at their convenience. This encourages people to opt for cycling as a mode of transportation, therefore contributing to the success of Cyclistic's bike-sharing program. 

Cyclistic's marketing strategy has so far focused on building general awareness and appealing to broad consumer segments. The company offers flexibile pricing plans that cater to diverse needs of users including single-ride passes, full-day passes, and annual memberships. Besides, it provides reclining bikes, hand tricycles, and cargo bikes, effectively welcoming individuals with disabilities and those who can't ride on the standard two-wheeled bicycles. Based on the company database, Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day. While traditional bikes remain as the popular option, around 8% of users opt for the assistive alternatives. 

The company's marketing director believes that the company’s future success depends on maximizing the number of annual memberships. Therefore, as a junior data analyst, my team and I have to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, we will design a new marketing strategy to convert casual riders into annual members. 

## ⚙ Approach/Steps
### 1. Ask
**Business Task -** design marketing strategies to **convert casual riders to members** by understanding how annual and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.<br>

> Questions for guiding future marketing program: 
> 1. How do annual members and casual riders use Cyclistic bikes differently?
> 2. Why would casual riders buy Cyclistic annual memberships?
> 3. How can Cyclistic use digital media to influence casual riders to become members?

### 2. Prepare
#### 🔗 Quick Links
**Data Source:** [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) <br>
[Note that the data has been made available by Motivate International Inc. under this [<ins>license</ins>](https://www.divvybikes.com/data-license-agreement).]

**Tools:** <br>
- Data cleaning & processing - SQL on Google Big Query 
- Data visualization - [Tableau](https://public.tableau.com/app/profile/hui.min.ho/viz/CyclisticBikeShareCaseStudy_16931448059910/Sheet1#2)

### 3. Process
The basis for this analysis is **2022** data and the steps for processing the data are as follow:
1) [Data Combining](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/blob/main/01_Data_Combining.sql)
2) [Data Exploration](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/blob/main/02_Data_Exploration.sql)
3) [Data Cleaning](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/blob/main/03_Data_Cleaning.sql)
4) [Data Analysis](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/blob/main/04_Data_Analysis)

#### Data Combining
The 12 tables from **January 2022 to December 2022** were stacked and combined into a single table. The table consists of 5,667,717 rows.

#### Data Exploration
I ran the queries for each column from left to right in order to determine the **data type** and to uncover any **missing values, outliers, inconsistencies, and errors** within the dataset. 

The data set consists of **13 variables**, as shown in the following: <br>

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

and the **data type** of each variable is depicted below:

<img width="352" alt="DataType" src="https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/8dd3fe0e-e642-435c-b9d0-cc8e21956910">


#### Data Cleaning
Before analyzing the data, the dataset was cleaned by:
- Removing the trips with **null values**.
- Adding 3 columns: '**ride_length_in_mins**', '**day_of_week**' and '**month**'.
- Exclusing the **rides with duration less than a minute** or **longer than a day**.

In total, 4,224,062 rows were returned, which means **1,443,655 rows were removed**.

### 4. Analyze
#### Data Analysis
The analysis question is: 
> How do annual members and casual riders use Cyclistic bikes differently?

The cleaned data is imported into Tableau for analysis and the figures plotted are displayed in the following.

### - Total Rides in 2022
The figure below shows the **total number of rides** carried out by Cyclistic members and casual riders in **2022**. 

![Membership Types](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/60b8125d-0fe0-42b6-b3c2-51474f2c4e9e)
- **Cyclistic members** recorded a **greater bicycle activity** than casual riders. The total rides for Cyclistic members are 2,511,003 while 1,713,059 trips for casual riders. 
- **Cyclistic members** accounted for about **59.4%** of total rides whereas casual riders made up **40.6%** of total rides in 2022. 
<br>

### - Types of Bikes
The types of bicycles used for the trips are displayed as follow:

![Types of Bikes](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/0453ca34-e5c5-4f97-ab23-addf7bb1ec44)
- There are **three types of bicycles**: <ins>*classic, electric and docked bikes*</ins>.
- Cyclistic members and casual riders prefer show a higher preference for **classic bicycles over electric bicycles**.
- Casual riders have also used the docked bicycles. 
<br>

### - Average Ride Duration
The average ride length is plotted against the type of users (member vs. casual):

![Avg Ride Length (Year)](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/addd404c-a172-4df4-9e4e-6493fcfa3967)
- **Cyclistic members** can ride on the bicycles for about **12.41 minutes** on average whereas **casual riders** have an average ride length of **23.82 minutes**. Hence, the ride duration of Cyclistic members are approximately two times smalelr than casual riders.
<br>

### - Trips Taken in a Month
The preference of cycling activity can be determined by drawing the graph of trips taken against month from January to December 2022. 

![Total Rides (Month)](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/adbc1b9a-89ee-4ac1-8d51-12423141e177)
- Both Cyclistic members and casual riders have the **lowest activity**, 65,051 rides and 12,355 rides respectively in **January 2022**.
- **Cyclistic members** have the **highest activity** (323,073 rides) in **August 2022**.
- **Casual riders** have the **greatest activity** (303,273 rides) in **July 2022**.
<br>

### - Average Ride Length in a Month
The mean trip duration is depicted in the line graph below. 

![Avg  Ride Length (Month)](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/3c37d88a-5b98-4c32-989d-739ea45d4d8a)
- The monthly average ride duration for **Cyclistic members** is the **highest** in **June** (13.65 minutes).
- For **casual riders**, the **highest** mean trip duration is in **May** (27.75 minutes).
<br>

### - Trips Taken in a Week
The bar chart below is used to study the daily user activity over a week.

![Total Rides (Week)](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/02fd5b26-7fbb-4a5a-b231-0dfad3cebe5f)
- Generally, bike rides are **most frequented** on **Saturdays**. 
- **Cyclistic members** have the **highest activity** (399,863 rides) on **Thursdays** while the **lowest activity** (286,128 rides) on **Mondays**.
- **Casual riders** have the **greatest activity** (357,781rides) on **Saturdays** while the **least activity** (191,467 rides) on **Tuesdays**.
<br>

### - Average Ride Length in a Week
The mean ride duration across the week is displayed as follow.

![Avg  Ride Length (Week)](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/644408cb-ca1f-4f5e-8792-b931e3400d51)
- **Cyclistic members** cycled the **longest on Saturday** with an average ride length of 14.01 minutes.
- On the other hand, **casual riders cycled the longest on Sunday** with a mean trip duration of 27.18 minutes. 

### 5. Share
![Cyclistic Bike Share Dashboard](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/96ac56b0-b8cf-4987-bb54-581b7ea08eec)
View [Cyclistic Bike Share Dashboard](https://public.tableau.com/app/profile/hui.min.ho/viz/CyclisticBikeShareCaseStudy_16931448059910/Sheet1#2).

The similiarities and differences between Cyclistic members and casual riders were drawn from the dashboard above.

**Similarities:**
- Both Cyclistic members and casual riders **prefer riding bicycles in the spring and summer seasons** (from May to September). However, the number of rides decrease since September. This may be due to change of season in which the weather temperature drops and becomes uncomfortable for rides. 
- Both Cyclistic members and casual riders **prefer classic bicycles over electric bicycles**. 
- Both Cyclistic members and casual riders have **higher average ride duration on weekends as compared to on weekdays**.

**Differences:**
- **Cyclistic members** go on **more rides** than casual riders.
- **Cyclistic members** have **smaller average ride length** (12.41 minutes) than casual riders (23.82 minutes). Hence, this may suggest that the Cyclistic members take the bicycles for **short trips or short distance travel**. 
- **Cyclistic members** show **consistent rides** throughout the week while casual riders have the busiest activites on weekends and lowest activities during weekdays. This may indicate that the Cyclistic members use the bicycles for ***purpose-oriented rides** such as work or errands while the casual riders use bicycles for leisure or recreational activities.  

### 6. Act
#### <ins>Recommendations</ins>
From the analysis above, we can design marketing strategies to convert casual riders to Cyclistic members. Here are my suggested approach:

- **Membership Personalisation** <br>
Provide a range of membership personalizations: yearly, monthly and daily. For example, $365/year, $45/month, $3/day. Users will be able to choose their membership type according to their own preferences. By introducing shorter-term membership plans with appropriate pricing, we can cater the needs of riders who might not need an annual membership.

- **Group Membership Discounts** <br>
Offerdiscounted plans for friends, students, and families can encourage collective memberships. Furthermore, it encourages users to cycle together and strengthen the bonds between people.

- **Membership Loyalty Points System** <br>
Implement a membership loyalty points system for users to collect points for each ride. Rewards such as membership discount will be given based on the number of points collected. This will encourage riders to use the service more frequently, driving engagement and loyalty. 

- **Member-Exclusive Events** <br>
Organize member-exclusive events such as group rides, urban exploration challenges, or themed cycling events. This approach not only encourages more rides from current members but also entices casual riders to join as members to participate in these unique experiences. 

- **Seasonal campaigns** <br>
Launch seasonal campaigns by offering limited-time discounts, special weekdays offers, or extended ride durations for members during these seasons to help in making the service more sustainable and manageable.

- **Social Media Engagement** <br>
Utilize digital media, including social media platforms, to engage with both casual riders and potential members. Share success stories, testimonials, and user-generated content from Cyclistic members who have benefited from the membership. Create visually appealing content showcasing the joy of cycling during different seasons and scenarios, enticing casual riders to become members. 


## 🔮 Conclusion
In short, this analysis provides valuable insights into the preferences and behaviors of Cyclistic members and casual riders. By tailoring strategies to the identified differences and preferences, Cyclistic can effectively convert casual riders into portential members.

