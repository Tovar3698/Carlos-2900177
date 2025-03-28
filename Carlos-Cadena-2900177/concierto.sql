CREATE DATABASE EventManagement;
USE EventManagement;

CREATE TABLE USER (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    password VARCHAR(255) NOT NULL
);

CREATE TABLE REVIEW (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    event_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    review_date DATE,
    FOREIGN KEY (user_id) REFERENCES USER(user_id),
    FOREIGN KEY (event_id) REFERENCES EVENT(event_id)
);

CREATE TABLE VENUE (
    venue_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    capacity INT NOT NULL
);

CREATE TABLE CATEGORY (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE ORGANIZER (
    organizer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

CREATE TABLE SPONSOR (
    sponsor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    contact_info VARCHAR(255),
    event_id INT,
    FOREIGN KEY (event_id) REFERENCES EVENT(event_id)
);

CREATE TABLE EVENT (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    description TEXT,
    venue_id INT,
    category_id INT,
    organizer_id INT,
    FOREIGN KEY (venue_id) REFERENCES VENUE(venue_id),
    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
    FOREIGN KEY (organizer_id) REFERENCES ORGANIZER(organizer_id)
);

CREATE TABLE TICKET (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    price FLOAT NOT NULL,
    seat_number VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES EVENT(event_id)
);

CREATE TABLE PAYMENT (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    amount FLOAT NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL
);

CREATE TABLE BOOKING (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    ticket_id INT,
    payment_id INT,
    booking_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES USER(user_id),
    FOREIGN KEY (ticket_id) REFERENCES TICKET(ticket_id),
    FOREIGN KEY (payment_id) REFERENCES PAYMENT(payment_id)
);

CREATE TABLE ATTENDANCE (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    event_id INT,
    status VARCHAR(50),
    check_in_time DATE,
    FOREIGN KEY (booking_id) REFERENCES BOOKING(booking_id),
    FOREIGN KEY (event_id) REFERENCES EVENT(event_id)
);

