### Page: View Appointments by Specialty

This page features a parameterized report that dynamically filters and displays appointments based on a selected medical specialty.

In APEX, this was created using **Create Page -> Report -> Interactive Report**. To achieve the dynamic filtering functionality, the following configurations were made:

* **Parameter Item:** A Page Item (e.g., `P12_SPECIALITATE`) was added as a **Select List (LOV)**, populated with all available specialties from the database. 
* **Parameterized Query (Bind Variable):** The report's underlying SQL query joins the appointments and doctors tables and uses a `WHERE` clause with a bind variable (`WHERE M.CODSPEC = :P12_SPECIALITATE`). This restricts the output to only match the user's selection.
* **Dynamic Refresh:** To provide a seamless user experience without full page reloads, a **Dynamic Action** was created on the parameter item (Event: Change -> Action: Refresh Region). 
* **Session State Management:** The parameter item was explicitly added to the report's **Page Items to Submit** property. This ensures that the newly selected specialty value is sent to the APEX server state right before the SQL query re-executes.