---
title: 無法寫入輸出檔  Temporary ASP.NET Files
tags:
  - ASP.NET
  - IIS
excerpt: >-
  此症頭常出現在WIN7<br /><br />解法<br /><br />C:\WINDOWS\TEMP 目錄<br /><br />加入讀寫權限：<br
  />NETWORK SERVICE用户<br />IUSER用户<br />IIS_USER用户<br /><br
  />C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Temporary ASP.NET Files
  目錄<br /><br />加入讀寫權限：<br />NETWORK SERVICE用户<br />IUSER用户<br />IIS_USER用户<br
  /><br />停用IIS<br /><div class="separator" style="clear: both; text-align:
  center;"><a
  href="http://2.bp.blogspot.com/-Pg7-yrnYtjE/ViRVdtmD2MI/AAAAAAAAIs4/W9pFhDanxv0/s1600/img_16%2B20151019%2B10.23.jpg"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="https://2.bp.blogspot.com/-Pg7-yrnYtjE/ViRVdtmD2MI/AAAAAAAAIs4/W9pFhDanxv0/s1600/img_16%2B20151019%2B10.23.jpg"
  /></a></div><br /><br />移除 Temporary ASP.NET Files 目錄內所有檔案<br /><br /><br
  />重啟IIS<br /><div class="separator" style="clear: both; text-align:
  center;"><a
  href="http://4.bp.blogspot.com/-4G_SPlxGcYQ/ViRVhMY46-I/AAAAAAAAItE/IJmnXEj6Uwo/s1600/img_17%2B20151019%2B10.27.jpg"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="https://4.bp.blogspot.com/-4G_SPlxGcYQ/ViRVhMY46-I/AAAAAAAAItE/IJmnXEj6Uwo/s1600/img_17%2B20151019%2B10.27.jpg"
  /></a></div><br /><br />若還是不能解，開啟IIS管理員，執行下面改成True<br /><div class="separator"
  style="clear: both; text-align: center;"><a
  href="http://3.bp.blogspot.com/-reth3x9GjBE/ViRVjBfb8hI/AAAAAAAAItM/K5cqQ89H3SQ/s1600/img_15%2B20151019%2B10.15.jpg"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="https://3.bp.blogspot.com/-reth3x9GjBE/ViRVjBfb8hI/AAAAAAAAItM/K5cqQ89H3SQ/s1600/img_15%2B20151019%2B10.15.jpg"
  /></a></div><br />收工。<br /><br /><br /><br /><br /><br /><br /><br /><br
  /><div class="blogger-post-footer">Copyright © Bruce Huang All rights
  reserved.</div>
date: 2015-08-26 10:31:00
---

此症頭常出現在WIN7  
  
解法  
  
C:\\WINDOWS\\TEMP 目錄  
  
加入讀寫權限：  
NETWORK SERVICE用户  
IUSER用户  
IIS\_USER用户  
  
C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\Temporary ASP.NET Files 目錄  
  
加入讀寫權限：  
NETWORK SERVICE用户  
IUSER用户  
IIS\_USER用户  
  
停用IIS  

[![](https://2.bp.blogspot.com/-Pg7-yrnYtjE/ViRVdtmD2MI/AAAAAAAAIs4/W9pFhDanxv0/s1600/img_16%2B20151019%2B10.23.jpg)](http://2.bp.blogspot.com/-Pg7-yrnYtjE/ViRVdtmD2MI/AAAAAAAAIs4/W9pFhDanxv0/s1600/img_16%2B20151019%2B10.23.jpg)

  
  
移除 Temporary ASP.NET Files 目錄內所有檔案  
  
  
重啟IIS  

[![](https://4.bp.blogspot.com/-4G_SPlxGcYQ/ViRVhMY46-I/AAAAAAAAItE/IJmnXEj6Uwo/s1600/img_17%2B20151019%2B10.27.jpg)](http://4.bp.blogspot.com/-4G_SPlxGcYQ/ViRVhMY46-I/AAAAAAAAItE/IJmnXEj6Uwo/s1600/img_17%2B20151019%2B10.27.jpg)

  
  
若還是不能解，開啟IIS管理員，執行下面改成True  

[![](https://3.bp.blogspot.com/-reth3x9GjBE/ViRVjBfb8hI/AAAAAAAAItM/K5cqQ89H3SQ/s1600/img_15%2B20151019%2B10.15.jpg)](http://3.bp.blogspot.com/-reth3x9GjBE/ViRVjBfb8hI/AAAAAAAAItM/K5cqQ89H3SQ/s1600/img_15%2B20151019%2B10.15.jpg)

  
收工。  
  
  
  
  
  
  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
