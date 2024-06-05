use OLYMPIAD_REGISTRATION 

create Table Eventss(
	event_id INT PRIMARY KEY,
	event_name VARCHAR(255) NOT NULL,
	descriptions VARCHAR(255),
	daate date NOT NULL,
	locations VARCHAR(255),
	created_by INT not null,
	users_id int NOT NULL,
	FOREIGN KEY (created_by) REFERENCES Users(users_id),
);