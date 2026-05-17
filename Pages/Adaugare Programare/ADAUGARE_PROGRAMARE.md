### Page: Add Appointment

This page contains a form used to insert new medical appointments into the database. 

In APEX, this was created using **Create Page -> Form**, with the source table set to `CBPROGRAMARE`. Several enhancements were implemented to ensure data integrity and a smooth user experience:

* **Unique ID Generation:** The Primary Key (`CODPRO`) is generated automatically. The item is left empty on page load to prevent checksum errors, and a custom **PL/SQL Process** runs when the "Create" button is pressed to calculate the next available ID (`SELECT NVL(MAX(codpro), 0) + 1 INTO :P11_CODPRO FROM cbprogramare;`).
* **CNP Validation:** To ensure valid input, a **Regular Expression** validation (`^[0-9]{13}$`) was attached to the `CNP` field, restricting the input to exactly 13 digits.
* **Date Restriction:** To prevent scheduling appointments in the past, the `DATA` field (Date Picker) has its **Minimum Date** attribute set to `+0d` (restricting selection to today and future dates).