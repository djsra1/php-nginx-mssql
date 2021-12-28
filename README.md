# php-nginx-mssql
Dockers and docker-compose for PHP+MS SQL Server WEB-development on CentOS 8.

For all functionality your have to create the "backend" network

create the DB folder for you database files
put WEB-project to WWW
put .mdf, .ndf, .ldf or .bak to DB

start containers with docker-compose.yml
check the connection with localhost:8080

Attach your DB-files to SQLServer manually or 
by sh-files (SA_PASSWORD inside - fit it). DB and files names must be fit in /DB/.sql

You cant restore DB automatically (https://stackoverflow.com/questions/22245808/sql-server-error-logical-file-is-not-part-of-database-use-restore-fileliston).
1. You have to know file names with FILELIST
2. Then try RESTORE with MOVE (look db/RestoreDB.sql)

Also it might you must implement
1. sudo chmod 777 www
2. sudo chown admin:admin www
