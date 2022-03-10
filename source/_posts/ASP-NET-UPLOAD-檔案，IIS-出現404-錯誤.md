---
title: ASP.NET UPLOAD 檔案，IIS 出現404 錯誤
tags:
  - ASP.NET
  - IIS
  - Windows 相關
  - 瀏覽器
excerpt: >-
  老問題，還是記錄一下<br /><br />這是IIS本身的問題，跟你設定的 web.config 裡的 maxRequestLength 沒有關係<br
  /><br />解法：<br /><br />1. 開啟伺服器上的cmd<br />2. 輸入 cd
  c:\Windows\systems32\inetsrv 後按 Enter<br />3. 輸入 appcmd set config
  "SiteName/AppName" -section:requestFiltering
  -requestLimits.maxAllowedContentLength:102400000 -commitpath:apphost 後再按下
  Enter<br />4. 嗶嗶~~注意 "SiteName/AppName" 是你的 "網站站台名稱 / 應用程式的名稱"<br />5.
  最好重新啟動IIS<br />6. 試一下吧，我試是成功的XD<br />7. 收工<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2015-08-28 14:51:00
---

老問題，還是記錄一下  
  
這是IIS本身的問題，跟你設定的 web.config 裡的 maxRequestLength 沒有關係  
  
解法：  
  
1\. 開啟伺服器上的cmd  
2\. 輸入 cd c:\\Windows\\systems32\\inetsrv 後按 Enter  
3\. 輸入 appcmd set config "SiteName/AppName" -section:requestFiltering -requestLimits.maxAllowedContentLength:102400000 -commitpath:apphost 後再按下 Enter  
4\. 嗶嗶~~注意 "SiteName/AppName" 是你的 "網站站台名稱 / 應用程式的名稱"  
5\. 最好重新啟動IIS  
6\. 試一下吧，我試是成功的XD  
7\. 收工

Copyright © Bruce Huang All rights reserved.
<!-- more -->
