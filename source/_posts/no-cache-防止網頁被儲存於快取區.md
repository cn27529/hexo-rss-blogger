---
title: no-cache 防止網頁被儲存於快取區
tags:
  - HTML
  - IE
excerpt: >-
  無論如何，其實瀏覽器在載入網頁之後，裡頭的任何內容檔案都存在一個<span class="Apple-style-span" style="color:
  blue;"> C:\Documents and Settings\你的使用者名稱\Local Settings\Temporary Internet
  Files</span> 資料夾裡頭，下次再存取就直接從那個資料夾讀取，速度就快多了，除非按下重新整理才會重新從網路上讀取。<br /><br
  />但是這樣，所有的檔案都一清二楚了，能不能夠不要快取呢？其實是可以的：<br /><br
  />1.將以下原始碼貼到網頁的<HEAD>和</HEAD>之間<br /><br /><span class="Apple-style-span"
  style="color: blue;"><META HTTP-EQUIV="pragma" CONTENT="no-cache"></span><br
  /><span class="Apple-style-span" style="color: blue;"><META
  HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 00:00:00 GMT"> </span><br /><br
  />2.在上面的設定中，你可以把<span class="Apple-style-span" style="color: blue;">Wed, 26
  Feb 1997 00:00:00 GMT</span>改成任何你想用的日期，只要你指定的是過去的時間就行了。<br /><br
  />第一行的作用則在於防止快取(之前誤寫成nocache，其實中間應該有「-」才對，已更正)，但只對有SSL安全保護的頁面有用，如某些銀行網路的線上存款系統等；其餘普通網頁還是會被快取，只是會被視為立刻過期；至於第二行的設定，則是設定頁面過期的日期，由於設定的是過去的日期，所以會被立即視為已過期。當頁面被視為已過期後，只要你離開了該頁，瀏覽器就會清掉該頁的快取了。<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2011-02-24 13:19:00
---

無論如何，其實瀏覽器在載入網頁之後，裡頭的任何內容檔案都存在一個 C:\\Documents and Settings\\你的使用者名稱\\Local Settings\\Temporary Internet Files 資料夾裡頭，下次再存取就直接從那個資料夾讀取，速度就快多了，除非按下重新整理才會重新從網路上讀取。  
  
但是這樣，所有的檔案都一清二楚了，能不能夠不要快取呢？其實是可以的：  
  
1.將以下原始碼貼到網頁的和之間  
  
  
  
  
2.在上面的設定中，你可以把Wed, 26 Feb 1997 00:00:00 GMT改成任何你想用的日期，只要你指定的是過去的時間就行了。  
  
第一行的作用則在於防止快取(之前誤寫成nocache，其實中間應該有「-」才對，已更正)，但只對有SSL安全保護的頁面有用，如某些銀行網路的線上存款系統等；其餘普通網頁還是會被快取，只是會被視為立刻過期；至於第二行的設定，則是設定頁面過期的日期，由於設定的是過去的日期，所以會被立即視為已過期。當頁面被視為已過期後，只要你離開了該頁，瀏覽器就會清掉該頁的快取了。

Copyright © Bruce Huang All rights reserved.
<!-- more -->
