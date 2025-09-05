/*
 * File: 03_suspect_identification.sql
 * Purpose: Identify suspects based on witness statements regarding gym membership and car description.
 */

-- Suspects who are gold members at "Get Fit Now" gym whose IDs start with '48Z'
SELECT * 
FROM get_fit_now_member              
WHERE id LIKE '48Z%'
  AND membership_status = 'gold';

-- Drivers with plate numbers matching witness 1's car description
SELECT * 
FROM drivers_license
WHERE plate_number LIKE '%H42W%';
