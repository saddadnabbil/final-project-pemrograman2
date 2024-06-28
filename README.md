# POS System Final Project

## Overview

This project is a Point of Sale (POS) system developed as a final project for Pemrograman 2. The system includes various modules to handle product management, customer management, income.

## Entity Relationship Diagram (ERD)

### Tables and Relationships

1. **tblproduct**

   - Stores product data.
   - Key columns: `prod_id`, `product_name`, `bar_code`, `price`, `quantity`, `mark_up`, `exp_date`, `date`, `time`.

2. **tblremove**

   - Stores data of removed products.
   - Key columns: `remove_id`, `remove_by`, `product_id`, `product_name`, `quantity`, `unit_price`, `date`, `time`.
   - Relationship: `product_id` links to `prod_id` in `tblproduct`.

3. **tblcostumer**

   - Stores customer data.
   - Key columns: `cid`, `fname`, `lname`, `contact`, `sex`, `address`, `time`, `date`, `email`.

4. **tblinvoice**

   - Stores invoice data.
   - Key columns: `invoice_id`, `user`, `costumer`, `paid_amount`, `status`, `balance`, `sub_total`, `total_quantity`, `transaction_no`, `date`, `time`.
   - Relationships: `user` and `costumer` link to related entities in other tables.

5. **tblselling**

   - Stores product income data.
   - Key columns: `selling_id`, `product_id`, `product_name`, `quantity`, `total_price`, `unit_price`, `profit`, `date`, `time`.
   - Relationship: `product_id` links to `prod_id` in `tblproduct`.

6. **tbllog**

   - Stores user log data.
   - Key columns: `Logid`, `Username`, `Password`, `type`.

7. **tblnum**
   - Stores numerical data used in the system.
   - Key columns: `numid`, `value`.

## Installation

To set up and run the project, follow these steps:

1. **Download and Extract the Project Folder**

   - Download the project folder from the provided link or repository.
   - Extract the folder to your desired location.

2. **Open the Project in NetBeans**

   - Open NetBeans IDE.
   - Click on `File` > `Open Project`.
   - Navigate to the extracted folder and select it.
   - The project will open in NetBeans.

3. **Set Up the Database**

   - Open your database management tool (e.g., phpMyAdmin).
   - Create a new database named `pos_db`.
   - Import the SQL file located in the project folder (`pos_db.sql`) into the `pos_db` database.

4. **Run the Database**

   - Ensure that your database server (e.g., MySQL) is running.
   - Verify that the database `pos_db` has been successfully imported and is active.

5. **Run the Project in NetBeans**
   - Return to NetBeans.
   - Right-click on the project in the `Projects` pane and select `Run`.
   - The project will compile and run.
   - Log in using the following credentials:
     - **Username:** `admin`
     - **Password:** `admin`

## Usage

After logging in, you can navigate through various modules of the POS system:

- **Point of Sales:** Process transactions.
- **Product Management:** Add, update, and remove products.
- **Customer Management:** Manage customer information.
- **Income:** Process income transactions and generate invoices.

## Support

If you encounter any issues or have questions, please contact the project supervisor or refer to the documentation provided in the project folder.

## Contributors

- Nabil (Developer)

---

Thank you for using our POS System!
