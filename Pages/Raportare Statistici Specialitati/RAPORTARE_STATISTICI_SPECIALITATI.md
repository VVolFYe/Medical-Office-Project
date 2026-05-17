### Page: Specialty Statistics Report

This page displays a centralized statistical report, showing each medical specialty, its name, the total number of doctors, and the total number of unique patients registered.

In APEX, this page was created using **Create Page -> Report -> Interactive Report**. To ensure complete data accuracy, the underlying SQL query uses advanced aggregation and joining techniques:

* **LEFT JOIN:** The `cbSpecialitate`, `cbMedic`, and `cbProgramare` tables are connected using `LEFT JOIN`. This guarantees that no specialty is omitted: if a new specialty doesn't have any assigned doctors or appointments yet, it will still appear in the report with a value of `0` instead of being filtered out completely.
* **COUNT(DISTINCT m.medID):** Calculates the exact number of unique doctors belonging to each specialty.
* **COUNT(DISTINCT p.cnp):** Counts unique patients based on their personal identification number (CNP). Using `DISTINCT` here is crucial to prevent data duplication; if a single patient has 5 appointments in the same specialty, they will be counted as **one unique patient**, providing accurate real-world statistics for the clinic.
* **GROUP BY:** Standard SQL rules require all non-aggregated columns (`codSpec` and `denumire`) to be included in the `GROUP BY s.codSpec, s.denumire` clause so the `COUNT` functions can group the results correctly for each row.