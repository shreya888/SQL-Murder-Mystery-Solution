/*
 * File: 08_event_attendance.sql
 * Purpose: Check if any of the suspects attended a specific event multiple times.
 */

SELECT 
    person_id,
    event_name,
    COUNT(*) AS event_count
FROM facebook_event_checkin
WHERE person_id IN ('78881', '90700', '99716')
GROUP BY person_id, event_name;
