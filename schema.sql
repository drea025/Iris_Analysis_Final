-- create table for iris dataset using varchar (data type is "General" for all columns)
CREATE TABLE iris (
	sepal_length VARCHAR(40) NOT NULL, 
 	sepal_width VARCHAR(40) NOT NULL, 
 	petal_length VARCHAR(40) NOT NULL, 
 	petal_width VARCHAR(40) NOT NULL, 
 	class VARCHAR(40) NOT NULL
);

SELECT * FROM iris