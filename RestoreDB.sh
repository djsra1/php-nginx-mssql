# to fix bug with RESTORE DATABASE instruction in 
# images mcr.microsoft.com/mssql/server:2019-latest, 2017-latest
# https://stackoverflow.com/questions/22245808/sql-server-error-logical-file-is-not-part-of-database-use-restore-fileliston
docker exec -it stEg-mssql /opt/mssql-tools/bin/sqlcmd -S sqlserver -U sa -P mssql_stego2021 -i /var/opt/mssql/data/RestoreDB.sql