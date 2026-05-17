This page shows a summary report for all doctors in the database.
For each doctor, it displays the doctor's name, specialty, grade, and the number of appointments assigned to them.

The page is useful for quickly seeing which doctors have the most scheduled appointments.

In APEX, this was created using Create Page -> Report -> Interactive Report.
The SQL query uses JOINs to get the specialty and grade names, and COUNT with GROUP BY to calculate the number of appointments for each doctor.