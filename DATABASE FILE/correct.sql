CREATE TABLE helpdesk (
    empID int NOT NULL, -- Staff ID
    userName varchar(50) DEFAULT NULL, -- Username
    workEmail varchar(50) DEFAULT NULL, -- Work email
    password varchar(50) DEFAULT NULL, -- Password
    phoneNum varchar(50) DEFAULT NULL, -- Phone number
    PRIMARY KEY (empID)
);

-- Inquiries Table: Stores inquiries from users
CREATE TABLE inquiries (
    inqID int NOT NULL, -- Inquiry ID
    type varchar(50) DEFAULT NULL, -- Type of inquiry
    date date DEFAULT NULL, -- Date of inquiry
    userName varchar(50) DEFAULT NULL, -- Username
    empID int DEFAULT NULL, -- Staff ID
    PRIMARY KEY (inqID),
    FOREIGN KEY (empID) REFERENCES helpdesk (empID)
);

-- User Account Table: Stores user account information
CREATE TABLE user_account (
    userName varchar(50) NOT NULL, -- Username
    email varchar(50) DEFAULT NULL, -- Email
    name varchar(255) DEFAULT NULL, -- Name
    phoneNumber varchar(50) DEFAULT NULL, -- Phone number
    password varchar(50) DEFAULT NULL, -- Password
    age int DEFAULT NULL, -- Age
    DOB date DEFAULT NULL,
	inqID int DEFAULT NULL,
    PRIMARY KEY (userName),
    FOREIGN KEY (inqID) REFERENCES inquiries (inqID)
);

-- Staff Table: Stores information about Staffs
CREATE TABLE Staff (
    empID int NOT NULL,
    Name varchar(255) NOT NULL,
    Age int NOT NULL,
    DOB date,
    username varchar(50) NOT NULL,
    PRIMARY KEY (empID)
);

-- Financial Manager Table: Stores information about staff financial managers
CREATE TABLE Financial_manager (
    empID int NOT NULL, 
    userName varchar(50) DEFAULT NULL, 
    workEmail varchar(50) DEFAULT NULL, 
    password varchar(50) DEFAULT NULL,
    phoneNum varchar(50) DEFAULT NULL, 
    PRIMARY KEY (empID)
);

-- Admin Table: Stores information about administrators
CREATE TABLE admin (
    empID INT NOT NULL, -- Staff ID
    userName varchar(50) DEFAULT NULL, -- Username
    workEmail varchar(50) DEFAULT NULL, -- Work email
    phoneNumber varchar(50) DEFAULT NULL, -- Phone number
    password varchar(50) DEFAULT NULL, -- Password
    PRIMARY KEY (empID)
);

-- Booked Flight Table
CREATE TABLE Booked_flight (
    Flight_ID char(10) NOT NULL,
    Payment_date date NOT NULL,
    Airline_name varchar(255) NOT NULL,
    Departure_airport varchar(255) NOT NULL,
    Arrival_airport varchar(255) NOT NULL,
    Departure_date datetime NOT NULL,
    Arrival_date datetime NOT NULL,
    Route varchar(255) NOT NULL,
    userName varchar(50) NOT NULL, -- Username
    PRIMARY KEY (Flight_ID),
    FOREIGN KEY (userName) REFERENCES user_account (userName)
);

-- Reservation Report Table
CREATE TABLE Reservation_Reports (
    Rep_ID char(10) NOT NULL,
    Rep_Type varchar(200) NOT NULL,
    Rep_Name varchar(200) NOT NULL,
    Date_range varchar(200),
    empID int NOT NULL,
    PRIMARY KEY (Rep_ID),
    FOREIGN KEY (empID) REFERENCES Staff(empID)
);

-- Booking Report Table
CREATE TABLE Booking_Reports (
    Rep_ID varchar(50) NOT NULL,
    Rep_Type varchar(200) NOT NULL,
    Rep_Name varchar(200) NOT NULL,
    Date_range varchar(200),
    empID int NOT NULL,
    PRIMARY KEY (Rep_ID),
    FOREIGN KEY (empID) REFERENCES Staff(empID)
);

-- Financial Statistic Report Table
CREATE TABLE Financial_stat_Reports (
    Rep_ID int NOT NULL,
    Payment_ID int NOT NULL,
    Rep_Type varchar(200) NOT NULL,
    Rep_Name varchar(200) NOT NULL,
    Rep_Date datetime,
    empID int NOT NULL,
    PRIMARY KEY (Rep_ID),
    FOREIGN KEY (empID) REFERENCES Staff(empID)
);

-- Multi-valued Attribute Table for User Phone Numbers
CREATE TABLE U_phoneNumber(
    phoneNumber varchar(50) NOT NULL,
    userName varchar(50) NOT NULL,
    PRIMARY KEY (phoneNumber, userName),
    FOREIGN KEY (userName) REFERENCES user_account(userName)
);

-- Payment Table: Stores payment information
CREATE TABLE payment (
    paymentID int NOT NULL, -- Payment ID
    payment_method varchar(50) DEFAULT NULL, -- Payment method
    payment_date varchar(50) DEFAULT NULL, -- Date of payment
    userName varchar(50) DEFAULT NULL, -- Username
    PRIMARY KEY (paymentID),
    FOREIGN KEY (userName) REFERENCES user_account (userName)
);

-- Reservation Table: Stores reservation information
CREATE TABLE reservation (
    reservationID varchar(10) NOT NULL, -- Reservation ID
    class varchar(50) DEFAULT NULL, -- Class of reservation
    status varchar(50) DEFAULT NULL, -- Status of reservation
    payment_status varchar(50) DEFAULT NULL, -- Payment status
    userName varchar(50) DEFAULT NULL, -- Username
    paymentID INT DEFAULT NULL, -- Payment ID
    PRIMARY KEY (reservationID),
    FOREIGN KEY (userName) REFERENCES user_account (userName),
    FOREIGN KEY (paymentID) REFERENCES payment(paymentID)
);



-- Package Table: Stores information about travel packages
CREATE TABLE package (
    packageID varchar(10) NOT NULL, -- Package ID
    name varchar(50) DEFAULT NULL, -- Package name
    flying_class varchar(50) DEFAULT NULL, -- Flying class
    destination varchar(50) DEFAULT NULL, -- Destination
    no_of_seats varchar(50) DEFAULT NULL, -- Number of seats
    userName varchar(50) DEFAULT NULL, -- Username
    PRIMARY KEY (packageID),
    FOREIGN KEY (userName) REFERENCES user_account (userName)
);



-- Feedback Table: Stores user feedback
CREATE TABLE feedback (
    feedbackID int NOT NULL, -- Feedback ID
    date date DEFAULT NULL, -- Date of feedback
    message varchar(255) DEFAULT NULL, -- Feedback message
    userName varchar(50) DEFAULT NULL, -- Username
    PRIMARY KEY (feedbackID),
    FOREIGN KEY (userName) REFERENCES user_account (userName)
);

-- Booking Table: Stores booking information
CREATE TABLE booking (
    bookingID char(10) NOT NULL, -- Booking ID
    booking_date date DEFAULT NULL, -- Date of booking
    e_ticket_link varchar(255) DEFAULT NULL, -- E-ticket link
    userName varchar(50) DEFAULT NULL, -- Username
    emp_empID INT NOT NULL, -- Staff ID
	admin_empID INT NOT NULL, -- admin ID
    paymentID int NOT NULL, -- Payment ID
    PRIMARY KEY (bookingID),
    FOREIGN KEY (userName) REFERENCES user_account (userName),
    FOREIGN KEY (emp_empID) REFERENCES Staff (empID),
    FOREIGN KEY (admin_empID) REFERENCES admin (empID),
    FOREIGN KEY (paymentID) REFERENCES payment(paymentID)
);

CREATE TABLE E_ticket (
    reservationID_bookingID varchar(10) NOT NULL, -- Reservation ID or Booking ID
    Ticket_no varchar(10) NOT NULL, -- Ticket number
    Issue_date date NOT NULL, -- Date of ticket issuance
    Ticket_type varchar(50) NOT NULL, -- Type of ticket (e.g., Economy, Business)
    paymentID int NOT NULL, -- Payment ID
    PRIMARY KEY (reservationID_bookingID), -- Assuming each reservation/booking has a unique ID
    FOREIGN KEY (paymentID) REFERENCES payment(paymentID) -- Referencing the payment table
);


INSERT INTO Staff (empID, Name, Age, DOB, username)                 
VALUES (1, 'John Doe', 30, '1994-05-15', 'john_doe@helpdesk'),
(2, 'Alice Smith', 25, '1999-10-20', 'alice_smith@ticketagent'),
(3, 'Bob Johnson', 35, '1989-03-25', 'bob_johnson@admin'),
(4, 'Emily Brown', 28, '1996-08-12', 'emily_brown@financilamanager'),
(5, 'Michael Wilson', 32, '1992-11-08', 'michael_wilson@admin');


INSERT INTO Financial_manager (empID, userName, workEmail, password, phoneNum)
VALUES (6, 'samantha_rodriguez@financialmanager', 'samantha.rodriguezfm@gmail.com', 'password123', 1234567890),
(7, 'ethan_thompson@financialmanager', 'ethan.thompsonfm@gmail.com', 'password456', 9876543210),
(8, 'mia_chen@financialmanager', 'mia.chenfm@gmail.com', 'password789', 5555555555),
(4, 'emily_brown@financilamanager', 'emily.brownfm@gmail.com', 'passwordabc', 1111111111),
(9, 'lucas_patel@financialmanager', 'lucas.patelfm@gmail.com', 'passwordxyz', 9999999999);


INSERT INTO Financial_stat_Reports (Rep_ID, Payment_ID, Rep_Type, Rep_Name, Rep_Date,empID)
VALUES (101, 1011, 'Monthly', 'Financial Report January 2024', '2024-01-31', 1),
(201, 2011, 'Monthly', 'Financial Report February 2024', '2024-02-29', 2),
(301, 3011, 'Monthly', 'Financial Report March 2024', '2024-03-31', 3),
(401, 4011, 'Monthly', 'Financial Report April 2024', '2024-04-30', 4),
(501, 5011, 'Monthly', 'Financial Report May 2024', '2024-05-31', 5);


INSERT INTO Booking_Reports (Rep_ID, Rep_Type, Rep_Name, Date_range,empID)
VALUES ('B1', 'Quarterly', 'Booking Report Q1 2024', '2024-01-01 to 2024-03-31', 3),
('B2', 'Quarterly', 'Booking Report Q2 2024', '2024-04-01 to 2024-06-30', 3),
('B3', 'Quarterly', 'Booking Report Q3 2024', '2024-07-01 to 2024-09-30', 5),
('B4', 'Quarterly', 'Booking Report Q4 2024', '2024-10-01 to 2024-12-31', 3),
('B5', 'Annual', 'Booking Report 2024', '2024-01-01 to 2024-12-31', 5);


INSERT INTO Reservation_Reports (Rep_ID, Rep_Type, Rep_Name, Date_range,empID)
VALUES ('R1', 'Annual', 'Reservation Report 2024', '2024-01-01 to 2024-12-31', 3),
('R2', 'Quarterly', 'Reservation Report Q1 2024', '2024-01-01 to 2024-03-31', 3),
('R3', 'Quarterly', 'Reservation Report Q2 2024', '2024-04-01 to 2024-06-30', 5),
('R4', 'Quarterly', 'Reservation Report Q3 2024', '2024-07-01 to 2024-09-30', 3),
('R5', 'Quarterly', 'Reservation Report Q4 2024', '2024-10-01 to 2024-12-31', 5);

INSERT INTO helpdesk(empID, userName, workEmail, password, phoneNum)  
VALUES(13, 'helpdesk_user', 'helpdesk@gmail.com', 'help123',1112223333),
(14, 'helpdesk2_user', 'helpdesk2@gmail.com', 'help456', 2223334444),
(1, 'john_doe@helpdesk', 'johm.doe_hd@gmail.com', 'help789', 3334445555),
(16, 'helpdesk4_user', 'helpdesk4@gmail.com', 'helpabc',4445556666),
(17, 'helpdesk5_user', 'helpdesk5@gmail.com', 'helpxyz',5556667777);

INSERT INTO inquiries (inqID,type, date,userName,empID)
VALUES (1, 'General', '2024-05-02', 'isabella_sanchez', 1),
(2, 'Technical', '2024-05-02', 'ethan_perez', 14),
(3, 'Billing', '2024-05-02', 'ava_garcia', 16),
(4, 'General', '2024-05-02', 'natalie_adams', 13),
(5, 'Technical', '2024-05-02', 'william_martinez', 17);

INSERT INTO user_account (userName, email, name, phoneNumber, password, age, DOB,inqID) 
VALUES('alex_martin', 'alex.martin@example.com', 'Alex Martin', 1112223333, 'password123', 29, '1995-08-20', 1),
('natalie_adams', 'natalie.adams@example.com', 'Natalie Adams', 4443332222, 'password456', 34, '1988-12-15', 2),
('daniel_rodriguez', 'daniel.rodriguez@example.com', 'Daniel Rodriguez', 7778889999, 'password789', 28, '1996-04-05', 3),
('ava_garcia', 'ava.garcia@example.com', 'Ava Garcia', 2224446666, 'passwordabc', 30, '1994-10-25', 4),
('william_martinez', 'william.martinez@example.com', 'William Martinez',5557779999, 'passwordxyz', 31, '1993-03-12', 5);

INSERT INTO Booked_flight (Flight_ID, Payment_date, Airline_name, Departure_airport, Arrival_airport, Departure_date, Arrival_date, Route, userName) 
VALUES ('001', '2024-05-02', 'Delta Airlines', 'JFK', 'LAX', '2024-05-10', '2024-05-10', 'JFK-LAX', 'alex_martin'),
       ('002', '2024-05-02', 'United Airlines', 'LAX', 'JFK', '2024-05-15', '2024-05-15', 'LAX-JFK', 'natalie_adams'),
       ('003', '2024-05-02', 'American Airlines', 'DFW', 'LGA', '2024-05-20', '2024-05-20', 'DFW-LGA', 'daniel_rodriguez'),
       ('004', '2024-05-02', 'Southwest Airlines', 'ORD', 'ATL', '2024-05-25', '2024-05-25', 'ORD-ATL', 'ava_garcia'),
       ('005', '2024-05-02', 'JetBlue Airways', 'SFO', 'SEA', '2024-05-30', '2024-05-30', 'SFO-SEA', 'william_martinez');

INSERT INTO payment(paymentID, payment_method, payment_date,userName)
VALUES (1011, 'Credit Card', '2024-05-02', 'alex_martin'),
(2011, 'Debit Card', '2024-05-02', 'natalie_adams'),
(3011, 'Debit Card', '2024-05-02', 'daniel_rodriguez'),
(4011, 'Credit Card', '2024-05-02', 'ava_garcia'),
(5011, 'Credit Card', '2024-05-02', 'william_martinez');

INSERT INTO E_ticket(reservationID_bookingID, Ticket_no, Issue_date,Ticket_type,paymentID)
VALUES ('R01', '1234', '2024-05-02', 'Economy', 1011),
('R02', '9876', '2024-05-02', 'Business', 2011),
('R03', '4561', '2024-05-02', 'Economy', 3011),
('R04', '3216', '2024-05-02', 'Business', 4011),
('R05', '7894', '2024-05-02', 'Economy', 5011);

	

INSERT INTO admin(empID, userName, workEmail, phoneNumber, password) 
VALUES(10, 'admin_user', 'admin@gmail.com', 0000000000, 'admin123'),
(11, 'admin2_user', 'admin2@gmail.com', 1111111111, 'admin456'),
(3, 'michael_wilson@admin', 'michael.wilson_ad@gmail.com', 2222222222, 'admin789'),
(12, 'admin4_user', 'admin4@gmail.com', 3333333333, 'adminabc'),
(5, 'bob_johnson@admin', 'bob_johnson_ad@gmail.com', 4444444444, 'adminxyz');


   

INSERT INTO booking(bookingID, booking_date, e_ticket_link,userName,emp_empID,admin_empID,paymentID)
VALUES('100B', '2024-05-01', 'http://example.com/e-ticket', 'alex_martin',1,10 , 1011),
('200B', '2024-04-28', 'http://example.com/e-ticket', 'natalie_adams',2,11, 2011),
('300B', '2024-04-15', 'http://example.com/e-ticket', 'daniel_rodriguez',3,3, 3011),
('400B', '2024-04-12', 'http://example.com/e-ticket', 'ava_garcia',4,12, 4011),
('500B', '2024-04-05', 'http://example.com/e-ticket', 'william_martinez',5,5, 5011);



INSERT INTO feedback  (feedbackID, date, message,userName)
VALUES(1, '2024-04-02', 'Great service!', 'alex_martin'),
(2, '2024-03-05', 'Smooth experience.', 'natalie_adams'),
(3, '2024-04-15', 'Could improve cleanliness.', 'daniel_rodriguez'),
(4, '2024-05-02', 'Friendly staff!', 'ava_garcia'),
(5, '2024-05-02', 'Would recommend.', 'william_martinez');

INSERT INTO package (packageID, name, flying_class, destination, no_of_seats,userName)
VALUES ('P1', 'Honeymoon Package', 'First Class', 'Maldives', 2, 'alex_martin'),
('P2', 'Family Vacation Package', 'Economy', 'Disney World', 4, 'natalie_adams'),
('P3', 'Adventure Package', 'Business', 'Patagonia', 1, 'daniel_rodriguez'),
('P4', 'City Break Package', 'Economy', 'Paris', 2, 'ava_garcia'),
('P5', 'Luxury Retreat Package', 'First Class', 'Bora Bora', 2, 'william_martinez');

INSERT INTO reservation(reservationID, class,status, payment_status,userName,paymentID)
VALUES('R01', 'First Class', 'Confirmed', 'Paid', 'alex_martin', 1011),
('R02', 'Economy', 'Confirmed', 'Paid', 'natalie_adams', 2011),
('R03', 'Business', 'Pending', 'Unpaid', 'daniel_rodriguez', 3011),
('R04', 'Economy', 'Confirmed', 'Paid', 'ava_garcia', 4011),
('R05', 'First Class', 'Pending', 'Unpaid', 'william_martinez', 5011);

INSERT INTO U_phoneNumber(userName,phoneNumber)
VALUES('alex_martin', 1112223333),
('natalie_adams', 4443332222),
('alex_martin', 4445556666),
('natalie_adams', 8889998888);
   