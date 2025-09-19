-- =============================================
-- Giltech Online Cyber - Database Optimization
-- Assignment: Indexing, Security & User Control
-- =============================================

-- Question 1 🗑️
-- Giltech Online Cyber: Removing an old index on customer phone numbers
-- This ensures we can restructure and create more efficient indexes later.
USE salesDB;

DROP INDEX IdxPhone ON customers;


-- Question 2 👤
-- Giltech Online Cyber: Creating a restricted database user
-- Create a user 'bob' who will handle daily sales entry inside the cyber system.
-- Access limited only to localhost for security reasons.
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';


-- Question 3 🔑
-- Giltech Online Cyber: Assigning privileges
-- Give 'bob' INSERT permissions on salesDB so he can add new sales transactions
-- but cannot read or delete sensitive records.
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';


-- Question 4 🔐
-- Giltech Online Cyber: Updating user credentials
-- Change password for 'bob' after security policy enforcement.
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
        
