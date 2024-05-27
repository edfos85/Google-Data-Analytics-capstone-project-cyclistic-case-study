--types of bike
select member_casual, rideable_type,
count(*) as total_rides
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
group by
member_casual, rideable_type
order by
member_casual, total_rides desc;
--total rides for member with classic bike is the highest (1605244) while lowest docked bike (171476)

--no. of rides per month
select member_casual, month,
count(*) as total_rides_per_month
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
group by
member_casual, month
order by
member_casual;

--No. of rides per day of week
select
member_casual, day_of_week, count(*) as total_rides_per_week
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
group by
member_casual, day_of_week
order by
member_casual;

--No of trips per hour
select
member_casual,
extract(hour from started_at) as hour_of_day,
count(*) as total_trips
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
group by
member_casual, hour_of_day
order by
member_casual;

--Average ride length per day of week
select member_casual, day_of_week,
avg(ride_length_in_mins) as avg_ride_length,
avg(avg(ride_length_in_mins)) over(partition by member_casual) as combined_avg_rider
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
group by
member_casual, day_of_week
order by
member_casual;

--Average ride length per month
select member_casual, Month,
avg(ride_length_in_mins) as avg_ride_length,
avg(avg(ride_length_in_mins)) over(partition by member_casual) as combined_avg_rider
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
group by
member_casual, Month
order by
member_casual;

--starting location for member
select
member_casual, start_station_name,
avg(start_lat) as start_lat,
avg(start_lng) as start_lng,
count(*) as total_rides
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
where member_casual = 'member'
group by
member_casual, start_station_name;

--Ending location for member
select
member_casual, end_station_name,
avg(end_lat) as end_lat,
avg(end_lng) as end_lng,
count(*) as total_rides
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
where member_casual = 'member'
group by
member_casual, end_station_name;

--Starting location for Casual
select
member_casual, start_station_name,
avg(start_lat) as start_lat,
avg(start_lng) as start_lng,
count(*) as total_rides
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
where member_casual = 'casual'
group by
member_casual, start_station_name;


--Ending location for Casual
select
member_casual, end_station_name,
avg(end_lat) as end_lat,
avg(end_lng) as end_lng,
count(*) as total_rides
from
`calm-rainfall-415600.cyclistic_data.cleaned_data`
where member_casual = 'casual'
group by
member_casual, end_station_name;

