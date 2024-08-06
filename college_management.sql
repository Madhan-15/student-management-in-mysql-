              -- clg students management system
-- Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    gender ENUM('Male', 'Female'),
    age INT,
    course VARCHAR(50),
    year_of_study INT,
    hostel_id INT,
    FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);
-- Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    publisher VARCHAR(255),
    year_of_publication INT,
    available_copies INT
);

-- Library table
CREATE TABLE Library (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Hostel table
CREATE TABLE Hostel (
    hostel_id INT AUTO_INCREMENT PRIMARY KEY,
    hostel_name VARCHAR(100),
    hostel_type ENUM('Boys', 'Girls')
);

-- HostelRooms table
CREATE TABLE HostelRooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    hostel_id INT,
    room_number VARCHAR(10),
    capacity INT,
    current_occupancy INT,
    FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);


-- Insert a new student
INSERT INTO Students (name, gender, age, course, year_of_study, hostel_id) 
VALUES ('John Doe', 'Male', 20, 'Computer Science', 2, 1);

-- Insert a new book
INSERT INTO Books (title, author, publisher, year_of_publication, available_copies)
VALUES ('Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 2009, 5);

-- Issue a book to a student
INSERT INTO Library (student_id, book_id, issue_date, return_date)
VALUES (1, 1, '2024-08-01', '2024-08-15');

-- Insert a new hostel
INSERT INTO Hostel (hostel_name, hostel_type)
VALUES ('Boys Hostel', 'Boys');

-- Insert a new hostel room
INSERT INTO HostelRooms (hostel_id, room_number, capacity, current_occupancy)
VALUES (1, '101', 3, 2);

-- Insert a new messps_setup_enable_threadps_setup_reload_saved
INSERT INTO Mess (hostel_id, mess_name)
VALUES (1, 'Main Mess');

-- Insert a new mess menu
INSERT INTO MessMenu (mess_id, day, meal_type, menu_details)
VALUES (1, 'Monday', 'Lunch', 'Rice, Dal, Chicken Curry');

-- Record mess attendance
INSERT INTO MessAttendance (student_id, mess_id, date, meal_type, attendance_status)
VALUES (1, 1, '2024-08-01', 'Lunch', TRUE);


