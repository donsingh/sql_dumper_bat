set "MMDDYY=%DATE:~4,2%%DATE:~7,2%%DATE:~12,2%"
set "dumpNAME=C:\backups\qamis_%MMDDYY%_sqldump"

"C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump.exe" --user=MYSQLUSER --password=MYSQLPASS --add-drop-table --add-drop-database --databases uscqamis --allow-keywords > "%dumpNAME%.sql"

"C:\Program Files\7-Zip\7z.exe" a -tzip "%dumpNAME%.zip" "%dumpNAME%.sql"
