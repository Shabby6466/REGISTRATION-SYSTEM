use OLYMPIAD_REGISTRATION

--updating data
Update Users SET username = 'Maaz Khan' WHERE users_id = 2;

--ALTER TABLE
Alter table Eventss
Add civils int;

--dATA Taransformation
Select * from Eventss where daate > '2024-09-01' order by daate DESC


--Aggregation
Select created_by, Count(*) AS TotalEvents
FROM Eventss
Group by created_by

--joins
SELECT Users.username, Eventss.event_name, Registration.registration_date
FROM Registration
JOIN Users ON Registration.users_id = Users.users_id
JOIN Eventss ON Registration.Events_ID = Eventss.event_id;
