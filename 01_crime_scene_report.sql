/*
 * File: 01_crime_scene_report.sql
 * Purpose: Retrieve details about the murder case from the crime_scene_report table
 * Context: Filtering murder cases on a specific date and city to narrow down the crime.
 */

SELECT * 
FROM crime_scene_report
WHERE DATE = 20180115
  AND TYPE = 'murder'
  AND CITY = 'SQL City';
