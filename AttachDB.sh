echo "дошли до докера"
docker exec -it stEg-mssql /opt/mssql-tools/bin/sqlcmd -S sqlserver -U sa -P mssql_stego2021 -i /var/opt/mssql/data/AttachDB.sql