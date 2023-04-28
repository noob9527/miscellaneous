# Case Sensitive

### Case Sensitive Collation
> According to MySQL Manual http://dev.mysql.com/doc/refman/5.0/en/charset-mysql.html you should be able to set collation to _cs for case sensitivity. You can get a list of _cs collations by executing SHOW COLLATION WHERE COLLATION LIKE  "%_cs" query  
Apparently there are no utf8_*_cs in MySQL (yet). If you need case sensitive collation for utf8 fields, you should use utf8_bin. This will mess up ORDER BY, but this can be fixed by ORDER BY column COLLATE utf8_general_ci

### TL:DR
```MySQL
SHOW COLLATION WHERE COLLATION LIKE  "%_cs";
SHOW COLLATION WHERE COLLATION LIKE  "utf8mb4%";

ALTER TABLE <table_name> MODIFY <column_name> VARCHAR(<length>) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
```

### references
- https://stackoverflow.com/questions/4558707/case-sensitive-collation-in-mysql
- https://stackoverflow.com/questions/1294117/how-to-change-collation-of-database-table-column