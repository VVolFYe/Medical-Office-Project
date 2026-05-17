Page: View Patients

This page shows a master-detail view between doctors and their appointments.
The upper table lists all doctors from the database.
When a doctor is selected, the lower table displays only the appointments assigned to that doctor.

In APEX, this was created using Create Page -> Master Detail -> Stacked. The master table is CBMEDIC, the detail table is CBPROGRAMARE, linked by MEDID.