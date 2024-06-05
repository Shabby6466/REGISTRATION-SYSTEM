use OLYMPIAD_REGISTRATION

USE OLYMPIAD_REGISTRATION;

INSERT INTO Users (users_id, username, passwords, email, full_ame, user_role)
VALUES
(20, 'sara88', 'pass456', 'sara@example.com', 'Sara Ahmed', 'participant'),
(2, 'ahmad786', 'qwerty', 'ahmad@example.com', 'Ahmad Hassan', 'participant'),
(3, 'fatima1', 'fatima123', 'fatima@example.com', 'Fatima Malik', 'participant'),
(4, 'usman22', 'usmanpass', 'usman@example.com', 'Usman Khan', 'participant'),
(5, 'amina7', 'amina123', 'amina@example.com', 'Amina Siddiqui', 'participant'),
(6, 'imran99', 'imranpass', 'imran@example.com', 'Imran Ali', 'participant'),
(7, 'zain45', 'zainpass', 'zain@example.com', 'Zain Ahmed', 'participant'),
(8, 'sadia18', 'sadiapass', 'sadia@example.com', 'Sadia Khan', 'participant'),
(9, 'farhan786', 'farhanpass', 'farhan@example.com', 'Farhan Akhtar', 'participant'),
(10, 'sana22', 'sanapass', 'sana@example.com', 'Sana Riaz', 'participant'),
(11, 'asad007', 'asadpass', 'asad@example.com', 'Asad Mahmood', 'participant'),
(12, 'ayesha88', 'ayeshapass', 'ayesha@example.com', 'Ayesha Siddiqui', 'participant'),
(13, 'kamran55', 'kamranpass', 'kamran@example.com', 'Kamran Khan', 'participant'),
(14, 'nazia32', 'naziapass', 'nazia@example.com', 'Nazia Malik', 'participant'),
(15, 'raza15', 'razapass', 'raza@example.com', 'Raza Ali', 'participant'),
(16, 'asma77', 'asmapass', 'asma@example.com', 'Asma Rizvi', 'participant'),
(17, 'saad92', 'saadpass', 'saad@example.com', 'Saad Ahmed', 'participant'),
(18, 'hina67', 'hinapass', 'hina@example.com', 'Hina Khan', 'participant'),
(19, 'arif21', 'arifpass', 'arif@example.com', 'Arif Mahmood', 'participant');

INSERT INTO EventCategories (category_id, category_name)
VALUES
(1, 'Programming'),
(2, 'Mathematics'),
(3, 'Science');


INSERT INTO Eventss (event_id, event_name, descriptions, daate, locations, created_by, users_id, categories_id)
VALUES
(1, 'Coding Competition', 'A coding competition for programmers of all levels.', '2024-07-15', 'Karachi', 1, 1, 1),
(2, 'Math Olympiad', 'A mathematics competition focusing on problem-solving skills.', '2024-08-20', 'Lahore', 2, 2, 2),
(3, 'Science Fair', 'An exhibition showcasing innovative science projects.', '2024-09-10', 'Islamabad', 3, 3, 3);


INSERT INTO Registration (registration_id, users_id, Events_ID, REGISTRATION_DATE)
VALUES
(1, 1, 1, '2024-06-01 09:00:00'),
(2, 2, 1, '2024-06-01 10:30:00'),
(3, 3, 2, '2024-06-02 11:45:00'),
(4, 4, 2, '2024-06-03 13:20:00'),
(5, 5, 3, '2024-06-04 14:10:00'),
(6, 6, 3, '2024-06-05 15:30:00'),
(7, 7, 1, '2024-06-06 16:45:00'),
(8, 8, 2, '2024-06-07 17:50:00'),
(9, 9, 3, '2024-06-08 18:00:00'),
(10, 10, 1, '2024-06-09 19:15:00'),
(11, 11, 2, '2024-06-10 20:20:00'),
(12, 12, 3, '2024-06-11 21:30:00'),
(13, 13, 1, '2024-06-12 22:45:00'),
(14, 14, 2, '2024-06-13 23:00:00'),
(15, 15, 3, '2024-06-14 08:00:00'),
(16, 16, 1, '2024-06-15 09:15:00'),
(17, 17, 2, '2024-06-16 10:30:00'),
(18, 18, 3, '2024-06-17 11:45:00'),
(19, 19, 1, '2024-06-18 12:00:00'),
(20, 20, 2, '2024-06-19 13:30:00');


INSERT INTO PAYMENTS (Payment_id, registration_id, amount, payment_date, payment_status)
VALUES
(1, 1, 50.00, '2024-06-05', 'completed'),
(2,2, 50.00, '2024-06-05', 'completed'),
(3,3, 50.00, '2024-06-05', 'completed'),
(4,4, 50.00, '2024-06-05', 'completed'),
(5,5, 50.00, '2024-06-05', 'completed'),
(6,6, 50.00, '2024-06-05', 'completed'),
(7,7, 50.00, '2024-06-05', 'completed'),
(8,8, 50.00, '2024-06-05', 'completed'),
(9,9, 50.00, '2024-06-05', 'completed'),
(10,10, 50.00, '2024-06-05', 'completed'),
(11,11, 50.00, '2024-06-05', 'completed'),
(12,12, 50.00, '2024-06-05', 'completed'),
(13,13, 50.00, '2024-06-22', 'pending');
