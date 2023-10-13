-- Create a temporary table to store split dates
CREATE TEMPORARY TABLE temp_dates AS 
SELECT 
  band_name,
  STR_TO_DATE(SUBSTRING_INDEX(SUBSTRING_INDEX(split, ' - ', 1), ' ', 1), '%Y') as start_year,
  STR_TO_DATE(SUBSTRING_INDEX(SUBSTRING_INDEX(split, ' - ', -1), ' ', -1), '%Y') as end_year
FROM metal_bands;

-- Calculate lifespan in years
SELECT 
  band_name,
  YEAR('2022-01-01') - YEAR(start_year) as lifespan
FROM temp_dates
WHERE start_year IS NOT NULL AND end_year IS NOT NULL
ORDER BY lifespan DESC;
