USE master
go
CREATE DATABASE [YOUR_DB_NAME] ON 
( FILENAME = N'/var/opt/mssql/data/YOUR_MDF_FILE_NAME.mdf' )
 FOR ATTACH
go
