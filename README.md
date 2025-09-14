# SQL-Murder-Mystery-Solution
Solve a murder mystery by querying the database.

| File Name                       | Purpose                                    | Contents                                                        |
| ------------------------------- | ------------------------------------------ | --------------------------------------------------------------- |
| `01_crime_scene_report.sql`     | Initial crime scene info                   | The first query filtering murder by date, type, city           |
| `02_witness_statements.sql`     | Witness interviews                         | Queries pulling witness 1 and 2’s statements                    |
| `03_suspect_identification.sql` | Suspect filtering from witness info        | Queries on gym members, driver licenses based on witness info   |
| `04_combined_witness_info.sql`  | Combining info from multiple witnesses     | INTERSECT queries & optimized JOIN query combining witness info |
| `05_culprit_interview.sql`      | Interview of main suspect                  | Query fetching interview of the suspect                         |
| `06_woman_car_license.sql`      | Identify female suspect by car and license | Query selecting woman based on car and license descriptions     |
| `07_new_suspects.sql`           | Additional suspects based on licenses      | Query fetching new suspects details                             |
| `08_event_attendance.sql`       | Checking suspects' event attendance        | Query counting event attendance for suspects                    |
| `09_person_details.sql`         | Fetch details for a specific person        | Query fetching person by ID                                     |
