
DBMS Mini Project - Hostel Management System using Oracle SQL
# 🏨 Hostel Management System

## 📌 Project Overview

The **Hostel Management System** is a DBMS mini project developed using **Oracle SQL**. It is designed to manage hostel-related information, including hostels, wardens, rooms, students and their payments.

The project uses a relational database to maintain records, establish relationships between tables and ensure data integrity through primary keys, foreign keys and other constraints.

## 🎯 Objectives

- Maintain hostel and warden information.
- Manage room details and room allocation.
- Store student information.
- Maintain student payment records.
- Establish relationships between database tables.
- Retrieve useful information using SQL queries.

## 🛠️ Technologies Used

- **Database:** Oracle Database
- **SQL Platform:** Oracle FreeSQL
- **Language:** SQL
- **Version Control:** GitHub

## 🗂️ Database Tables

The project consists of five main tables:

| Table | Description |
|---|---|
| HOSTEL | Stores hostel details |
| WARDEN | Stores warden information |
| ROOM | Stores room details |
| STUDENT | Stores student information |
| PAYMENT | Stores student payment records |

## 🔗 Database Relationships

1. **HOSTEL – WARDEN (1:M):** One hostel can have multiple wardens, but each warden is assigned to one hostel.
2. **HOSTEL – ROOM (1:M):** One hostel can contain multiple rooms.
3. **ROOM – STUDENT (1:M):** One room can accommodate multiple students.
4. **STUDENT – PAYMENT (1:M):** One student can make multiple payments.

## 🔑 Keys and Constraints

- Primary Keys (PK) ensure unique identification of records.
- Foreign Keys (FK) maintain relationships between tables.
- UNIQUE constraints prevent duplicate values.
- NOT NULL constraints ensure mandatory fields are populated.
- CHECK constraints validate data.

The ROOM table uses a composite primary key consisting of Hostel_Id and Room_No.

## ⚙️ Implementation

The project is implemented through the following steps:

1. Create the database tables.
2. Define primary and foreign key constraints.
3. Insert sample records into all tables.
4. Execute SQL queries to retrieve information.
5. Verify relationships and data integrity.

## 📊 SQL Concepts Implemented

- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- INNER JOIN
- LEFT JOIN
- Aggregate Functions (COUNT, SUM, MAX)
- Subqueries
- Primary and Foreign Key Constraints

## 💻 Sample SQL Query

**Find the total payment made by each student:**

```sql
SELECT S.Student_Name,
       SUM(P.Amount) AS Total_Payment
FROM STUDENT S
JOIN PAYMENT P
ON S.Student_Id = P.Student_Id
GROUP BY S.Student_Id, S.Student_Name;
```

## 🚀 How to Run the Project

1. Open [Oracle FreeSQL](https://freesql.com/).
2. Log in to your Oracle account.
3. Open a new SQL worksheet.
4. Execute the table creation SQL script.
5. Insert the sample records.
6. Execute the required SQL queries.
7. Verify the output in the Query Result section.

**Important:** Execute the scripts in the correct order to avoid foreign key constraint errors.

## 📁 Project Structure

```text
Hostel-Management-System/
│
├── README.md
│
├── SQL/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── queries.sql
│
├── Documentation/
│   └── Project_Report.pdf
│
└── Screenshots/
    ├── table_creation.png
    ├── inserted_records.png
    └── query_outputs.png
```

## 🔮 Future Enhancements

- Develop a web-based hostel management application.
- Add automatic room availability management.
- Implement student admission and checkout records.
- Generate payment receipts.
- Introduce administrator and warden login functionality.

## 🎓 Conclusion

The Hostel Management System demonstrates the practical implementation of DBMS concepts using Oracle SQL. It provides an organised approach to managing hostel information and demonstrates relational database design, constraints, joins and aggregate queries.

## 👥 Team Members
Nilansha Srivastava
Riya Dwivedi

## 📚 References

- [Oracle Documentation](https://docs.oracle.com/en/database/)
- [Oracle FreeSQL](https://freesql.com/)

---

**Project Type:** DBMS Mini Project  
**Domain:** Database Management System  
**Database:** Oracle SQL
