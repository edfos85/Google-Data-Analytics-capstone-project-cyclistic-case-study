--create the columns 'month' and 'day of the week' where 1 represents Sunday, 7 represents Saturday
--Determine the ride length in minutes
--Remove rows with null values

create table `calm-rainfall-415600.cyclistic_data.cleaned_data` as (
  select
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  ride_length_in_mins,
  case
  extract(month from started_at)
  when 1 then 'January'
  when 2 then 'February'
  when 3 then 'March'
  when 4 then 'April'
  when 5 then 'May'
  when 6 then 'June'
  when 7 then 'July'
  when 8 then 'August'
  when 9 then 'September'
  when 10 then 'October'
  when 11 then 'November'
  when 12 then 'December'
  end as Month,
  case extract(dayofweek from started_at)
  when 1 then 'Sunday'
  when 2 then 'Monday'
  when 3 then 'Tuesday'
  when 4 then ' Wednesday'
  when 5 then 'Thursday'
  when 6 then 'Friday'
  when 7 then 'Saturday'
  end as day_of_week,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual,
  from 
  `calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare` as t1
  join
  (select ride_id,
  timestamp_diff(ended_at, started_at, minute) as ride_length_in_mins
  from
  `calm-rainfall-415600.cyclistic_data.cyclistic_2022_prepare`) as t2
  using (ride_id)
  where ride_length_in_mins > 1 and ride_length_in_mins <1440 and
  start_station_name is not null and
  start_station_id is not null and
  end_station_name is not null and
  end_station_id is not null and
  start_lat is not null and
  start_lng is not null and
  end_lat is not null and
  end_lng is not null

);
