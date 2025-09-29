# FeePay SQL Project

## Description
This project demonstrates **database transactions using SQL Server** for a simple fee payment system.  
It includes examples of **committed transactions** and **rollback** to simulate payment success and failure.

---

## Database: FeePay

### Table: Payments
| Column Name    | Data Type    | Description                           |
|----------------|-------------|---------------------------------------|
| payment_id     | INT         | Primary key, unique payment ID        |
| student_name   | VARCHAR(60) | Name of the student                    |
| amount         | DECIMAL(10,2)| Payment amount                        |
| status         | VARCHAR(20) | Payment status (`pending`/`success`)  |
| payment_date   | DATE        | Date of the payment                    |

---

## Features

1. **Transaction Commit**
   - Inserts multiple payment records as a single unit of work.
   - All records are saved only if the transaction is successful.

2. **Transaction Rollback**
   - Simulates a payment failure.
   - Any failed insert is rolled back to maintain database integrity.

---

## How to Run

1. Open **VS Code** and create a file `FeePay.sql`.  
2. Copy the SQL script into the file.  
3. Connect to **SQL Server** using the **MSSQL extension** in VS Code.  
4. Execute the script to:
   - Create the database and table.
   - Insert payment records with commit.
   - Simulate a failed payment with rollback.
5. Verify results using `SELECT * FROM Payments;`.

---

## Example Queries

- Insert payments with commit:

```sql
BEGIN TRANSACTION;
-- multiple inserts here
COMMIT TRANSACTION;
