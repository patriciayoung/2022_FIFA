# Project 3: 2022_FIFA
## Group Members: Dariel Ibanez, Mia Serrano-Salow, Nelson Velasco, Patricia Young

### Project Overview:
We are a team of sports data engineers researching and uploading player data from the 2022 FIFA World Cup into a database for soccer scouts to use to determine the best players to rectruit. We have determined which players are the best based on their skills and performance in the 2022 FIFA World Cup. We have defined "best" by analyzing the relationships between players' number of goals, touches, assists, and passes, just to name a few. We have chosen to work in the sports field because it was a topic we all found interesting. 

### Questions:
1. What factors should determine what makes players the "best"?
2. Who are the players that outperformed their market value during the FIFA World Cup?
3. Who had the most number of goals out of all the players in the the FIFA World Cup?
4. Which players had the most touches per the amount of minutes per games?

### Applications:
For this project, we used Jupyter Notebook to clean our data and convert it into csv files. We used polars (as our different library) and pandas in Jupyter Notebook to clean the data. We used the SQL database PostgreSQL in the management tool pgAdmin to store the data. Quickdatabasediagrams.com was used to create the ERD. 

### Why did we use them?
We chose to use Jupyter Notebook to clean our data instead of VSCode because we believe Jupyter Notebook is more user friendly and our group was most comfortable with it. We chose to use the SQL database PostgreSQL instead of a NoSQL database because a NoSQL database is better suited for unstructured data like documents or JSON. Also, SQL databases are table-based, while NoSQL databases are key-value based and best for graphs.

### Ethical Considerations:
While working on this project, our team made a number of efforts to maintain the integrity of the data and remain compliant with all laws and regulations. We ensured that all of the data we extracted from Kaggle was compliant with data privacy regulations. Since the data was extracted from Kaggle, a community platform that contains data free for public use, we obtained consent by agreeing to the site's terms and conditions. We maintained transparency in the ETL process by documenting all of the steps we took, and made this information accessible to relevant stakeholders. Lastly, we communicated the purpose of the data extraction and how we intend to use the data. 

### Who did what?
Dariel Ibanez: 
Mia Serrano-Salow: Imported SQL and created ERD using quickdatabasediagrams.com; README write up
Patricia Young:
Nelson Velasco:

### Location of Data in Github:
The name of the repository is 2022_FIFA. The original csv files with the raw data can be found under the "fifa worldcup data" folder. The csv files we created from that data can be found under "txt encoding to csv files". Our final cleaning process in Jupyter Notebook can be found under "FIFA World Cup Value and Overall Merge.ipynb" and the cleaned csv file can be found under "FIFA_stats_cleaned.csv". Individual ETL work as well as our progress checks can be found under "2022_FIFA_WC_Cleanup.ipynb", "2022_FIFA_cleaned.ipynb", and "2022_FIFA_cleaned_DN.ipynb". The sql data can be found under "player stats and position stats.sql" and the ERD screenshot and its code can be found under "QuickDBD-FIFA ERD (1).png" and "QuickDBD-FIFA ERD.sql".

### Source:
https://www.kaggle.com/datasets/swaptr/fifa-world-cup-2022-player-data
