# Google-Data-Analytics-capstone-project-cyclistic-case-study-Combining-data

--combine data from Jan to Dec 2022 into a single table named cyclistic_data

  SELECT * FROM `calm-rainfall-415600.cyclistic_data.feb_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.march_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.april_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.may_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.june_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.july_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.aug_2022` 
  UNION ALL
  select * from `calm-rainfall-415600.cyclistic_data.sept_2022`
  union all
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.oct_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.nov_2022` 
  UNION ALL
  SELECT * FROM `calm-rainfall-415600.cyclistic_data.dec_2022`
  As cyclistic_2022

WHERE 
  start_station_name is not null
  and end_station_name is not null
  and end_station_id is not null
  and start_station_id is not null
  and end_lat is not null  
  and end_lng is not null