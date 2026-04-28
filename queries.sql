SELECT*FROM Rooms;
SELECT*FROM Tenants;
SELECT*FROM Payments;
SELECT*FROM Complaints;


ALTER TABLE Rooms
RENAME COLUMN room_number To room_numbers;

ALTER TABLE Tenants
RENAME COLUMN join_date to join_dates;

UPDATE Rooms
SET rent = 8000
WHERE room_id = 3
SELECT*FROM Rooms ORDER BY room_id ASC;

SELECT*FROM Rooms
WHERE status = 'Available';

SELECT*fROM Payments
WHERE status = 'Paid';

--join 
SELECT t.name, t.phone, r.room_numbers
FROM Tenants t
JOIN Rooms r ON t.room_id = r.room_id;


SELECT t.name, p.amount, p.payment_date
FROM Tenants t
JOIN Payment p ON t.tenant_id = p.tenant_id;

--aggreagate 
SELECT tenant_id, SUM(amount)AS
total_paid
FROM Payments
GROUP BY tenant_id;

SELECT SUM(amount) AS total_revenue
FROM payments;

SELECT AVG(rent)AS avg_rent
FROM Rooms;

SELECT status, COUNT(*)
FROM complaints
GROUP BY status;

