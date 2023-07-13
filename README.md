# Covid.Data.ExplorationAndReport.SQL.PowerBI

### What is Data Exploration?
Data exploration is the first step of data analysis used to explore and visualize data to uncover insights from the start or identify areas or patterns to dig into more. Using interactive dashboards and point-and-click data exploration, users can better understand the bigger picture and get to insights faster.

### Why is Data Exploration Important?
Starting with data exploration helps users to make better decisions on where to dig deeper into the data and to take a broad understanding of the business when asking more detailed questions later. With a user-friendly interface, anyone across an organization can familiarize themselves with the data, discover patterns, and generate thoughtful questions that may spur on deeper, valuable analysis.
Data exploration and visual analytics tools build understanding, empowering users to explore data in any visualization. This approach speeds up time to answers and deepens users’ understanding by covering more ground in less time. Data exploration is important for this reason because it democratizes access to data and provides governed self-service analytics. Furthermore, businesses can accelerate data exploration by provisioning and delivering data through visual data marts that are easy to explore and use.

### What are the Main Use Cases for Data Exploration?
Data exploration can help businesses explore large amounts of data quickly to better understand next steps in terms of further analysis. This gives the business a more manageable starting point and a way to target areas of interest. In most cases, data exploration involves using data visualizations to examine the data at a high level. By taking this high-level approach, businesses can determine which data is most important and which may distort the analysis and therefore should be removed. Data exploration can also be helpful in decreasing time spent on less valuable analysis by selecting the right path forward from the start.

### My Project Work Step by Step.
1. **Import Data:** Download the Dataset from kaggle as excel workbook file. Import the file into SQL database via MS SQL Import data wizard. The dataset excel file is present in Dataset folder.
2. **Data Exploration:** After import the data clean and transform the data. In cleaning process removed some unused column, removed duplicate values. After cleaning transform the data as change some data type, create some new columns by calculation some values Like Total Covid Cases,Total Vaccinated,TotalDeathes,Percentage Vaccinated,Death Percentage etc.. After calculating all the values create views to import in Power BI and Visualize them. All SQL Query are in SQL_CODE folder.
3. **Data Visualization:** To visualize the data connect the SQL database to the Power BI and import all the views. After importing all the views create data model in Power BI Data Model View Tab. After creating all the relationship beetween all the views I create the Visual report of the data. Power BI report file is in the Power_BI_Report folder.
   * Data Model:
![image](https://github.com/arijeet-pal13/Covid.Data.ExplorationAndReport.SQL.PowerBI/assets/84266230/3c493a6a-f958-400f-9130-6115df07fb49)

   * Visual Report:
![image](https://github.com/arijeet-pal13/Covid.Data.ExplorationAndReport.SQL.PowerBI/assets/84266230/b9d12f78-02bf-4917-a719-101299095b2f)
 
