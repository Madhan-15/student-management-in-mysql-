              -- clg students management system
              
create database StudentManagementSystem;

use StudentManagementSystem;              

CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    Firstname varchar(100),
    Lastname varchar(100),
    gender ENUM('Male', 'Female'),
    age INT,
    course VARCHAR(50),
    year_of_study INT,
    hostel_id INT,
    FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);

insert into Student (Student_ID, FirstName, LastName, Gender, Age, Course, Year_of_study) 
values (01,'Gomathi','Murugan', 'Female', 21, 'Information Technology', 4),
(02,'Janarthini','Srinivasan', 'Female', 20, 'Information Technology', 3),
(03,'Moulidharan','Thirumoorthy', 'Male', 20, 'Computer Science', 3),
(04,'MadhanRaj','Sekar', 'Male', 21, 'Computer Science', 4),
(05,'Arun','Senthil', 'Male', 19, 'Computer Science', 2),
(06,'Jayasri','Seenu', 'Female', 20, 'Information Technology', 3),
(07,'Thamayanthi','Jayaprakash', 'Female', 19, 'Information Technology', 2),
(08,'Devisri','Sadhasivam', 'Female', 19, 'Information Technology', 2),
(09,'Viji','Subhramani', 'Female', 18, 'AI&DS', 1),
(10,'Deepa','Selvakumar', 'Female', 18, 'AI&DS', 1),
(11,'Dhanush','Ponnusamy', 'Male', 20, 'AI&DS',3),
(12,'Aarumugam','Pandi', 'Male', 20, 'AI&DS', 3),
(13,'IndiranKumar','SenthilKumar', 'Male', 19, 'AI&DS', 2),
(14,'Ravi','Chandran', 'Male', 18, 'ECE', 1),
(15,'Janarthanan','Rangarajan', 'Male', 20, 'Agriculture', 3),
(16,'Glory Joy','Christopher', 'Female', 20, 'Agriculture', 3),
(17,'Gowtham','Natarajan', 'Male', 19, 'Agriculture', 2),
(18,'Gopika','Govindhsamy', 'Female', 19, 'Agriculture', 2),
(19,'Anitha','Palaniyappan', 'Female', 19, 'ECE', 2),
(20,'Sowmiya','Manikandan', 'Female', 21, 'BioMedical', 4),
(21,'Swetha','VenuGopal', 'Female', 20, 'Biomedical', 3),
(22,'Srimathi','Nagarajan', 'Female', 20, 'BioMedical', 3),
(23,'Rohini','Balan', 'Female', 19, 'BioMedical', 2),
(24,'Sangeetha','Venkadesh', 'Female', 19, 'BioMedical', 2),
(25,'Karthiga','Nagarajan', 'Female', 20, 'ECE', 3),
(26,'Sajitha','Govindhasamy', 'Female', 20, 'ECE', 3),
(27,'Aakash','Madhu', 'Male', 19, 'ECE', 2),
(28,'Malavika','Vivekanandhan', 'Female', 19, 'ECE', 2),
(29,'Sharmila','Madasaamy', 'Female', 21, 'Agriculture', 4),
(30,'AswinRaj','Karthikeyan', 'Male', 20, 'Information Technology', 3);


CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    publisher VARCHAR(255),
    year_of_publication INT,
    available_copies INT
);
insert into  Books (Book_ID,Title, Author, Publisher, Year_of_publication, Available_copies)
 values(01,'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 2009, 5),
(02,'Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008, 10),
(03,'The Pragmatic Programmer', 'Andrew Hunt', 'Addison-Wesley', 1999, 7),
(04,'Design Patterns', 'Erich Gamma', 'Addison-Wesley', 1994, 3),
(05,'Code Complete', 'Steve McConnell', 'Microsoft Press', 2004, 8),
(06,'Refactoring', 'Martin Fowler', 'Addison-Wesley', 1999, 4),
(07,'The Art of Computer Programming', 'Donald Knuth', 'Addison-Wesley', 1968, 2),
(08,'Cracking the Coding Interview', 'Gayle Laakmann McDowell', 'CareerCup', 2015, 12),
(09,'Head First Design Patterns', 'Eric Freeman', 'O\'Reilly Media', 2004, 6),
(10,'Effective Java', 'Joshua Bloch', 'Addison-Wesley', 2008, 9),
(11,'You Don\'t Know JS', 'Kyle Simpson', 'O\'Reilly Media', 2015, 11),
(12,'JavaScript: The Good Parts', 'Douglas Crockford', 'O\'Reilly Media', 2008, 5),
(13,'Eloquent JavaScript', 'Marijn Haverbeke', 'No Starch Press', 2014, 10),
(14,'Python Crash Course', 'Eric Matthes', 'No Starch Press', 2016, 7),
(15,'Automate the Boring Stuff with Python', 'Al Sweigart', 'No Starch Press', 2015, 8),
(16,'Fluent Python', 'Luciano Ramalho', 'O\'Reilly Media', 2015, 4),
(17,'Learning Python', 'Mark Lutz', 'O\'Reilly Media', 2013, 6),
(18,'Python Cookbook', 'David Beazley', 'O\'Reilly Media', 2013, 5),
(19,'Introduction to the Theory of Computation', 'Michael Sipser', 'Cengage Learning', 2012, 3),
(20,'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Pearson', 2010, 7),
(21,'Deep Learning', 'Ian Goodfellow', 'MIT Press', 2016, 4),
(22,'Pattern Recognition and Machine Learning', 'Christopher Bishop', 'Springer', 2006, 6),
(23,'Machine Learning: A Probabilistic Perspective', 'Kevin Murphy', 'MIT Press', 2012, 5),
(24,'The Elements of Statistical Learning', 'Trevor Hastie', 'Springer', 2009, 2),
(25,'Introduction to Data Mining', 'Pang-Ning Tan', 'Addison-Wesley', 2005, 3),
(26,'Database System Concepts', 'Abraham Silberschatz', 'McGraw-Hill', 2010, 8),
(27,'Operating System Concepts', 'Abraham Silberschatz', 'Wiley', 2018, 6),
(28,'Computer Networks', 'Andrew S. Tanenbaum', 'Pearson', 2010, 9),
(29,'Modern Operating Systems', 'Andrew S. Tanenbaum', 'Pearson', 2014, 7),
(30,'Compilers: Principles, Techniques, and Tools', 'Alfred V. Aho', 'Pearson', 2006, 4);



CREATE TABLE Library (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    book_id INT,
    issue_date Date,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
alter table Library modify issue_id varchar(100);

desc Library;
SELECT * FROM students WHERE student_id = student_id;

insert into Library (Issue_ID, Student_ID, Book_ID, Issue_date, Return_date)
values('1A2B',01, 1, '2024-08-01', '2024-08-15'),
('1B2C',02, 2, '2024-08-02', '2024-08-16'),
('1C2D',03, 3, '2024-08-03', '2024-08-17'),
('1D2E',04, 4, '2024-08-04', '2024-08-18'),
('1E2F',05, 5, '2024-08-05', '2024-08-19'),
('1F2G',06, 6, '2024-08-06', '2024-08-20'),
('1G2H',07, 7, '2024-08-07', '2024-08-21'),
('1H2I',08, 8, '2024-08-08', '2024-08-22'),
('1I2J',09, 9, '2024-08-09', '2024-08-23'),
('1J2K',10, 10, '2024-08-10', '2024-08-24'),
('1K2L',11, 11, '2024-08-11', '2024-08-25'),
('1L2M',12, 12, '2024-08-12', '2024-08-26'),
('1M2N',13, 13, '2024-08-13', '2024-08-27'),
('1N2O',14, 14, '2024-08-14', '2024-08-28'),
('1O2P',15, 15, '2024-08-15', '2024-08-29'),
('1P2Q',16, 16, '2024-08-16', '2024-08-30'),
('1Q2R',17, 17, '2024-08-17', '2024-08-31'),
('1R2S',18, 18, '2024-08-18', '2024-09-01'),
('1S2T',19, 19, '2024-08-19', '2024-09-02'),
('1T2U',20, 20, '2024-08-20', '2024-09-03'),
('1U2V',21, 21, '2024-08-21', '2024-09-04'),
('1V2W',22, 22, '2024-08-22', '2024-09-05'),
('1W2X',23, 23, '2024-08-23', '2024-09-06'),
('1X2Y',24, 24, '2024-08-24', '2024-09-07'),
('1Y2Z',25, 25, '2024-08-25', '2024-09-08'),
('1Z2A',26, 26, '2024-08-26', '2024-09-09'),
('2A3B',27, 27, '2024-08-27', '2024-09-10'),
('2B3C',28, 28, '2024-08-28', '2024-09-11'),
('2C3D',29, 29, '2024-08-29', '2024-09-12'),
('2DCE',30, 30, '2024-08-30', '2024-09-13');


CREATE TABLE Hostel (
    hostel_id INT AUTO_INCREMENT PRIMARY KEY,
    hostel_name VARCHAR(100),
    hostel_type ENUM('Boys', 'Girls')
);
insert into Hostel (Hostel_ID, Hostel_name, Hostel_type)
values(1, 'Boys Hostel 1', 'Boys'),
(2, 'Girls Hostel 1', 'Girls'),
(3, 'Boys Hostel 2', 'Boys'),
(4, 'Girls Hostel 2', 'Girls'),
(5, 'Boys Hostel 3', 'Boys'),
(6, 'Girls Hostel 3', 'Girls'),
(7, 'Boys Hostel 4', 'Boys'),
(8, 'Girls Hostel 4', 'Girls'),
(9, 'Boys Hostel 5', 'Boys'),
(10, 'Girls Hostel 5', 'Girls'),
(11, 'Boys Hostel 6', 'Boys'),
(12, 'Girls Hostel 6', 'Girls'),
(13, 'Boys Hostel 7', 'Boys'),
(14, 'Girls Hostel 7', 'Girls'),
(15, 'Boys Hostel 8', 'Boys'),
(16, 'Girls Hostel 8', 'Girls'),
(17, 'Boys Hostel 9', 'Boys'),
(18, 'Girls Hostel 9', 'Girls'),
(19, 'Boys Hostel 10', 'Boys'),
(20, 'Girls Hostel 10', 'Girls'),
(21, 'Boys Hostel 11', 'Boys'),
(22, 'Girls Hostel 11', 'Girls'),
(23, 'Boys Hostel 12', 'Boys'),
(24, 'Girls Hostel 12', 'Girls'),
(25, 'Boys Hostel 13', 'Boys'),
(26, 'Girls Hostel 13', 'Girls'),
(27, 'Boys Hostel 14', 'Boys'),
(28, 'Girls Hostel 14', 'Girls'),
(29, 'Boys Hostel 15', 'Boys'),
(30, 'Girls Hostel 15', 'Girls');




CREATE TABLE HostelRooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    hostel_id INT,
    room_number VARCHAR(10),
    capacity INT,
    current_occupancy INT,
    FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);

INSERT INTO HostelRooms (Room_ID, Hostel_ID, Room_number, Capacity, Current_occupancy) 
values ('001', 1, '101', 3, 2),
('002', 1, '102', 3, 3),
('003', 2, '201', 4, 2),
('004', 2, '202', 4, 4),
('005', 3, '301', 2, 1),
('006', 3, '302', 2, 2),
('007', 4, '401', 3, 3),
('008', 4, '402', 3, 1),
('009', 5, '501', 4, 2),
('010', 5, '502', 4, 3),
('011', 6, '601', 2, 2),
('012', 6, '602', 2, 1),
('013', 7, '701', 3, 3),
('014', 7, '702', 3, 2),
('015', 8, '801', 4, 4),
('016', 8, '802', 4, 2),
('017', 9, '901', 2, 2),
('018', 9, '902', 2, 1),
('019', 10, '1001', 3, 3),
('020', 10, '1002', 3, 3),
('021', 11, '1101', 4, 2),
('022', 11, '1102', 4, 4),
('023', 12, '1201', 2, 1),
('024', 12, '1202', 2, 2),
('025', 13, '1301', 3, 3),
('026', 13, '1302', 3, 2),
('027', 14, '1401', 4, 4),
('028', 14, '1402', 4, 2),
('029', 15, '1501', 2, 2),
('030', 15, '1502', 2, 1);
create table  Mess (
    Mess_ID int not null,
    Hostel_ID int,
    Mess_name varchar(100),
    primary key(Mess_ID),
    foreign key(hostel_id) references Hostel(hostel_id)
);

insert into Mess (Mess_ID, Hostel_ID, Mess_name) 
values (1, 1, 'Main Mess'),
(2, 2, 'Secondary Mess'),
(3, 3, 'East Wing Mess'),
(4, 4, 'West Wing Mess'),
(5, 5, 'North Wing Mess'),
(6, 6, 'South Wing Mess'),
(7, 7, 'Central Mess'),
(8, 8, 'Junior Boys Mess'),
(9, 9, 'Senior Boys Mess'),
(10, 10, 'Junior Girls Mess'),
(11, 11, 'Senior Girls Mess'),
(12, 12, 'Boys Mess 1'),
(13, 13, 'Girls Mess 1'),
(14, 14, 'Boys Mess 2'),
(15, 15, 'Girls Mess 2'),
(16, 1, 'Additional Boys Mess 1'),
(17, 2, 'Additional Girls Mess 1'),
(18, 3, 'Additional Boys Mess 2'),
(19, 4, 'Additional Girls Mess 2'),
(20, 5, 'Boys Mess 3'),
(21, 6, 'Girls Mess 3'),
(22, 7, 'Boys Mess 4'),
(23, 8, 'Girls Mess 4'),
(24, 9, 'Boys Mess 5'),
(25, 10, 'Girls Mess 5'),
(26, 11, 'Boys Mess 6'),
(27, 12, 'Girls Mess 6'),
(28, 13, 'Boys Mess 7'),
(29, 14, 'Girls Mess 7'),
(30, 15, 'Boys Mess 8');

create table MessMenu (
    Menu_ID int not null,
    Mess_ID int,
    Day varchar(100),
    meal_type varchar(100),
    menu_details varchar(200),
    primary key(Menu_ID),
    foreign key (Mess_ID) references Mess(Mess_ID)
);

insert into MessMenu (Menu_ID, Mess_ID, Day, Meal_type, Menu_details)
values(1, 1, 'Monday', 'Lunch', 'Rice, Dal, Chicken Curry'),
(2, 1, 'Monday', 'Dinner', 'Chapati, Paneer Curry'),
(3, 1, 'Tuesday', 'Breakfast', 'Idli, Sambar'),
(4, 1, 'Tuesday', 'Lunch', 'Fried Rice, Manchurian'),
(5, 1, 'Tuesday', 'Dinner', 'Dosa, Chutney'),
(6, 2, 'Monday', 'Lunch', 'Pulao, Raita, Chicken Fry'),
(7, 2, 'Monday', 'Dinner', 'Paratha, Vegetable Curry'),
(8, 2, 'Tuesday', 'Breakfast', 'Poha, Curd'),
(9, 2, 'Tuesday', 'Lunch', 'Lemon Rice, Papad'),
(10, 2, 'Tuesday', 'Dinner', 'Roti, Dal Makhani'),
(11, 3, 'Monday', 'Lunch', 'Rice, Fish Curry'),
(12, 3, 'Monday', 'Dinner', 'Biryani, Raita'),
(13, 3, 'Tuesday', 'Breakfast', 'Upma, Coconut Chutney'),
(14, 3, 'Tuesday', 'Lunch', 'Jeera Rice, Mixed Veg Curry'),
(15, 3, 'Tuesday', 'Dinner', 'Noodles, Spring Roll'),
(16, 4, 'Monday', 'Lunch', 'Rice, Rajma'),
(17, 4, 'Monday', 'Dinner', 'Fried Rice, Gobi Manchurian'),
(18, 4, 'Tuesday', 'Breakfast', 'Paratha, Curd'),
(19, 4, 'Tuesday', 'Lunch', 'Curd Rice, Pickle'),
(20, 4, 'Tuesday', 'Dinner', 'Chapati, Egg Curry'),
(21, 5, 'Monday', 'Lunch', 'Rice, Sambar, Chicken Fry'),
(22, 5, 'Monday', 'Dinner', 'Dosa, Sambar'),
(23, 5, 'Tuesday', 'Breakfast', 'Idli, Vada, Chutney'),
(24, 5, 'Tuesday', 'Lunch', 'Tomato Rice, Curd'),
(25, 5, 'Tuesday', 'Dinner', 'Paratha, Potato Curry'),
(26, 6, 'Monday', 'Lunch', 'Rice, Dal, Paneer Curry'),
(27, 6, 'Monday', 'Dinner', 'Roti, Vegetable Curry'),
(28, 6, 'Tuesday', 'Breakfast', 'Dosa, Sambar'),
(29, 6, 'Tuesday', 'Lunch', 'Biryani, Raita'),
(30, 6, 'Tuesday', 'Dinner', 'Chapati, Mixed Veg Curry');

create table  MessAttendance (
    Attendance_ID int not null,
    Student_ID int,
    Mess_ID int,
    Date DATE,
    Meal_type varchar(100),
    Attendance_status boolean,
    foreign key (Student_ID) references Students(Student_ID),
    foreign key (Mess_ID) references Mess(Mess_ID)
);
select*from MessAttendance;

INSERT INTO MessAttendance (Attendance_ID, Student_ID, Mess_ID, Date, Meal_type, Attendance_status) 
VALUES(1, 101, 1, '2024-08-01', 'Breakfast', TRUE),
(2, 102, 1, '2024-08-01', 'Breakfast', TRUE),
(3, 103, 1, '2024-08-01', 'Breakfast', FALSE),
(4, 104, 2, '2024-08-01', 'Lunch', TRUE),
(5, 105, 2, '2024-08-01', 'Lunch', TRUE),
(6, 106, 2, '2024-08-01', 'Lunch', FALSE),
(7, 107, 3, '2024-08-01', 'Dinner', TRUE),
(8, 108, 3, '2024-08-01', 'Dinner', TRUE),
(9, 109, 3, '2024-08-01', 'Dinner', FALSE),
(10, 110, 1, '2024-08-02', 'Breakfast', TRUE),
(11, 111, 1, '2024-08-02', 'Breakfast', TRUE),
(12, 112, 1, '2024-08-02', 'Breakfast', FALSE),
(13, 113, 2, '2024-08-02', 'Lunch', TRUE),
(14, 114, 2, '2024-08-02', 'Lunch', TRUE),
(15, 115, 2, '2024-08-02', 'Lunch', FALSE),
(16, 116, 3, '2024-08-02', 'Dinner', TRUE),
(17, 117, 3, '2024-08-02', 'Dinner', TRUE),
(18, 118, 3, '2024-08-02', 'Dinner', FALSE),
(19, 119, 1, '2024-08-03', 'Breakfast', TRUE),
(20, 120, 1, '2024-08-03', 'Breakfast', TRUE),
(21, 121, 1, '2024-08-03', 'Breakfast', FALSE),
(22, 122, 2, '2024-08-03', 'Lunch', TRUE),
(23, 123, 2, '2024-08-03', 'Lunch', TRUE),
(24, 124, 2, '2024-08-03', 'Lunch', FALSE),
(25, 125, 3, '2024-08-03', 'Dinner', TRUE),
(26, 126, 3, '2024-08-03', 'Dinner', TRUE),
(27, 127, 3, '2024-08-03', 'Dinner', FALSE),
(28, 128, 1, '2024-08-04', 'Breakfast', TRUE),
(29, 129, 1, '2024-08-04', 'Breakfast', TRUE),
(30, 130, 1, '2024-08-04', 'Breakfast', FALSE);



SELECT * FROM Students WHERE hostel_id = 1;


SELECT b.title, l.issue_date, l.return_date
FROM Library l
JOIN Books b ON l.book_id = b.book_id
WHERE l.student_id = 1;


SELECT menu_details
FROM MessMenu
WHERE mess_id = 1 AND day = 'Monday' AND meal_type = 'Lunch';


SELECT date, meal_type, attendance_status
FROM MessAttendance
WHERE student_id = 1 AND mess_id = 1;
