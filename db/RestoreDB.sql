USE master
go
select 'Restoring DB from backup'
go
RESTORE DATABASE [YOUR_DB_NAME] FROM  DISK = N'/var/opt/mssql/data/YOUR_BACKUP_NAME.bak' WITH  FILE = 1,  MOVE N'YOUR_MDF_FILE_NAME' TO N'/var/opt/mssql/data/YOUR_MDF_FILE_NAME.mdf',  MOVE N'YOUR_LDF_FILE_NAME' TO N'/var/opt/mssql/data/YOUR_LDF_FILE_NAME.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
