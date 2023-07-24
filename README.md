# BlueATM 

BlueATM is a simple ATM application developed in NetBeans IDE using Java and MySQL. 

## Features

- User-friendly GUI for ATM operations.
- Secure user authentication using PIN.
- Account balance inquiry.
- Cash withdrawal with customizable denominations.
- Fast cash option for quick withdrawals with predefined amounts.
- Cash deposit functionality.
- Change PIN option for added security.
- Mini statement view to check recent transactions.

## Prerequisites

Before running the BlueATM application, ensure you have the following installed:

- Java Development Kit (JDK) 8 or higher
- MySQL Server (with appropriate privileges to create databases and tables)
- MySQL Connector/J (JDBC Driver) for Java

## Setup

1. Clone or download the BlueATM project from the repository.

2. Import the project into NetBeans IDE.

3. Create a MySQL database for the application. You can use the provided `DDL.sql`and `DML.sql` files in the **Mysql_workbench** directory to set up the database schema.

4. Update the database connection details in the `Database_atm.java` file located in the **Blue_ATM** directory to match your MySQL server settings.

5. Compile and run the `Splash.java` file to start the BlueATM application.

## Usage

1. Upon launching the application, the splash screen will be displayed, followed by the login screen.

2. Use a card number and PIN to log in for initial setup.

3. Once logged in, you can select various ATM operations from the main menu.

4. For transactions such as cash withdrawal or deposit, follow the on-screen instructions.

5. To change your PIN, navigate to the **Change PIN** option and follow the prompts.

6. To exit the application, select the **Exit** option from the main menu.

