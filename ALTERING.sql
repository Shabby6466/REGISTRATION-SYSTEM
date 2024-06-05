USE OLYMPIAD_REGISTRATION

CREATE TABLE EventCategories(
	category_id INT Primary key,
	category_name VARCHAR(255) NOT NULL,
);

ALTER TABLE Eventss
ADD categories_id INT;

ALTER TABLE Eventss
ADD FOREIGN KEY (categosries_id) REFERENCES EventCategories(category_id);