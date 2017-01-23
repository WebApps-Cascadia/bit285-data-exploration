# BIT 285 - Data Exploration Exercise
## Part 1_DataSourceArrayList.aspx
Review the Source code for the page and the use of the ArrayList as a data source
Run the website and view the page.
Add a Button to the ASPX; name it btnMoreItems.
Double-click the Button in the design view to create an click event handler stub.
Write the code to add three more section items to the list and re-sort the Array.
Use the Databind() method to refresh the DropDownList display.
## Part 2_DataSourceMDB.aspx
Review the Source code for the page 
Run the ASP.NET page
Add a new GridView called gvCustomers to the ASPX.
In the PageLoad script, create a new OleDbDataAdapter object to fill the Grocer DataSet with a new table called "Customers". 
Attach this to your gvCustomers as its Datasource and bind it.
## Part 3_DataSourceMDB.aspx
Create a new web page called "Part3_DataSourceMDB.aspx". Work only in the Design view on this page.
Add a GridView object to the page called "gvCustomers".
Add a DataSource object to the page called "dsCustomers".
Create a new connection for the DataSource to connect to the .mdb file in the App_Data folder
Configure the dsCustomers DataSource to display the FirstName, LastName and City from the Customers table (Order By City)
Configure the gvCustomers GridView to use dsCustomers as its DataSource
Run the ASP.NET page, compare the code and the result to the first Part2_DataSourceMDB.aspx page - be prepared to discuss the differences in class.
## Part 4_DataSourceXML.aspx
Open the page and artists.xml and review the code. Try to determine what it will display when run. Run the page and compare your prediction to the actual page.
Add a button object to the page, double click it from the design view to access its button click event handler.
Review the ASP.NET documentation on working with DataSets and Adding a new row to a DataTable. Pay attention to the example code as well.
Use the DataSet object "Artists" to create a new DataRow object for the DataTable that holds the xml data. (hint: you must first get the first DataTable object  in the DataSet "Artists", use the DataTable you get to create a NewRow() based on the DataTable)
Modify the new DataRow to represent your favorite artist, by assigning the row cells the name, nationality, movement and birthdate as strings values (hardcode these at first, as a BONUS you can get them from the TextBoxes)
Add the new DataRow to the DataTable in the DataSet using your DataTable's Rows.Add() method.
Rebind the GridView, to refresh its display on the webpage
## (BONUS) Allow for user input and Write to the XML file
Add TextBox form elements to gather user data that you use to update the artist.xml file. Modify the DataSource for the GridView and redisplay after each addition.
Write the DataSet back out to the artist.xml file using the DataSet object's WriteXml() method. You will need to provide a file path in addition to the file name, string FilePath = Server.MapPath("~/App_Data/")
## Submission
Submit a link to your updated Github repository and create a pull request.