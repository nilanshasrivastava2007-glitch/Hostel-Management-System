```sql
-- ============================================
-- HOSTEL MANAGEMENT SYSTEM
-- SQL QUERIES
-- ============================================

-- 1. Student details with hostel and room

SELECT S.Student_Id, S.Student_Name, S.Course, H.Hostel_Name,
       R.Room_No, R.Floor_No
FROM STUDENT S
JOIN HOSTEL H ON S.Hostel_Id = H.Hostel_Id
JOIN ROOM R ON S.Hostel_Id = R.Hostel_Id
           AND S.Room_No = R.Room_No;


-- 2. Hostel-wise wardens

SELECT H.Hostel_Name, W.Warden_Name, W.Phone_No
FROM HOSTEL H
JOIN WARDEN W ON H.Hostel_Id = W.Hostel_Id
ORDER BY H.Hostel_Id;


-- 3. Total payment by each student

SELECT S.Student_Name, SUM(P.Amount) AS Total_Payment
FROM STUDENT S
JOIN PAYMENT P ON S.Student_Id = P.Student_Id
GROUP BY S.Student_Id, S.Student_Name;


-- 4. Number of students in each hostel

SELECT H.Hostel_Name, COUNT(S.Student_Id) AS Total_Students
FROM HOSTEL H
LEFT JOIN STUDENT S ON H.Hostel_Id = S.Hostel_Id
GROUP BY H.Hostel_Id, H.Hostel_Name;


-- 5. Students with pending payments

SELECT DISTINCT S.Student_Id, S.Student_Name
FROM STUDENT S
JOIN PAYMENT P ON S.Student_Id = P.Student_Id
WHERE P.Payment_Status = 'Pending';


-- 6. Student(s) with highest CGPA

SELECT Student_Name, CGPA
FROM STUDENT
WHERE CGPA = (SELECT MAX(CGPA) FROM STUDENT);


-- 7. Room occupancy and available seats

SELECT R.Hostel_Id, R.Room_No, R.Seater,
       COUNT(S.Student_Id) AS Occupied_Seats,
       R.Seater - COUNT(S.Student_Id) AS Available_Seats
FROM ROOM R
LEFT JOIN STUDENT S ON R.Hostel_Id = S.Hostel_Id
                   AND R.Room_No = S.Room_No
GROUP BY R.Hostel_Id, R.Room_No, R.Seater;


-- 8. Total paid revenue

SELECT SUM(Amount) AS Total_Revenue
FROM PAYMENT
WHERE Payment_Status = 'Paid';


-- 9. AC rooms

SELECT *
FROM ROOM
WHERE AC_or_NonAC = 'AC';


-- 10. Students with CGPA above 8.5

SELECT Student_Name, CGPA
FROM STUDENT
WHERE CGPA > 8.5;

-- ============================================
-- END OF SQL QUERIES
-- ============================================
```
