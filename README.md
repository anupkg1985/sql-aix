# SQL-AIX
SQL-AIX is an AI assistant to help solve analytical questions by building SQL queries against the target database and execute.

### Database Setup 
Setup a MySQL database using db_setup.sql file in sql_setup folder. It should create three tables as below -

<img width="286" alt="Screenshot 2024-09-02 at 1 27 59 PM" src="https://github.com/user-attachments/assets/583055d3-4dd5-49b1-8827-4a729d68b0eb">

I've used the MySQL Docker image to spin up the SQL instance locally. You can find the latest Docker image [here](https://hub.docker.com/_/mysql/).

>```docker pull mysql```

### Azure OpenAI setup
steps coming soon

### Test

Test using simple to medium comlex question again the database. Prompt might need some more fine tunning to achive desired results. Ultimately functionality can be extended by introducing more tools and providing it to LLM.

Here are the some examples tested agianst `GPT-4o` model.

`Find top 3 products sold`

<img width="870" alt="Screenshot 2024-09-02 at 11 17 31 AM" src="https://github.com/user-attachments/assets/a0ef7c49-00b3-453f-8986-f195379aea0c">


`Find sales by each month`

<img width="869" alt="Screenshot 2024-09-02 at 11 18 36 AM" src="https://github.com/user-attachments/assets/76101249-a88e-487b-89ad-ee53fb1c0d45">


`Find sales by each month and state, then pivot result for states`

<img width="870" alt="Screenshot 2024-09-02 at 11 18 20 AM" src="https://github.com/user-attachments/assets/7f099e09-9b82-4ba1-af73-f5a443385e9c">
