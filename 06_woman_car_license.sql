/*
 * File: 06_woman_car_license.sql
 * Purpose: Find female suspect with specific car and license characteristics.
 */

SELECT * 
FROM drivers_license
WHERE LOWER(hair_color) = 'red'
  AND height BETWEEN 65 AND 67
  AND car_make = 'Tesla'
  AND car_model = 'Model S'
  AND gender = 'female';
