rem create empty files to fix bug with RESTORE DATABASE instruction in 
rem images mcr.microsoft.com/mssql/server:2019-latest, 2017-latest
copy nul .\db\stego_as.mdf
copy nul .\db\stego_as_log.ldf
docker exec -it stEg-mssql /opt/mssql-tools/bin/sqlcmd -S sqlserver -U sa -P mssql_stego2021 -i /var/opt/mssql/data/RestoreDB.sql