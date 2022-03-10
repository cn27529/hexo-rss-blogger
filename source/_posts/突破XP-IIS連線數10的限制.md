---
title: 突破XP IIS連線數10的限制
tags:
  - ASP.NET
  - Windows 相關
  - 軟体應用相關
excerpt: >-
  可以少量的增加連線數到達極限數40。<br />請在console模式中，切換到C:\Inetpub\AdminScripts\資料夾。<br
  /><span class="Apple-style-span" style="color: red;">CD
  C:\Inetpub\AdminScripts</span><br /><br />然後輸入以下指令來增加連數。<br /><span
  class="Apple-style-span" style="color: red;">cscript adsutil.vbs set
  w3svc/MaxConnections 40</span><br /><br />最後，我們可以下達以下指令來重新啟動IIS。<br /><span
  class="Apple-style-span" style="color: red;">iisreset</span><br /><br
  />可不可以把40改成更大的數目，以取得更多連線數？ <br /><br />答案是否定的！超過40，一律視為10；對，就是10而已！<br /><br
  />引自:
  http://www.shunze.info/forum/thread.php?threadid=1324&boardid=5&sid=6d36c9b16d57d38a50cf27698afa96f0&sid=6d36c9b16d57d38a50cf27698afa96f0<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2011-08-23 18:29:00
---

可以少量的增加連線數到達極限數40。  
請在console模式中，切換到C:\\Inetpub\\AdminScripts\\資料夾。  
CD C:\\Inetpub\\AdminScripts  
  
然後輸入以下指令來增加連數。  
cscript adsutil.vbs set w3svc/MaxConnections 40  
  
最後，我們可以下達以下指令來重新啟動IIS。  
iisreset  
  
可不可以把40改成更大的數目，以取得更多連線數？  
  
答案是否定的！超過40，一律視為10；對，就是10而已！  
  
引自: http://www.shunze.info/forum/thread.php?threadid=1324&boardid=5&sid=6d36c9b16d57d38a50cf27698afa96f0&sid=6d36c9b16d57d38a50cf27698afa96f0

Copyright © Bruce Huang All rights reserved.
<!-- more -->
