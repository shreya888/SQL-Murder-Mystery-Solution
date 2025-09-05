/*
 * File: 02_witness_statements.sql
 * Purpose: Retrieve statements of witness 1 and witness 2 from the interview table.
 * Context: Based on address and name info from the person table to identify witnesses.
 */

SELECT * 
FROM interview
WHERE person_id IN (
    SELECT id FROM person WHERE address_street_name = 'Northwestern Dr' ORDER BY address_number DESC LIMIT 1
    UNION
    SELECT id FROM person WHERE address_street_name = 'Franklin Ave' AND name LIKE '%Annabel%'
);
