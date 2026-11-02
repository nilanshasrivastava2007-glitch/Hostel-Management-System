CREATE TABLE HOSTEL (
  Hostel_Id NUMBER(5) PRIMARY KEY,
  Hostel_Name VARCHAR2(50) NOT NULL,
  Address VARCHAR2(100)
);

CREATE TABLE WARDEN (
  Warden_Id NUMBER(5) PRIMARY KEY,
  Warden_Name VARCHAR2(50) NOT NULL,
  Age NUMBER(3) CHECK (Age >= 18),
  Phone_No VARCHAR2(15) UNIQUE,
  Address VARCHAR2(100),
  Hostel_Id NUMBER(5) NOT NULL,
  CONSTRAINT fk_warden_hostel FOREIGN KEY (Hostel_Id)
    REFERENCES HOSTEL(Hostel_Id)
);

CREATE TABLE ROOM (
  Hostel_Id NUMBER(5),
  Room_No NUMBER(5),
  Floor_No NUMBER(2),
  Seater NUMBER(2) CHECK (Seater > 0),
  AC_or_NonAC VARCHAR2(10)
    CHECK (AC_or_NonAC IN ('AC', 'Non-AC')),
  CONSTRAINT pk_room PRIMARY KEY (Hostel_Id, Room_No),
  CONSTRAINT fk_room_hostel FOREIGN KEY (Hostel_Id)
    REFERENCES HOSTEL(Hostel_Id)
);

CREATE TABLE STUDENT (
  Student_Id NUMBER(5) PRIMARY KEY,
  Student_Name VARCHAR2(50) NOT NULL,
  Course VARCHAR2(30),
  Year NUMBER(1) CHECK (Year BETWEEN 1 AND 5),
  CGPA NUMBER(3,2) CHECK (CGPA BETWEEN 0 AND 10),
  DOB DATE,
  Hostel_Id NUMBER(5) NOT NULL,
  Room_No NUMBER(5) NOT NULL,
  CONSTRAINT fk_student_room FOREIGN KEY (Hostel_Id, Room_No)
    REFERENCES ROOM(Hostel_Id, Room_No)
);

CREATE TABLE PAYMENT (
  Payment_Id NUMBER(5) PRIMARY KEY,
  Student_Id NUMBER(5) NOT NULL,
  Payment_Mode VARCHAR2(20)
    CHECK (Payment_Mode IN ('Cash', 'UPI', 'Card', 'Bank Transfer')),
  Payment_Status VARCHAR2(20)
    CHECK (Payment_Status IN ('Paid', 'Pending', 'Failed')),
  Amount NUMBER(10,2) CHECK (Amount > 0),
  CONSTRAINT fk_payment_student FOREIGN KEY (Student_Id)
    REFERENCES STUDENT(Student_Id)
);
