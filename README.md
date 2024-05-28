# Google Data Analytics Capstone: Cyclistic Case Study
Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)


# **Introduction**
The Cyclistic Bike Share case study is a capstone project for Google Data Analytics Certificate on Coursera.
As part of this project I will follow the data analytics process that I learned from the course to ask, prepare, process, analyse, share and act.


# **Business Objective**
The primary objective of this case study is to conduct a thorough analysis of Cyclistic's bike-sharing data to uncover insights into how annual members and casual riders utilize Cyclistic bikes differently. 

As a junior data analyst at Cyclistic, tasked with this analysis, I will dive into the historical bike trip data to discern patterns and behaviors that distinguish these two rider groups. This analysis will serve as the cornerstone for the development of a targeted marketing strategy aimed at converting casual riders into annual members, a pivotal goal in Cyclistic's quest for future growth and success. 

Additionally, we aim to identify the drivers behind casual riders' decisions to purchase annual memberships and explore the potential of digital media in influencing this conversion process. Our findings and recommendations will play a vital role in shaping Cyclistic's marketing approach and achieving its objectives.

## **Key Stakeholders**
**Lily Moreno**: The director of marketing.

**Cyclistic Marketing analytics team:** The internal Marketing Analytics Team, consisting of data analysts, collaborates closely on data analysis.

**Cyclistic executive team:** Holds the authority to approve or reject marketing programs based on financial impact and strategic alignment.

# **Ask**

### Business Task
Devise marketing strategies to convert casual riders to members.
### Analysis Questions

Three questions will guide the future marketing program:  
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?  
3. How can Cyclistic use digital media to influence casual riders to become members?

**Lily Moreno has asigned me to answer the following question:**

How do annual members and casual riders use Cyclistic bikes differently?

# **Prepare**

## **Data Source**

I will be using the Cyclistic historical trip data to analyse and identify trends. I started by downloading 12 months of data from Jan 2022 to Dec 2022.
I used this [Link](https://divvy-tripdata.s3.amazonaws.com/index.html) to choose which months and year to download.

The data has been made available by Motivate Interntional Inc. under this [license](https://divvybikes.com/data-license-agreement).

- The files were too large for me to prepare on Google Sheets. I then created a bucket on Google Drive and uploaded all 12 files to that bucket. Then I continued using Google Big Query when I imported the files from the bucket to create a dataset to combine, clean and analyse my data.
  
- Each file within the dataset contains 13 columns related to the bike rides.

  
- These columns provide detailed information about each ride, including the ride ID, rideable type, start and end station ID’s and locations, coordinates, and membership type.

# **Is the data ROCCC?**

1.**Reliable & Original**: The data files are accurate, complete and unbiased information that contains Cyclistic bike trips which can be used to understand the ways of bike usage.

2.**Comprehensive and Current**: The data source is comprehensive in ways that it lists all the data files needed to understand bike usage of different customer types. It is current in ways that the data source contains data from the recent years and is relevant to the analysis being made.

3.**Cited**: The sources are publicly available data provided by Motivate International Inc. Governmental agency data and vetted public datasets are credible and typically good sources of data. You can view the license above.

# Process

BigQuery is used to combine the various datasets into one dataset and clean it.    

### Combining the Data

SQL Query: [Data Combining](https://github.com/edfos85/Google-Data-Analytics-capstone-project-cyclistic-case-study/blob/5ab3da401e8380943b11435543732fcebaae082a/01_combining_data.sql)

12 csv files are uploaded as tables in the dataset 'cyclistic_2022'. I needed to combine these tables in one so that I can get the results I need for this project. Created another table named "combining_data", containing 5,667,717 rows of data for the entire year. 

### Data Preparation

SQL Query: [Data Preparation](https://github.com/edfos85/Google-Data-Analytics-capstone-project-cyclistic-case-study/blob/5ab3da401e8380943b11435543732fcebaae082a/02_Data_Preparation.sql)

I wanted to break down the data to get the information that was needed.
I was checking for;

-null values

-types of bikes used

-started at and ended at along with ride duration 

-counted membership types which would be useful for my visualisation later. 

-Wanted to Validate Column Values: The values in specific columns, such as rideable_type and member_casual, were verified to ensure consistency and accuracy. The only valid values, including classic_bike, docked_bike, electric_bike for rideable_type, and casual, member for member_casual, were retained.



### Data Cleaning

SQL Query: [Data Cleaning](
1. All the rows having missing values are deleted.  
2. Three columns were added: ride_length for duration of the trip, day_of_week and month.  
3. Trips with duration less than a minute and longer than a day are excluded.This would make the analysis more accurate and precise.
4. Total 1,370,888 rows are removed in this step.


## Analyze and Share
SQL Query: [Data Analysis]( 
Data Visualization: [Tableau](https:/ 
The data is stored appropriately and is now prepared for analysis. I added all my tables into Tableau for data visualiation.

The analysis question is: How do annual members and casual riders use Cyclistic bikes differently? 

First we will look at Total Rides in 2022.
The chart below show total number of rides carried out by Cyclistic and Casual riders in 2022.

![image](https://github.com/edfos85/images/blob/c618bf1a8760573c5f7e35f5f328f0c575d15f4e/Membership%20Types.png)




You can see **Cyclistic Members** accounted for the majority of rides with a percentage of 59.4% of total rides in comparison to casual rides at 40.6%.

#**Types of Bikes used in 2022**

![image](https://github.com/edfos85/images/blob/0f6762450d8d62ac110dcef09fd6decd6c4b72b5/Rideable%20Type.png)
-Both Cyclistic and casual members prefered classic bikes 
-Electric bikes are preferred by Cyclistic member more than Casual members
-Docked bikes are the least favourite


#**Average Ride Duration**

**The average ride length in a week**
Saturday and Sundays members take the longest trips.

![image](https://github.com/edfos85/images/blob/3e19152cb867d5cd76d8a873ac6d3c4f3a182d6a/Avg%20ride%20length%20per%20week.png)

**The average ride duration in a month**
-Monthly highest ride duration was June for cyclistc members
-For casual members May was the highest ride duration.

![image](https://github.com/edfos85/images/blob/3e19152cb867d5cd76d8a873ac6d3c4f3a182d6a/Avg%20ride%20length%20in%20month.png)

**1. Rides taken in a month**
![image](https://github.com/edfos85/images/blob/a59004ce782b0392edcf13371b7f07841828c75b/Trips%20taken%20in%20a%20month.png)

Cyclistic members has the highest activity in August 2022.
Casual riders highest activity is in July 2022.
In comparison the lowest activity for both Cyclistic members and casual riders is in January 2022.


**2.Rides taken in a week.**

![image](https://github.com/edfos85/images/blob/3e19152cb867d5cd76d8a873ac6d3c4f3a182d6a/Trips%20taken%20in%20a%20week.png)

1. For both riders, Saturday has the highest activity.


**3. Rides taken in an hour**
The line graph illustrates distinct variations in the frequency of rides per hour for both annual members and casual riders. Notably, both rider type experience peak usage at 17:00 (5 p.m.), with annual members recording 272,000 rides and casual riders with 166,000 rides during that hour. 
Significant more annual members used these services during these peak times.

![image](https://github.com/edfos85/images/blob/3e19152cb867d5cd76d8a873ac6d3c4f3a182d6a/Total%20trips%20per%20hour.png)




