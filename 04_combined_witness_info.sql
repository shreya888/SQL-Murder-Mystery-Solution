/*
 * File: 04_combined_witness_info.sql
 * Purpose: Combine witness information to identify suspects meeting all criteria.
 * 
 * This file contains two approaches:
 * 1. Using INTERSECT to logically combine partial suspect sets.
 * 2. An optimized query using JOINs for performance and readability.
 */

/* --- Approach 1: Using INTERSECT --- */

SELECT person_id 
FROM get_fit_now_member
WHERE id LIKE '48Z%'
  AND membership_status = 'gold'

INTERSECT

SELECT id
FROM drivers_license
WHERE plate_number LIKE '%H42W%'

INTERSECT

SELECT gm.person_id
FROM get_fit_now_check_in gfc
JOIN get_fit_now_member gm ON gfc.membership_id = gm.id
WHERE gfc.check_in_date = '20180109';

/* --- Approach 2: Optimized JOIN approach --- */

SELECT 
    p.id AS person_id, 
    p.name, 
    p.address_street_name, 
    g.id AS membership_id, 
    d.plate_number,
    c.check_in_date
FROM person p  
JOIN get_fit_now_member g ON p.id = g.person_id  
JOIN get_fit_now_check_in c ON g.id = c.membership_id  
JOIN drivers_license d ON p.license_id = d.id  
WHERE g.id LIKE '48Z%'  
  AND g.membership_status = 'gold'  
  AND c.check_in_date = '20180109'
  AND d.plate_number LIKE '%H42W%';

