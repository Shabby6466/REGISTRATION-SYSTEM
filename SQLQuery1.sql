USE OLYMPIAD_REGISTRATION

Create Table Users(
	users_id INT PRIMARY KEY,
	username VARCHAR(255) NOT NULL UNIQUE,
	passwords VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	full_ame VARCHAR(255) not null,
	user_role VARCHAR(50) NOT NULL CHECK ( user_role IN ('admin', 'participant')),
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP

);

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


create table Registration(
	registration_id INT PRIMARY KEY,
	users_id INT NOT NULL,
	Events_ID INT NOT NULL,
	REGISTRATION_DATE DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(users_id) REFERENCES Users(users_id),
	FOREIGN KEY(Events_ID) REFERENCES Eventss(event_id)
);

CREATE TABLE PAYMENTS(
	Payment_id INT PRIMARY KEY,
	registration_id INT NOT NULL,
	amount DECIMAL(10,2) not null,
	payment_date date not null,
	payment_status VARCHAR NOT NULL CHECK (payment_status IN ('pending', 'completed', 'failed')),
	FOREIGN KEY(registration_id) REFERENCES Registration(registration_id)
);
