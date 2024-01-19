# Project 3: 2022_FIFA
## Group Members: Dariel Ibanez, Mia Serrano-Salow, Nelson Velasco, Patricia Young

### Project Overview:
We are a team of sports data engineers researching and uploading player data from the 2022 FIFA World Cup into a database for soccer scouts to use to determine the best players to rectruit. We have determined which players are the best based on their skills and performance in the 2022 FIFA World Cup. We have defined "best" by analyzing the relationships between players' number of goals, touches, assists, and passes, just to name a few. We have chosen to work in the sports field because it was a topic we all found interesting. 


### Questions:
1. Who are the players that outperformed their market value during the FIFA World Cup?
2. Who had the most number of goals out of all the players in the the FIFA World Cup?
3. Which players had the most touches per the amount of minutes per games?

### Applications:
For this project, we used Jupyter Notebook to clean our data and convert it into csv files. Dariel used polars and pandas in the Jupyter Notebook to clean the data. We used the SQL database PostgreSQL in the management tool pgAdmin to store the data.

### Why did we use them?
We chose to use Jupyter Notebook to clean our data instead of VSCode because we believe Jupyter Notebook is more user friendly and our group was most comfortable with it. We chose to use the SQL database PostgreSQL instead of a NoSQL database because a NoSQL database is better suited for unstructured data like documents or JSON. Also, SQL databases are table-based, while NoSQL databases are key-value based and best for graphs.

### Ethical Considerations:
While working on this project, our team made a number of efforts to maintain the integrity of the data and remain compliant with all laws and regulations. We ensured that all of the data we extracted from Kaggle was compliant with data privacy regulations. Since the data was extracted from Kaggle, a community platform that contains data free for public use, we obtained consent by agreeing to the site's terms and conditions. We maintained transparency in the ETL process by documenting all of the steps we took, and made this information accessible to relevant stakeholders. Lastly, we communicated the purpose of the data extraction and how we intend to use the data. 

### Location of Data in Github:
The name of the repository is 2022_FIFA. The original csv files with the raw data can be found under the "fifa worldcup data" folder. Our cleaning process in Jupyter Notebook can be found under "2022_FIFA_cleaned.ipynb" and the cleaned csv file can be found under "FIFA_stats_cleaned.csv". The data in the sql file can be found under "player stats and position stats.sql" and the ERD and its code can be found under "QuickDBD-FIFA ERD (1).png" and "QuickDBD-FIFA ERD.sql".

### Source:
https://www.kaggle.com/datasets/swaptr/fifa-world-cup-2022-player-data
