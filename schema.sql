CREATE TABLE IF NOT EXISTS Rooms(
room_id SERIAL PRIMARY KEY,
room_number INT UNIQUE NOT NULL,
capacity INT NOT NULL,
rent DECIMAL(10,2) NOT NULL,
status VARCHAR(20) DEFAULT 'available'
);

CREATE TABLE IF NOT EXISTS Tenants(
tenant_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
phone VARCHAR(15) UNIQUE,
room_id INT REFERENCES ROOMS(room_id),
join_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS Payments(
payment_id SERIAL PRIMARY KEY,
tenant_id INT REFERENCES Tenants(tenant_id),
amount DECIMAL(10,2) NOT NULL,
payment_date DATE,
status VARCHAR(20) DEFAULT 'Pending'
);

CREATE TABLE Complaints (
complaint_id SERIAL PRIMARY KEY,
tenant_id INT REFERENCES Tenants(tenant_id),
description TEXT,
status VARCHAR(20) DEFAULT 'Open'
);







	   