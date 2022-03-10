---
title: wkhtmltopdf.exe 網頁Html轉PDF檔
tags:
  - ASP.NET
  - C#
  - ConvertToPDF
excerpt: >-
  網頁Html轉PDF檔(一行程式碼解決)   網頁轉PDF檔做法很多(Convert HTML to PDF in .NET)<br
  />這邊紀錄一下老外最多人加分的那篇做法，使用wkhtmtopdf(採GPL授權)可以省很多程式碼&nbsp; <br /><br
  />1.首先到官網&nbsp;<a href="http://code.google.com/p/wkhtmltopdf/downloads/list"
  target="_blank">http://code.google.com/p/wkhtmltopdf/downloads/list</a><br
  />2.找installer.exe下載，這邊Demo我是下載wkhtmltopdf-0.9.9-installer.exe下載完後執行安裝它 <br
  /><br /><div class="separator" style="clear: both; text-align: center;"><a
  href="http://2.bp.blogspot.com/-KpVLCef_IsM/T17wCHQapOI/AAAAAAAABpo/E5J5nXFttSI/s1600/ScreenHunter_01+Mar.+13+14.56.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="http://2.bp.blogspot.com/-KpVLCef_IsM/T17wCHQapOI/AAAAAAAABpo/E5J5nXFttSI/s1600/ScreenHunter_01+Mar.+13+14.56.gif"
  /></a></div><br /><div class="separator" style="clear: both; text-align:
  center;"><a
  href="http://2.bp.blogspot.com/-zlwqnDDQZzI/T17-KCj3iaI/AAAAAAAABqI/xeu2C0Jjibo/s1600/ScreenHunter_02+Mar.+13+14.57.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="280"
  src="http://2.bp.blogspot.com/-zlwqnDDQZzI/T17-KCj3iaI/AAAAAAAABqI/xeu2C0Jjibo/s400/ScreenHunter_02+Mar.+13+14.57.gif"
  width="400" /></a></div><br /><div class="separator" style="clear: both;
  text-align: center;"></div>3.選擇安裝路徑,
  進行安裝&nbsp;(如果要解除安裝的話，就到剛剛安裝的資料夾下找uninstall.exe執行即可)<br /><br
  />4.安裝完畢後找到wkhtmltopdf.exe<br /><div class="separator" style="clear: both;
  text-align: center;"></div><div class="separator" style="clear: both;
  text-align: center;"><a
  href="http://3.bp.blogspot.com/-JOm2A-ne_pI/T17-Q4HZesI/AAAAAAAABqQ/Qot3kCwXfco/s1600/ScreenHunter_07+Mar.+13+15.44.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="http://3.bp.blogspot.com/-JOm2A-ne_pI/T17-Q4HZesI/AAAAAAAABqQ/Qot3kCwXfco/s1600/ScreenHunter_07+Mar.+13+15.44.gif"
  /></a></div><br />5.回到命令提示字元(開始→執行→cmd)輸入<br />6.以google網頁轉PDF為例, 按下Enter轉換完成.
  <br /><div class="separator" style="clear: both; text-align:
  center;"></div><div class="separator" style="clear: both; text-align:
  center;"><a
  href="http://1.bp.blogspot.com/-h3YNZ7u1MQ0/T17_KaooV7I/AAAAAAAABqY/QlnHUlfD5BM/s1600/ScreenHunter_05+Mar.+13+15.41.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="76"
  src="http://1.bp.blogspot.com/-h3YNZ7u1MQ0/T17_KaooV7I/AAAAAAAABqY/QlnHUlfD5BM/s400/ScreenHunter_05+Mar.+13+15.41.gif"
  width="400" /></a></div><br
  />7.既然知道底層使用方式，那就可以調用&nbsp;useing&nbsp;System.Diagnostics.Process<br /><br
  />8.使用System.Diagnostics.Process.Start 方法 (String, String)<br
  />第一個參數傳執行檔路徑，第二個傳參數(URL和PDF檔的存放路徑)<br />System.Diagnostics.Process.<span
  style="color: blue;">Start</span>(@<span style="color:
  magenta;">"你的安裝路徑\wkhtmltopdf.exe"</span>, @<span style="color:
  magenta;">"http://www.google.com.tw 你要產生檔案的路徑\youFileName.pdf"</span>);<br
  /><br />9.此小工具不會像WinForm的WebBrowser控制項一樣會共用IE瀏覽器的Cookie
  ,&nbsp;而且要抓的網頁來源不一定要URL，也可以像這樣直接抓本機上的Html檔轉PDF.<br
  />System.Diagnostics.Process.<span style="color: blue;">Start</span>(@ <span
  style="color: magenta;">"你的安裝路徑\wkhtmltopdf.exe"</span>&nbsp;, @ <span
  style="color: magenta;">"D:\youHtml.html D:\youFileName.pdf"</span>&nbsp;);<br
  /><br /><br />目前已知<br />1.本機的Html檔案轉成PDF後，圖片顯示不出來<br />2.網頁中裝載flash檔案 *.swf
  顯示不出來<br /><br /><br />引自:&nbsp;<a
  href="http://www.dotblogs.com.tw/shadow/archive/2011/09/28/38072.aspx"
  target="_blank">http://www.dotblogs.com.tw/shadow/archive/2011/09/28/38072.aspx</a><br
  /><br /><br /><br /><br /><br /><br /><br /><br /><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2012-03-13 16:02:00
---

網頁Html轉PDF檔(一行程式碼解決) 網頁轉PDF檔做法很多(Convert HTML to PDF in .NET)  
這邊紀錄一下老外最多人加分的那篇做法，使用wkhtmtopdf(採GPL授權)可以省很多程式碼   
  
1.首先到官網 [http://code.google.com/p/wkhtmltopdf/downloads/list](http://code.google.com/p/wkhtmltopdf/downloads/list)  
2.找installer.exe下載，這邊Demo我是下載wkhtmltopdf-0.9.9-installer.exe下載完後執行安裝它  
  

[![](http://2.bp.blogspot.com/-KpVLCef_IsM/T17wCHQapOI/AAAAAAAABpo/E5J5nXFttSI/s1600/ScreenHunter_01+Mar.+13+14.56.gif)](http://2.bp.blogspot.com/-KpVLCef_IsM/T17wCHQapOI/AAAAAAAABpo/E5J5nXFttSI/s1600/ScreenHunter_01+Mar.+13+14.56.gif)

  

[![](http://2.bp.blogspot.com/-zlwqnDDQZzI/T17-KCj3iaI/AAAAAAAABqI/xeu2C0Jjibo/s400/ScreenHunter_02+Mar.+13+14.57.gif)](http://2.bp.blogspot.com/-zlwqnDDQZzI/T17-KCj3iaI/AAAAAAAABqI/xeu2C0Jjibo/s1600/ScreenHunter_02+Mar.+13+14.57.gif)

  

3.選擇安裝路徑, 進行安裝 (如果要解除安裝的話，就到剛剛安裝的資料夾下找uninstall.exe執行即可)  
  
4.安裝完畢後找到wkhtmltopdf.exe  

[![](http://3.bp.blogspot.com/-JOm2A-ne_pI/T17-Q4HZesI/AAAAAAAABqQ/Qot3kCwXfco/s1600/ScreenHunter_07+Mar.+13+15.44.gif)](http://3.bp.blogspot.com/-JOm2A-ne_pI/T17-Q4HZesI/AAAAAAAABqQ/Qot3kCwXfco/s1600/ScreenHunter_07+Mar.+13+15.44.gif)

  
5.回到命令提示字元(開始→執行→cmd)輸入  
6.以google網頁轉PDF為例, 按下Enter轉換完成.  

[![](http://1.bp.blogspot.com/-h3YNZ7u1MQ0/T17_KaooV7I/AAAAAAAABqY/QlnHUlfD5BM/s400/ScreenHunter_05+Mar.+13+15.41.gif)](http://1.bp.blogspot.com/-h3YNZ7u1MQ0/T17_KaooV7I/AAAAAAAABqY/QlnHUlfD5BM/s1600/ScreenHunter_05+Mar.+13+15.41.gif)

  
7.既然知道底層使用方式，那就可以調用 useing System.Diagnostics.Process  
  
8.使用System.Diagnostics.Process.Start 方法 (String, String)  
第一個參數傳執行檔路徑，第二個傳參數(URL和PDF檔的存放路徑)  
System.Diagnostics.Process.Start(@"你的安裝路徑\\wkhtmltopdf.exe", @"http://www.google.com.tw 你要產生檔案的路徑\\youFileName.pdf");  
  
9.此小工具不會像WinForm的WebBrowser控制項一樣會共用IE瀏覽器的Cookie , 而且要抓的網頁來源不一定要URL，也可以像這樣直接抓本機上的Html檔轉PDF.  
System.Diagnostics.Process.Start(@ "你的安裝路徑\\wkhtmltopdf.exe" , @ "D:\\youHtml.html D:\\youFileName.pdf" );  
  
  
目前已知  
1.本機的Html檔案轉成PDF後，圖片顯示不出來  
2.網頁中裝載flash檔案 \*.swf 顯示不出來  
  
  
引自: [http://www.dotblogs.com.tw/shadow/archive/2011/09/28/38072.aspx](http://www.dotblogs.com.tw/shadow/archive/2011/09/28/38072.aspx)  
  
  
  
  
  
  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
