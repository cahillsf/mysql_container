
# MySQL Docker Container:

Create and run the container from MySql version 8.0.20 image, -d runs program in the background

-e option sets environment variable: root password to "new-password"

<code>docker run -p 3306:3306 --name mySql -e MYSQL_ROOT_PASSWORD="new-password" -d mysql:8.0.20</code>

to get a bash shell in the container

<code>docker exec -ti mySql bash</code>

login to mySql

<code>mysql -u root -p</code>

enter password 

Run commands from "docker_assignment_table_creation" to create the database and tables within it

Run script "docker_assignment_insertion_statements.sql" to populate the tables

## Create a user for your spring boot service to communicate with your mysql service

The IP of your user host should correspond to the 'Gateway' address of your mySql docker container.<br/>  You can find this value by running the command:

<code>docker inspect mySql</code>

From the mysql bash:

<code>create user 'test1'@'GATEWAY_ADDRESS' identified by 'pass';</code>

<code>grant all on university.* to 'test1'@'GATEWAY_ADDRESS';</code>

<code>flush privileges;</code>

You can now exit the mysql monitor ('quit;') and exit the bash (CTRL + D)
