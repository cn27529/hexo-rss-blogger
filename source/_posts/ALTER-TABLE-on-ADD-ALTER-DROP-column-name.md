---
title: 'ALTER TABLE on ADD, ALTER, DROP column_name'
tags:
  - Database
  - MS-SQL
excerpt: >-
  常用的表格欄位新增異動語法 MS SQL <br /><pre class="prettyprint">--加欄位ADD column<br />ALTER
  TABLE my_table_name ADD my_column_name nvarchar(50)<br /><br />--異動資料類型ALTER
  COLUMN<br />ALTER TABLE my_table_name ALTER COLUMN my_column_name
  nvarchar(50)<br /><br />--移除欄位DROP COLUMN<br />ALTER TABLE my_table_name DROP
  COLUMN my_column_name<br /><br /></pre><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2016-03-25 10:52:00
---

常用的表格欄位新增異動語法 MS SQL  

\--加欄位ADD column  
ALTER TABLE my\_table\_name ADD my\_column\_name nvarchar(50)  
  
\--異動資料類型ALTER COLUMN  
ALTER TABLE my\_table\_name ALTER COLUMN my\_column\_name nvarchar(50)  
  
\--移除欄位DROP COLUMN  
ALTER TABLE my\_table\_name DROP COLUMN my\_column\_name  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
