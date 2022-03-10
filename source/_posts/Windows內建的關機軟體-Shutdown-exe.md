---
title: Windows內建的關機軟體(Shutdown.exe)
tags:
  - Command line
  - Windows 相關
excerpt: >-
  找Windows用的關機軟體嗎？免下載，Windows XP之後的版本就有內建囉！<br
  />Shutdown是一支Windows內建的關機小程式，沒想到它除了命令列模式之外，也有圖形化界面。命令列模式的參數可以輸入 shutdown /?
  來顯示。<br /><br /><br /><br /><b>使用方式說明</b>: <br />shutdown [-i | -l | -s | -r |
  -a] [-f] [-m \\computername] [-t xx]<br />&nbsp;[-c "comment"] [-d
  up:xx:yy]<br /><br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;沒有引數 &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;顯示這個訊息 (和 -? 相同)<br />&nbsp;&nbsp;
  &nbsp; &nbsp; &nbsp;-i &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp;顯示 GUI 介面，必須是第一個選項<br />&nbsp;&nbsp; &nbsp; &nbsp;
  &nbsp;-l &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp;登出 (不能和 -m 選項一起使用)<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;-s &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;電腦關機<br
  />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;-r &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;關機並重新啟動電腦<br />&nbsp;&nbsp; &nbsp;
  &nbsp; &nbsp;-a &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp;中止系統關機<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;-m \\\\computername
  &nbsp; &nbsp; 從遠端進行關機/重新啟動/中止<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;-t xx
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 將關機等候時間設定成 xx
  秒<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;-c "comment" &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp;關機註解 (最多 127 個字元)<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;-f
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp;強制關閉執行中的應用程式，不顯示警告<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;-d [u][p]:xx:yy
  &nbsp; &nbsp; &nbsp; &nbsp; 關機原因代碼<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp;u 是使用者代碼<br />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;p 是預先計劃的關機代碼<br
  />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xx 是主要原因代碼 (小於 256 的正整數)<br
  />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;yy 是次要原因代碼 (小於 65536 的正整數)<br /><br
  /><br /><br /><b>範例</b>:<br /><br />shutdown -c "AotoResetComputer" -r -f -t
  5<br /><br />1.關機註解: -c "AotoResetComputer"<br />2.關機並重新啟動電腦: -r<br
  />3.強制關閉執行中的應用程式，不顯示警告: -f<br />4.將關機等候時間設定成5秒: -t 5<br /><br /><br
  />引自:&nbsp;<a href="http://blog.soft.idv.tw/?p=216"
  target="_blank">http://blog.soft.idv.tw/?p=216</a><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-11-16 18:28:00
---

找Windows用的關機軟體嗎？免下載，Windows XP之後的版本就有內建囉！  
Shutdown是一支Windows內建的關機小程式，沒想到它除了命令列模式之外，也有圖形化界面。命令列模式的參數可以輸入 shutdown /? 來顯示。  
  
  
  
**使用方式說明**:  
shutdown \[-i | -l | -s | -r | -a\] \[-f\] \[-m \\\\computername\] \[-t xx\]  
 \[-c "comment"\] \[-d up:xx:yy\]  
  
        沒有引數                顯示這個訊息 (和 -? 相同)  
        -i                      顯示 GUI 介面，必須是第一個選項  
        -l                      登出 (不能和 -m 選項一起使用)  
        -s                      電腦關機  
        -r                      關機並重新啟動電腦  
        -a                      中止系統關機  
        -m \\\\\\\\computername     從遠端進行關機/重新啟動/中止  
        -t xx                   將關機等候時間設定成 xx 秒  
        -c "comment"            關機註解 (最多 127 個字元)  
        -f                      強制關閉執行中的應用程式，不顯示警告  
        -d \[u\]\[p\]:xx:yy         關機原因代碼  
                                u 是使用者代碼  
                                p 是預先計劃的關機代碼  
                                xx 是主要原因代碼 (小於 256 的正整數)  
                                yy 是次要原因代碼 (小於 65536 的正整數)  
  
  
  
**範例**:  
  
shutdown -c "AotoResetComputer" -r -f -t 5  
  
1.關機註解: -c "AotoResetComputer"  
2.關機並重新啟動電腦: -r  
3.強制關閉執行中的應用程式，不顯示警告: -f  
4.將關機等候時間設定成5秒: -t 5  
  
  
引自: [http://blog.soft.idv.tw/?p=216](http://blog.soft.idv.tw/?p=216)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
