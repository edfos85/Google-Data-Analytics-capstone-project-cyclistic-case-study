
--check the number of null values

select count (*) - count (ride_id) ride_id,
 count(*) - count(rideable_type) rideable_type,
 count (*) - count (started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
FROM `calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`;





--1) rider_id: the length of the rider id should be uniform

select length(ride_id) as rider_id_length
from `calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
group by
length(ride_id);

--2) rideable_type: determine the type of bikes
select
rideable_type, count(rideable_type) as no_of_trips
from
`calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
group by
rideable_type;
--there are three types of bikes: classic, electric and docked

--3) started_at, ended_at: ride duration
select
ride_id, 
started_at,
ended_at
from
`calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
where
timestamp_diff(ended_at, started_at, minute) <= 1 or
timestamp_diff (ended_at, started_at, minute) >= 1440;
--check if ride time is less than a minute or longer than a day
--the end time is behind the start time

--4) name & id of start_station and end_station
select
distinct start_station_name, count(*) as start_station_count
from 
`calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
group by 
start_station_name;
--a total of 833064 start_station_name with null values are determined

select
distinct end_station_name, count(*) as end_station_count
from
`calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
group by
end_station_name;
--a total of 892742 end_station_name with null values were found

select
distinct start_station_id, end_station_id
from
`calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
where
start_station_id is not null or
end_station_id is not null;
--null values observed
--the string lengths of station id are inconsistent. However, it will not be ignored

--5) lat & lng of start and end
select
*
from
`calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
where
start_lat is null or
start_lng is null or
end_lat is null or
end_lng is null;
--5772 null values are observed

--6) member_casual: type of membership
select
member_casual, count(*) as membership_count
from
`calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`
group by
member_casual;
--only two types: member and casual
--total membership count equal to the total number of rows
