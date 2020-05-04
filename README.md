
# MySQL Docker Container:

Create and run the container from MySql version 8.0.20 image, -d runs program in the background

-e option sets environment variable: root password to "new-password"

<code>docker run -p 3306:3306 --name mySql -e MYSQL_ROOT_PASSWORD=<new-password> -d mysql:8.0.20</code>

to acceess the bash of the container

> docker exec -ti mySql bash

login to mySql

> mysql -u root -p

enter password 

Run commands from "docker_assignment_table_creation" to create the database and tables within it

Run script "docker_assignment_insertion_statements.sql" to populate the tables

## Create a user for your spring boot service to communicate with your mysql service

The IP of your user host should correspond to the 'Gateway' address of your mySql docker container.<br/>  You can find this value by running the command 'docker inspect "MYSQL_CONTAINER_NAME"

From the mysql bash:

create user 'test1'@'GATEWAY_ADDRESS' identified by 'pass';
grant all on university.* to 'test1'@'GATEWAY_ADDRESS';

flush privileges;

You can now exit the mysql monitor ('quit;') and exit the bash (CTRL + D)
