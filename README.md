# E-commerce-Web-Application-19001700

Step 1:
Open the SQL query document in SQL Server then connect to your local machines server and run the SQL code in segmented parts from top to bottom. (It is important that all tables are created, or the program will not function.)
Step 2:
Open the Web application in Microsoft Visual Studio 2019, the first thing you need to do once the web application is opened in Visual Studio is fix the connection string so that it points to the correct place where your newly created database is. To do this in solution explorer navigate to Web.config, the update the connection string (connectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Ecommerce_Web_App_DB;Integrated Security=True") so that the Data Source is set to the local server that contains the database on your computer.
Step 3:
Run the program and create either an admin account or user account, creating a user account is straight forward but to create an admin account you will need to ensure you use the phrase “admin ” (the space is important) followed by the rest of the name in the name text box on the register page. For example, a user with the name “admin Joe” will be given the role admin and a username “Joe” will be given a general user role.
