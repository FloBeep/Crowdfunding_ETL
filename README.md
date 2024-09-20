# Crowdfunding_ETL

### Summary

In this ETL (Extract, Transform, Load) mini-project, we focused on cleaning and transforming a dataset imported from two Excel files. We created a column containing JSON-like strings, which held information such as contact_id, name, and email.

### Objective

Our goal was to extract contact information from a complex Excel file and transform it into a clean, simplified format. To achieve this, we used Pandas for data manipulation. Once the data was cleaned, it was exported to a CSV file, making it ready to be setup in a sql database for further analysis.

### Data Sources

* crowdfunding.xlsx
* contacts.xlsx

### Tools and Technologies

* Python
* Pandas (we picked Option 1)
* Jupyter Notebook
* Excel
* PgAdmin
* Sql

### Key steps

* **Extract**
  The Excel files contained contact information that we merged and loaded into a Pandas DataFrame. This step was essential, as it laid the groundwork for all future transformations.
* **Transform**
  Using Pandas, we parsed JSON-like strings from one of our newly created DataFrame’s columns, extracting key details such as contact_id, name, and email. We then split the name field into first_name and last_name, reordered the columns, and adjusted data types to facilitate easier analysis. We then exported the cleaned and reorganized data into new CSV files.
* **Load**
  Once the transformation was complete, we created an ERD file and generated a sql schema and database where we imported the data, making it accessible for further analysis.

### Collaborators

* Ahmar Siawash
* Florian Caffier
