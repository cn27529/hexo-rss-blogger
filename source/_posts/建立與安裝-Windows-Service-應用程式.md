---
title: 建立與安裝 Windows Service 應用程式
tags:
  - Command line
  - Windowns Service
  - Windows 相關
excerpt: >-
  <span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">最近一個案子 , 需要使用同步更新的處理 , 先前都是使用排程進行 ,
  但是覺的排程總是不太理想...所以...</span><br /><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  12px;"><br /></span><br /><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  12px;">以下是一個簡單的範例教學，可以讓你快速體驗如何使用 Visual Studio 2005 撰寫一個 Windows Service
  應用程式。</span><br /><span class="Apple-style-span" style="font-family: Verdana,
  Geneva, Arial, Helvetica, sans-serif; font-size: 12px;"><br /></span><br
  /><span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><b><span class="Apple-style-span" style="font-weight:
  normal;"><strong>實作步驟</strong></span></b></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><b><br /></b></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;">1. 建立你的Windows Service 專案 , 例:MySvc ,
  並已撰寫好要讓&nbsp;</span></span><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 12px;">MySvc
  做的事情</span><br /><span class="Apple-style-span" style="font-family: Verdana,
  Geneva, Arial, Helvetica, sans-serif; font-size: 12px;"><br /></span><br
  /><span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">2.&nbsp;</span><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">切到 Service1.cs 的 Design
  View，然後在設計畫面的空白處點右鍵，選「Add Installer」。</span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;"><br /></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">3.&nbsp;</span><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">設定 serviceProcessInstaller1
  的相關屬性，例如：Account，這個屬性是用來指定要執行這個 Windows 服務的使用者帳戶。你可以設定成
  LocalSystem，以便使用系統帳戶來執行服務。</span><br /><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  12px;"><br /></span><br /><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  12px;">4.&nbsp;</span><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 12px;">設定
  serviceInstaller1 的相關屬性，例如：StartType、ServiceName、DisplayName。StartType
  是服務的啟動類型，預設是 Manual，即手動啟動，如果你希望服務會在電腦開機之後就自動啟動，可以設定成 Automatic。</span><br
  /><span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;"><br /></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">5.&nbsp;</span><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">建置專案。</span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size:
  12px;"><strong>安裝已建立好的&nbsp;</strong></span><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  12px;">MySvc</span><br /><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: small;"><span
  class="Apple-style-span" style="font-size: 12px;"><br /></span></span><br
  /><span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;">你可以使用 .NET Framework 附的 InstallUtil.exe 命令列工具來安裝
  Windows 服務：</span></span><br /><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  small;"><span class="Apple-style-span" style="font-size: 12px;"><br
  /></span></span><br /><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: small;"><span
  class="Apple-style-span" style="font-size: 12px;">1.
  通常會在這個位置找到&nbsp;</span></span><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  12px;">InstallUtil.exe 命令列工具&nbsp;</span><br /><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  small;"><span class="Apple-style-span" style="font-size:
  12px;">C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\InstallUtil.exe&nbsp;</span></span><br
  /><span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;">註: 執行 InstallUtil，另外再加入 /? 或 /help
  選項查看參數的使用方式。</span><br /><br /><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  small;"><span class="Apple-style-span" style="font-size: 12px;"><br
  /></span></span><br /><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: small;"><span
  class="Apple-style-span" style="font-size: 12px;">2. 執行 cmd
  指令&nbsp;</span></span><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 12px;">輸入
  InstallUtil.exe&nbsp;MySvc.exe</span><br /><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  12px;"><br /></span><br /><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 12px;">3.
  執行後如下</span><br /><div class="separator" style="clear: both; text-align:
  center;"><a
  href="http://3.bp.blogspot.com/_H5b1_vBT2Kw/TONoORwH_KI/AAAAAAAAA7M/jL6zU15HZNI/s1600/ScreenHunter_02+Nov.+17+13.28.gif"
  imageanchor="1" style="clear: left; float: left; margin-bottom: 1em;
  margin-right: 1em;"><img border="0" height="590"
  src="http://3.bp.blogspot.com/_H5b1_vBT2Kw/TONoORwH_KI/AAAAAAAAA7M/jL6zU15HZNI/s640/ScreenHunter_02+Nov.+17+13.28.gif"
  width="640" /></a></div><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 12px;"><br
  /></span><br /><div class="separator" style="clear: both; text-align:
  center;"></div><span class="Apple-style-span" style="font-family: Verdana,
  Geneva, Arial, Helvetica, sans-serif; font-size: small;"><span
  class="Apple-style-span" style="font-size: 12px;">註：InstallUtil.exe
  可以接受多個參數，讓你一次安裝多個 Windows 服務。不過如果其中一個服務安裝失敗，其他的服務都不會安裝（MCAD
  認證考試有考過這個觀念喔！）。</span></span><br /><span class="Apple-style-span"
  style="font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size:
  small;"><span class="Apple-style-span" style="font-size: 12px;"><br
  /></span></span><br /><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: small;"><span
  class="Apple-style-span" style="font-size: 12px;">4. 查看服務列</span></span><br
  /><div class="separator" style="clear: both; text-align: center;"><a
  href="http://1.bp.blogspot.com/_H5b1_vBT2Kw/TONqnymwY1I/AAAAAAAAA7Q/2i38KJKTayk/s1600/ScreenHunter_03+Nov.+17+13.39.gif"
  imageanchor="1" style="clear: left; float: left; margin-bottom: 1em;
  margin-right: 1em;"><img border="0" height="75"
  src="http://1.bp.blogspot.com/_H5b1_vBT2Kw/TONqnymwY1I/AAAAAAAAA7Q/2i38KJKTayk/s400/ScreenHunter_03+Nov.+17+13.39.gif"
  width="400" /></a></div><span class="Apple-style-span" style="font-family:
  Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: small;"><span
  class="Apple-style-span" style="font-size: 12px;"><br /></span></span><br
  /><span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;">引自</span></span><br /><a
  href="http://www.dotblogs.com.tw/huanlin/archive/2008/04/23/3195.aspx">http://www.dotblogs.com.tw/huanlin/archive/2008/04/23/3195.aspx</a><br
  /><a
  href="http://blog.miniasp.com/post/2009/06/09/How-to-stop-a-windows-service-from-within-itself.aspx#continue">http://blog.miniasp.com/post/2009/06/09/How-to-stop-a-windows-service-from-within-itself.aspx#continue</a><br
  /><a
  href="http://www.cnblogs.com/tuyile006/archive/2006/11/27/573654.html">http://www.cnblogs.com/tuyile006/archive/2006/11/27/573654.html</a><br
  /><a
  href="http://msdn.microsoft.com/en-us/library/system.timers.elapsedeventargs.aspx">http://msdn.microsoft.com/en-us/library/system.timers.elapsedeventargs.aspx</a><br
  /><a
  href="http://www.codeguru.com/forum/archive/index.php/t-333037.html">http://www.codeguru.com/forum/archive/index.php/t-333037.html</a><br
  /><br /><span class="Apple-style-span" style="font-family: Verdana, Geneva,
  Arial, Helvetica, sans-serif; font-size: small;"><span
  class="Apple-style-span" style="font-size: 12px;"><br /></span></span><br
  /><span class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: small;"><span class="Apple-style-span"
  style="font-size: 12px;"><br /></span></span><br /><span
  class="Apple-style-span" style="font-family: Verdana, Geneva, Arial,
  Helvetica, sans-serif; font-size: 12px;"><br /></span><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-11-17 13:51:00
---

最近一個案子 , 需要使用同步更新的處理 , 先前都是使用排程進行 , 但是覺的排程總是不太理想...所以...  
  
  
以下是一個簡單的範例教學，可以讓你快速體驗如何使用 Visual Studio 2005 撰寫一個 Windows Service 應用程式。  
  
  
****實作步驟****  
  
1\. 建立你的Windows Service 專案 , 例:MySvc , 並已撰寫好要讓 MySvc 做的事情  
  
  
2. 切到 Service1.cs 的 Design View，然後在設計畫面的空白處點右鍵，選「Add Installer」。  
  
  
3. 設定 serviceProcessInstaller1 的相關屬性，例如：Account，這個屬性是用來指定要執行這個 Windows 服務的使用者帳戶。你可以設定成 LocalSystem，以便使用系統帳戶來執行服務。  
  
  
4. 設定 serviceInstaller1 的相關屬性，例如：StartType、ServiceName、DisplayName。StartType 是服務的啟動類型，預設是 Manual，即手動啟動，如果你希望服務會在電腦開機之後就自動啟動，可以設定成 Automatic。  
  
  
5. 建置專案。  
  
  
**安裝已建立好的** MySvc  
  
  
你可以使用 .NET Framework 附的 InstallUtil.exe 命令列工具來安裝 Windows 服務：  
  
  
1\. 通常會在這個位置找到 InstallUtil.exe 命令列工具   
C:\\WINDOWS\\Microsoft.NET\\Framework\\v2.0.50727\\InstallUtil.exe   
  
  
  
註: 執行 InstallUtil，另外再加入 /? 或 /help 選項查看參數的使用方式。  
  
  
  
2\. 執行 cmd 指令 輸入 InstallUtil.exe MySvc.exe  
  
  
3\. 執行後如下  

[![](http://3.bp.blogspot.com/_H5b1_vBT2Kw/TONoORwH_KI/AAAAAAAAA7M/jL6zU15HZNI/s640/ScreenHunter_02+Nov.+17+13.28.gif)](http://3.bp.blogspot.com/_H5b1_vBT2Kw/TONoORwH_KI/AAAAAAAAA7M/jL6zU15HZNI/s1600/ScreenHunter_02+Nov.+17+13.28.gif)

  
  

註：InstallUtil.exe 可以接受多個參數，讓你一次安裝多個 Windows 服務。不過如果其中一個服務安裝失敗，其他的服務都不會安裝（MCAD 認證考試有考過這個觀念喔！）。  
  
  
4\. 查看服務列  

[![](http://1.bp.blogspot.com/_H5b1_vBT2Kw/TONqnymwY1I/AAAAAAAAA7Q/2i38KJKTayk/s400/ScreenHunter_03+Nov.+17+13.39.gif)](http://1.bp.blogspot.com/_H5b1_vBT2Kw/TONqnymwY1I/AAAAAAAAA7Q/2i38KJKTayk/s1600/ScreenHunter_03+Nov.+17+13.39.gif)

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
引自  
[http://www.dotblogs.com.tw/huanlin/archive/2008/04/23/3195.aspx](http://www.dotblogs.com.tw/huanlin/archive/2008/04/23/3195.aspx)  
[http://blog.miniasp.com/post/2009/06/09/How-to-stop-a-windows-service-from-within-itself.aspx#continue](http://blog.miniasp.com/post/2009/06/09/How-to-stop-a-windows-service-from-within-itself.aspx#continue)  
[http://www.cnblogs.com/tuyile006/archive/2006/11/27/573654.html](http://www.cnblogs.com/tuyile006/archive/2006/11/27/573654.html)  
[http://msdn.microsoft.com/en-us/library/system.timers.elapsedeventargs.aspx](http://msdn.microsoft.com/en-us/library/system.timers.elapsedeventargs.aspx)  
[http://www.codeguru.com/forum/archive/index.php/t-333037.html](http://www.codeguru.com/forum/archive/index.php/t-333037.html)  
  
  
  
  
  
  
  
  
  
  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
