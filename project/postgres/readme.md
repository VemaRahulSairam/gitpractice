#Build the image

docker build -t my-postgres-tagged-imageName .

#Run the image

docker run -d --name postgresContainerName -p 5432:5432 -e POSTGRES_PASSWORD=pass123 postgresImageName

#Type out the command and specify the executing Postgres container name to open the shell within it:

docker exec -it <container-name/ID> bash

#Refer: https://www.commandprompt.com/education/how-to-create-a-postgresql-database-in-docker/