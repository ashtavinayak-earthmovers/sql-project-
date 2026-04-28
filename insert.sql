

INSERT INTO Rooms(room_number,capacity,rent,status)
VALUES(101,2,5000, 'Available'),
	   (102,1,4000, 'Occupied'),
	   (103,3,7000, 'Available'),
	   (104,2,5500, 'Occupied'),
	   (105,1,3500,  'Available');
	   SELECT*FROM Rooms;

INSERT INTO Tenants (name, phone, room_id) VALUES
('Raj', '9876543210', 2),
('Priya', '9123456780', 4),
('Amit', '9012345678', 2),
('Sneha', '9988776655', 4);
SELECT*FROM Tenants;

INSERT INTO Payments (tenant_id, amount, payment_date, status) VALUES
(1, 5000, '2026-04-01', 'Paid'),
(2, 5500, NULL, 'Pending'),
(3, 5000, '2026-04-02', 'Paid'),
(4, 5500, NULL, 'Pending');
SELECT*FROM Payments;


INSERT INTO Complaints (tenant_id, description, status) VALUES
(1, 'Water issue in bathroom', 'Open'),
(2, 'Fan not working', 'Resolved'),
(3, 'WiFi not working', 'Open'),
(4, 'Light problem', 'Resolved');

SELECT*FROM Complaints;





