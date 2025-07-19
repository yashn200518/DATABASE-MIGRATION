# DATABASE-MIGRATION

COMPANY - CODTECH IT SOLUTION

NAME - YASH NAWALE

INTERN ID - CT12DL363

DOMAIN - SQL

DURATION - 8 WEEKS

MENTOR - NEELA SANTOSH

# DESCRIPTION 
The purpose of this process was to migrate a MySQL database named codtech into a PostgreSQL environment. The migration involved extracting the data from MySQL, cleaning the SQL dump to remove MySQL-specific syntax, and then importing it into PostgreSQL using pgAdmin. The process was carried out on a Windows system without using Docker or pgloader, making it a manual but educational and controlled approach.

The first step was exporting the database from MySQL. This was done using MySQL Workbench, where the Data Export feature was used to generate a self-contained .sql file. This file included both the schema (table structures) and data (rows of records) from the MySQL database. The exported file, named Dump20250714.sql, contained all necessary CREATE TABLE and INSERT INTO statements but also included MySQL-specific instructions such as ENGINE=InnoDB, backticks for identifiers, and LOCK TABLES, which are not compatible with PostgreSQL.

Next, the .sql file had to be edited to make it PostgreSQL-compatible. This was done using a text editor (Notepad++ or VS Code recommended). All MySQL-specific syntax was identified and removed or modified. For instance, all backticks used to enclose column or table names were removed, and the ENGINE=InnoDB, CHARSET, and COLLATE clauses at the end of CREATE TABLE statements were deleted. Similarly, LOCK TABLES, UNLOCK TABLES, and version-specific comments like /*! ... */ were also removed. In the INSERT statements, values that were plain text (like city names or project titles) were wrapped in single quotes ('...') to conform with PostgreSQL's syntax rules.

Once the SQL file was cleaned, it was saved under a new name (Dump20250714_PostgreSQL_Ready.sql) and prepared for import. Then, pgAdmin was used to manage PostgreSQL. A new database named codtech was manually created in pgAdmin under the server tree. After creating the database, the Query Tool was opened, and the cleaned .sql file was loaded. The script was executed using the lightning bolt (⚡) icon, which initiated the table creation and data insertion process.

The query executed successfully, with PostgreSQL displaying notices that certain tables didn’t exist (as expected on first-time import) and confirming that all rows were inserted correctly. After the script execution, the database was refreshed in pgAdmin, and both tables — it_sector and sector_projects — were visible under the public schema. Data from both tables was reviewed using the “View/Edit Data → All Rows” feature, confirming that the migration was accurate and successful.

# OUTPUT

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/23fec53b-f997-4865-b79c-52041efd368d" />

In conclusion, this migration process was completed manually without automation tools like pgloader. It offered detailed insight into the structural and syntactical differences between MySQL and PostgreSQL. It required editing the SQL dump to remove MySQL-only features and ensuring compatibility with PostgreSQL syntax. The final result was a clean, working PostgreSQL database with full data integrity preserved, demonstrating a successful and educational database migration.
