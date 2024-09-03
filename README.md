# SQL-AIX
SQL-AIX is an AI assistant to help solve analytical questions by building SQL queries against the target database and execute.
Build SQL AI assistant using the power of `LLM` and `tools`.

### Database Setup 
Setup a MySQL database using db_setup.sql file in sql_setup folder. It should create three tables as below -

<img width="286" alt="Screenshot 2024-09-02 at 1 27 59 PM" src="https://github.com/user-attachments/assets/583055d3-4dd5-49b1-8827-4a729d68b0eb">

I've used the MySQL Docker image to spin up the SQL instance locally. You can find the latest Docker image [here](https://hub.docker.com/_/mysql/).

>```docker pull mysql```

### Azure OpenAI setup
1. Download and install `Azure CLI` - [Azure Cli](https://learn.microsoft.com/en-us/cli/azure/)
2. Log in to Azure Cli using terminal
   
   ```shell
   az login
   ```
   You will be redirected to the browser to login, once logged in you will come back to terminal. Select a subscription and tenant from availbale list of subscriptions.
   
4. Create a resource group to use for this project
   
   ```shell
   az group create --name RG_OPENAI_TEST --location eastus2
   ```
   
5. Create an Azure OpenAI account, use the previously created `Resource Group`
   
   ```
   az cognitiveservices account create --name OpenAIProject0924 \
   --resource-group RG_OPENAI_TEST --kind OpenAI --sku S0 --location eastus2
   ```
   
6. Create GPT-4o deployment
   
   ```shell
   az cognitiveservices account deployment create --resource-group RG_OPENAI_TEST \
   --name OpenAIProject0924 --deployment-name gpt-40 --model-version 2024-05-13 \
   --model-format OpenAI --sku-capacity 1 --sku-name Standard
   ```
   
7. Find the model endpoint and keys
   ```shell
   az cognitiveservices account keys list \
   --resource-group RG_OPENAI_TEST --name OpenAIProject0924
   ```

   ```shell
   az cognitiveservices account show \
   --resource-group RG_OPENAI_TEST --name OpenAIProject0924
   ```

Replace with this `endpoint` and `keys` in the code.


### Test the code

Test using simple to medium comlex question again the database. Prompt might need some more fine tunning to achive desired results. Ultimately functionality can be extended by introducing more tools and providing it to LLM.

Here are the some examples tested agianst `GPT-4o` model.

`Find top 3 products sold`

<img width="870" alt="Screenshot 2024-09-02 at 11 17 31 AM" src="https://github.com/user-attachments/assets/a0ef7c49-00b3-453f-8986-f195379aea0c">


`Find sales by each month`

<img width="869" alt="Screenshot 2024-09-02 at 11 18 36 AM" src="https://github.com/user-attachments/assets/76101249-a88e-487b-89ad-ee53fb1c0d45">


`Find sales by each month and state, then pivot result for states`

<img width="870" alt="Screenshot 2024-09-02 at 11 18 20 AM" src="https://github.com/user-attachments/assets/7f099e09-9b82-4ba1-af73-f5a443385e9c">
