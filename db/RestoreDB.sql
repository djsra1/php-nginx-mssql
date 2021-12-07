USE master
go
select 'Restoring DB from backup'
go
RESTORE DATABASE [stego_as] FROM  DISK = N'/var/opt/mssql/data/stego_as.bak' WITH  FILE = 1,  MOVE N'stego_as' TO N'/var/opt/mssql/data/stego_as.mdf',  MOVE N'stego_as_log' TO N'/var/opt/mssql/data/stego_as_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
