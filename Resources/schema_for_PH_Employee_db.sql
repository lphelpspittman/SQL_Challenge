/*
Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.

Import each CSV file into its corresponding SQL table.
*/
-- Create titles table
-- title_id,title
CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	-- primary key
	PRIMARY KEY (title_id)
);

--use import function in pgAdmin to load csv file into the titles table

-- view titles table
SELECT *
FROM titles;

-- Create employees table
-- emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR,
	hire_date DATE NOT NULL
	--primary key
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);