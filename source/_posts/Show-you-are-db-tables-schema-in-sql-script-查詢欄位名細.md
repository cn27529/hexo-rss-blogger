---
title: Show you are db tables schema in sql script (查詢欄位名細)
tags:
  - MS-SQL
excerpt: >-
  有時候我們需要撰寫資料腳本的文件, 或者是客戶會要求你給一份目前資料庫的明細文件。一<br />般的說明文件如 : 表格名, 欄名, 欄類型, 長度,
  是否NULL, 欄位描述...等等。在這個時候如果表<br />格多時, 可能會打到死吧!
  由其是用Word文件...這時候如果有個查欄位明細的腳本不知該有多好<br />。<br />以下就是了<br /><br /><div
  class="MsoNormal" style="mso-layout-grid-align: none; text-autospace:
  none;"><span lang="EN-US" style="color: green; font-family: 'Courier New';
  font-size: 10pt;">--</span><span style="color: green; font-family: 新細明體;
  font-size: 10pt;">查詢欄位名細</span><span lang="EN-US" style="color: green;
  font-family: 'Courier New'; font-size: 10pt;">.sql<o:p></o:p></span></div><div
  class="MsoNormal" style="mso-layout-grid-align: none; text-autospace:
  none;"><span lang="EN-US" style="color: blue; font-family: 'Courier New';
  font-size: 10pt;">SELECT</span><span lang="EN-US" style="font-family: 'Courier
  New'; font-size: 10pt;"> <o:p></o:p></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp;
  Sysobjects<span style="color: grey;">.</span>name <span style="color:
  blue;">AS</span> [</span><span style="font-family: 新細明體; font-size:
  10pt;">數据表名稱</span><span lang="EN-US" style="font-family: 'Courier New';
  font-size: 10pt;">]<span style="color: grey;">,</span>
  <o:p></o:p></span></div><div class="MsoNormal" style="mso-layout-grid-align:
  none; text-autospace: none;"><span lang="EN-US" style="font-family: 'Courier
  New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp; syscolumns<span style="color:
  grey;">.</span>name <span style="color: blue;">AS</span> [</span><span
  style="font-family: 新細明體; font-size: 10pt;">欄位名稱</span><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">]<span style="color:
  grey;">,</span> <o:p></o:p></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp;
  systypes<span style="color: grey;">.</span>name <span style="color:
  blue;">AS</span> [</span><span style="font-family: 新細明體; font-size:
  10pt;">欄位類型</span><span lang="EN-US" style="font-family: 'Courier New';
  font-size: 10pt;">]<span style="color: grey;">,</span>
  <o:p></o:p></span></div><div class="MsoNormal" style="mso-layout-grid-align:
  none; text-autospace: none;"><span lang="EN-US" style="font-family: 'Courier
  New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp; syscolumns<span style="color:
  grey;">.</span>length <span style="color: blue;">AS</span> [</span><span
  style="font-family: 新細明體; font-size: 10pt;">欄位長度</span><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">]<span style="color:
  grey;">,</span> <o:p></o:p></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp; <span
  style="color: green;">sys.extended_properties</span><span style="color:
  grey;">.</span>[value] <span style="color: blue;">AS</span> [</span><span
  style="font-family: 新細明體; font-size: 10pt;">欄位描述</span><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">]<span style="color:
  grey;">,</span>&nbsp; <o:p></o:p></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp;
  syscomments<span style="color: grey;">.</span>text <span style="color:
  blue;">AS</span> [Default-Value]<span style="color:
  grey;">,<o:p></o:p></span></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp;
  syscolumns<span style="color: grey;">.</span>isnullable <span style="color:
  blue;">AS</span> [IsNull] <o:p></o:p></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="color: blue; font-family: 'Courier New'; font-size:
  10pt;">FROM</span><span lang="EN-US" style="font-family: 'Courier New';
  font-size: 10pt;"> syscolumns <o:p></o:p></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp; <span
  style="color: grey;">INNER</span> <span style="color: grey;">JOIN</span>
  systypes <span style="color: blue;">ON</span> syscolumns<span style="color:
  grey;">.</span>xtype <span style="color: grey;">=</span> systypes<span
  style="color: grey;">.</span>xtype <o:p></o:p></span></div><div
  class="MsoNormal" style="mso-layout-grid-align: none; text-autospace:
  none;"><span lang="EN-US" style="font-family: 'Courier New'; font-size:
  10pt;">&nbsp;&nbsp;&nbsp; <span style="color: grey;">LEFT</span> <span
  style="color: grey;">JOIN</span> sysobjects <span style="color:
  blue;">ON</span> syscolumns<span style="color: grey;">.</span>id <span
  style="color: grey;">=</span> sysobjects<span style="color: grey;">.</span>id
  <o:p></o:p></span></div><div class="MsoNormal" style="mso-layout-grid-align:
  none; text-autospace: none;"><span lang="EN-US" style="font-family: 'Courier
  New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp; <span style="color:
  grey;">LEFT</span> <span style="color: grey;">OUTER</span> <span style="color:
  grey;">JOIN</span> <span style="color: green;">sys.extended_properties</span>
  <span style="color: blue;">ON</span> <span style="color: grey;">(</span> <span
  style="color: green;">sys.extended_properties</span><span style="color:
  grey;">.</span>minor_id <span style="color: grey;">=</span> syscolumns<span
  style="color: grey;">.</span>colid <span style="color: grey;">AND</span> <span
  style="color: green;">sys.extended_properties</span><span style="color:
  grey;">.</span>major_id <span style="color: grey;">=</span> syscolumns<span
  style="color: grey;">.</span>id <span style="color: grey;">)</span>
  <o:p></o:p></span></div><div class="MsoNormal" style="mso-layout-grid-align:
  none; text-autospace: none;"><span lang="EN-US" style="font-family: 'Courier
  New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp; <span style="color:
  grey;">LEFT</span> <span style="color: grey;">OUTER</span> <span style="color:
  grey;">JOIN</span> syscomments <span style="color: blue;">ON</span>
  syscolumns<span style="color: grey;">.</span>cdefault <span style="color:
  grey;">=</span> syscomments<span style="color: grey;">.</span>id
  <o:p></o:p></span></div><div class="MsoNormal" style="mso-layout-grid-align:
  none; text-autospace: none;"><span lang="EN-US" style="color: blue;
  font-family: 'Courier New'; font-size: 10pt;">where</span><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;"> sysobjects<span
  style="color: grey;">.</span>name <span style="color: grey;">in</span> <span
  style="color: grey;">(<o:p></o:p></span></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;">&nbsp;&nbsp;&nbsp; <span
  style="color: blue;">select</span> table_name <span style="color:
  blue;">from</span> <span style="color:
  green;">information_schema.tables<o:p></o:p></span></span></div><div
  class="MsoNormal" style="mso-layout-grid-align: none; text-autospace:
  none;"><span lang="EN-US" style="font-family: 'Courier New'; font-size:
  10pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">where</span>
  table_catalog<span style="color: grey;">=</span><span style="color:
  red;">'person'</span> <span style="color: green;">-- </span></span><span
  style="color: green; font-family: 新細明體; font-size:
  10pt;">這裡是你的資料庫名稱</span><span lang="EN-US" style="color: green; font-family:
  'Courier New'; font-size: 10pt;"><o:p></o:p></span></div><div
  class="MsoNormal" style="mso-layout-grid-align: none; text-autospace:
  none;"><span lang="EN-US" style="font-family: 'Courier New'; font-size:
  10pt;">&nbsp;&nbsp;&nbsp; <span style="color: grey;">and</span>
  table_type<span style="color: grey;">=</span><span style="color: red;">'BASE
  TABLE'<o:p></o:p></span></span></div><div class="MsoNormal"
  style="mso-layout-grid-align: none; text-autospace: none;"><span lang="EN-US"
  style="color: grey; font-family: 'Courier New'; font-size:
  10pt;">)<o:p></o:p></span></div><span lang="EN-US" style="color: blue;
  font-family: 'Courier New'; font-size: 10pt;">order</span><span lang="EN-US"
  style="font-family: 'Courier New'; font-size: 10pt;"> <span style="color:
  blue;">by</span> sysobjects<span style="color: grey;">.</span>name</span><br
  /><br />幸福吧!!<div class="blogger-post-footer">Copyright © Bruce Huang All
  rights reserved.</div>
date: 2011-01-27 17:50:00
---

有時候我們需要撰寫資料腳本的文件, 或者是客戶會要求你給一份目前資料庫的明細文件。一  
般的說明文件如 : 表格名, 欄名, 欄類型, 長度, 是否NULL, 欄位描述...等等。在這個時候如果表  
格多時, 可能會打到死吧! 由其是用Word文件...這時候如果有個查欄位明細的腳本不知該有多好  
。  
以下就是了  
  

\--查詢欄位名細.sql

SELECT

 Sysobjects.name AS \[數据表名稱\],

 syscolumns.name AS \[欄位名稱\],

 systypes.name AS \[欄位類型\],

 syscolumns.length AS \[欄位長度\],

 sys.extended\_properties.\[value\] AS \[欄位描述\], 

 syscomments.text AS \[Default-Value\],

 syscolumns.isnullable AS \[IsNull\]

FROM syscolumns

 INNER JOIN systypes ON syscolumns.xtype \= systypes.xtype

 LEFT JOIN sysobjects ON syscolumns.id \= sysobjects.id

 LEFT OUTER JOIN sys.extended\_properties ON ( sys.extended\_properties.minor\_id \= syscolumns.colid AND sys.extended\_properties.major\_id \= syscolumns.id )

 LEFT OUTER JOIN syscomments ON syscolumns.cdefault \= syscomments.id

where sysobjects.name in (

 select table\_name from information\_schema.tables

 where table\_catalog\='person' \-- 這裡是你的資料庫名稱

 and table\_type\='BASE TABLE'

)

order by sysobjects.name  
  
幸福吧!!

Copyright © Bruce Huang All rights reserved.
<!-- more -->
