### Page: View Appointments

This page displays a complete list of all medical appointments from the database, showing details like date, patient name, and doctor name.

In APEX, this was created using **Create Page -> Report -> Interactive Report**. 

To display the doctor's actual name instead of their raw ID (`MEDID`), a custom `SQL Query` was used to `JOIN` the `CBPROGRAMARE` (appointments) and `CBMEDIC` (doctors) tables. 

Because both tables contain a column called `NUME`, the SQL aliases `P.NUME AS PACIENT` and `M.NUME AS MEDIC` were used to prevent a duplicate name error. After updating the query, the **Synchronize Columns** option was used in Page Designer to make the new column names visible in the report.