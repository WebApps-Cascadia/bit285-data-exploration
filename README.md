# BIT 285 - Data Exploration Exercise Himakar 
## Part 1 -  DataSource.aspx
Review the Source code for the page and the use of the ArrayList as a data source
Run the website and view the page.
Experiment with Declarative Programming by working in the Design View. Add a new DropDownList called ddlCategories
Use the pop-up Tasks menu to "Choose a Data Source" as a new Access Database
Step throught the "Configure Data Source" wizard to select all the rows from the Categories table in grocertogo.mdb
Select the CategoryName field to display, and the CategoryID field as the value of the dropdownlist.
## Part 2- DataSourceMDB.aspx
Review the Source code for the page 
Run the ASP.NET page
Experiment with modifying the scripts, the SQL statements and the GridView control
Explore the API information about DataSet and GridView classes.
## Part 3 - Show Customers
Create a new web page called "Customers.aspx"
Add a GridView object to the page. From the Design view, choose a new datasource for the GridView
Call the new SQL Datasource "GrocerCustomers", link it to the .mdb file in the App_Data folder, and choose to display the FirstName, LastName and City from the Customers table (order by City)
Run the ASP.NET page, compare the code and the result to the first DataSourceMDB.aspx page - be prepared to discuss the differences in class.
## Part 4 - DataSourceXML.aspx
Open the page and artists.xml and review the code. Try to determine what it will display when run.
Run the page and compare your prediction to the actual page.
## Part 5 - Add Artists
Modify the DataSourceXML.aspx page.
Add a button object to the page, double click it from the design view to access its event handler
Review the ASP.NET documentation on working with DataSets and Adding a new row to a DataTable. Use the DataSet object "Artists" to create a new DataRow for the DataTable that holds the xml data. (hint: you must first get the DataTable object  from "soup", and then create a DataRow object based on the DataTable)
Modify the new DataRow to represent your favorite artists name, nationality, movement and birthdate (hardcode these at first)
Add the new DataRow to the DataTable in the DataSet
Rebind the GridView, to refresh its display on the webpage