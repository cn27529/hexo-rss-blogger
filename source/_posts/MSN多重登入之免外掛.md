---
title: MSN多重登入之免外掛
tags:
  - Windows 相關
  - 軟体應用相關
excerpt: >-
  可以同時擁有多個手機號碼一樣，在數位世界裡，我們也可以申請不只一個 MSN 帳號。對於事業做很大或者交遊廣闊的人來說，會希望擁有不同的 MSN
  帳號來將家人、朋友、同事、事業夥伴分開來管理；在不同的時段裡登入適當的 MSN 帳號。雖然 MSN
  允許使用者在不同電腦裡登入同一個帳號，但是卻沒有辦法在同一台電腦裡同時登入多個不同的帳號，所以網路上便有一些外掛，或是修改法可以打開
  MSN「多重登入」的功能。<br /><br />這篇文章要介紹的方法是利用修改登錄檔的方式讓 MSN 可以多重登入，完全不靠外掛的幫忙。<br /><br
  /><br /><strong>在開始選單裡輸入 regedit，然後按下 Enter 便可以打開「登錄編輯程式」▼</strong><br
  />&nbsp;<a
  href="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.05.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.05.png"
  wt="true" /></a><br /><br /><strong>在登錄編輯程式裡到以下路徑：</strong><br /><br
  />HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Live\Messenger<br /><br
  /><strong>在空白處按下右鍵，新增一個名為「MultipleInstances」的「DWORD」值 ▼</strong><br /><br
  /><div class="separator" style="clear: both; text-align: center;"><a
  href="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.02.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.02.png"
  wt="true" /></a></div><br /><strong>在 MultipleInstances
  項目上雙擊編輯數值，在「數值資料」輸入「1」；「底數」選擇「十六進位」，之後按下「確定」▼</strong><br /><br /><div
  class="separator" style="clear: both; text-align: center;"><a
  href="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.03.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.03.png"
  wt="true" /></a></div><br />完成登錄編輯的變更。<br /><br /><strong>接下來,
  我們就可以同時打開並登入「無限」個 MSN 了！當然，如果你的電腦撐得住的話 XD ▼</strong><br /><br /><div
  class="separator" style="clear: both; text-align: center;"><a
  href="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.04.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.04.png"
  wt="true" /></a></div><div class="blogger-post-footer">Copyright © Bruce Huang
  All rights reserved.</div>
date: 2010-04-18 10:45:00
---

可以同時擁有多個手機號碼一樣，在數位世界裡，我們也可以申請不只一個 MSN 帳號。對於事業做很大或者交遊廣闊的人來說，會希望擁有不同的 MSN 帳號來將家人、朋友、同事、事業夥伴分開來管理；在不同的時段裡登入適當的 MSN 帳號。雖然 MSN 允許使用者在不同電腦裡登入同一個帳號，但是卻沒有辦法在同一台電腦裡同時登入多個不同的帳號，所以網路上便有一些外掛，或是修改法可以打開 MSN「多重登入」的功能。  
  
這篇文章要介紹的方法是利用修改登錄檔的方式讓 MSN 可以多重登入，完全不靠外掛的幫忙。  
  
  
**在開始選單裡輸入 regedit，然後按下 Enter 便可以打開「登錄編輯程式」▼**  
 [![](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.05.png)](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.05.png)  
  
**在登錄編輯程式裡到以下路徑：**  
  
HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Live\\Messenger  
  
**在空白處按下右鍵，新增一個名為「MultipleInstances」的「DWORD」值 ▼**  
  

[![](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.02.png)](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.02.png)

  
**在 MultipleInstances 項目上雙擊編輯數值，在「數值資料」輸入「1」；「底數」選擇「十六進位」，之後按下「確定」▼**  
  

[![](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.03.png)](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.03.png)

  
完成登錄編輯的變更。  
  
**接下來, 我們就可以同時打開並登入「無限」個 MSN 了！當然，如果你的電腦撐得住的話 XD ▼**  
  

[![](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.04.png)](http://blog.joaoko.net/wp-content/uploads/2010/04/MSNMultipleInstances.04.png)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
