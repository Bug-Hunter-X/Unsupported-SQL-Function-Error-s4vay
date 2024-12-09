The solution depends on the specific function and database system.  It may involve:
1. **Replacing the unsupported function with an equivalent supported function:**  Many functions have equivalents, even across different database systems. Look for a similar function offered by your particular database system.
2. **Rewriting the query to achieve the same outcome without using the unsupported function:** This might involve using subqueries or other SQL constructs.
3. **Upgrading the database system:** If the function is available in a newer version of the database system, consider upgrading.
4. **Using a different database system:** In some cases, if the feature is crucial and the database system does not support it, choosing a more appropriate database might be necessary.

Example (Assuming MySQL and lack of `JSON_EXTRACT` in a version that doesn't support JSON):
Let's say the `jsonData` column is a string representing JSON. Instead of `JSON_EXTRACT`, we might use `SUBSTRING_INDEX` and string manipulation if we know the JSON format is relatively simple:
```sql
SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(jsonData, '"name":"', -1), '"', 1) AS name FROM myTable;
```
This solution is fragile and depends on the specific structure of the JSON string.  For robust JSON handling, consider using a database that natively supports JSON (like PostgreSQL) or a different approach altogether.