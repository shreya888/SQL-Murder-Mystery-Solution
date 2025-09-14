/*
 * File: 07_new_suspects.sql
 * Purpose: Get details of three new suspects identified by license_id.
 */

SELECT * 
FROM person
WHERE license_id IN ('202298', '291182', '918773');
