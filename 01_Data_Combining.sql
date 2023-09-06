-- Combine data from Jan to Dec 2022 into a single table named cyclistic_data

CREATE TABLE `2022_divvy_trip_data.cyclistic_data` AS (
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.jan_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.feb_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.mar_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.apr_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.may_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.jun_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.jul_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.aug_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.sep_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.oct_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.nov_data` 
  UNION ALL
  SELECT * FROM `third-harbor-397105.2022_divvy_trip_data.dec_data`
  );
