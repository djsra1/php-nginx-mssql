# php-nginx-mssql
Dockers and docker-compose for PHP+MS SQL Server WEB-development on Windows.

For all functionality your have to create the "backend" network

The similar decision for Linux is here https://github.com/Nebezcoda/php_nginx_mssql

create the DB folder for you database files
put WEB-project to WWW
put .mdf, .ndf, .ldf or .bak to DB

start containers with docker-compose.yml
check the connection with localhost:8080

Attach your DB-files to SQLServer manually or 
by BAT-files (SA_PASSWORD inside - fit it). DB and files names must be fit in /DB/.sql
