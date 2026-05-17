This page allows searching for a patient's appointments using their CNP.
The user enters a CNP in the page item field and presses the search button.
The report then displays only the appointments that belong to that patient.

In APEX, this was created using Create Page -> Report -> Interactive Report. 
A Text Field page item named P7_CNP was added, and the SQL query filters the results using WHERE p.cnp = :P7_CNP.