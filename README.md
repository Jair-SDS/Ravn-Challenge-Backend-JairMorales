# Ravn-Challenge-Backend-JairMorales

Challenge proyect solution for backend developer position.

Created by Jair Morales

1. SQL : Using Postgres 13.4

  - Into DB folder you should find the file initial_data.sql to load data into the DB.

  - The solution of Challenge 1 is developed in challenge_part_1.sql file.


2. API Endpoint : Using NodeJS - Express - Sequalize

  - Create a .env file into the api/ folder with the follow information:
       
      PORT=<3000>
      DB_HOST=<localhost>
      DB_NAME=<RavnTest_db>
      DB_USERNAME=<postgres>
      DB_PASSWORD=<postgres>
      DB_PORT=<5432>

  - Change the values <> to match the DB info you are using and the port u will use to render the output of the api.

  
3. API Performance : Not implemented, but i plan to use caching to keep the output data in case page relod with teh ssame url query to improve performance (avoid ask to DB if already hace the data).
  
4. Build Docker Container and steps to deploy: Not finished
  
  - Docker file to create a Node image with the API Endpoint
  
  - Docker compose yaml file to make a instance of our database and the API endpoint. 
  
