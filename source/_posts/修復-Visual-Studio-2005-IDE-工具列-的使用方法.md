---
title: 修復 Visual Studio 2005 IDE 工具列 的使用方法
tags:
  - ASP.NET
  - Windows 相關
  - 軟体應用相關
excerpt: >-
  如果 Visual Studio 在運行時被損壞(例如工具列無法使用)，且無法從損壞狀態進行恢復，您可以使用此參數將 Visual Studio
  重置到其使用之初的狀態。這些問題的例子可能包括：視窗佈局檔被破壞、功能表自定義檔被破壞，或者鍵盤快捷方式檔被破壞。免責聲明：如果使用此參數，您將丟失所有的環境設置和自定義設置。出於這個原因，Microsoft
  不公開支持使用此參數，而且也沒有將這個參數公之於眾（如果在命令提示行中鍵入 devenv.exe
  /?，您不會看到顯示此參數）。如果遇到環境方面的問題，應該將這個方法作為不得已而為之的辦法，並且確保在使用此參數前，已通過導出環境設置對其進行了備份。<br
  /><br />要使用此參數，請執行以下操作：<br /><br />1.關閉所有 Visual Studio 2005 實例。 <br /><br
  />2.單擊 <b>開始</b>，選擇 <b>執行</b><br /><br />3.輸入 devenv.exe /resetuserdata<br
  /><br />此命令會運行幾分鐘時間，與此同時，Visual Studio 清除設置並將其自身重置到其最初的狀態。此時，您可以打開“任務管理器”來檢查
  devenv.exe 進程是否仍在運行。在結束運行後，可以重新啟動 Visual Studio。此時會再次出現首次啟動對話方塊，就像在電腦上第一次運行
  Visual Studio 一樣。<div class="blogger-post-footer">Copyright © Bruce Huang All
  rights reserved.</div>
date: 2010-06-08 10:22:00
---

如果 Visual Studio 在運行時被損壞(例如工具列無法使用)，且無法從損壞狀態進行恢復，您可以使用此參數將 Visual Studio 重置到其使用之初的狀態。這些問題的例子可能包括：視窗佈局檔被破壞、功能表自定義檔被破壞，或者鍵盤快捷方式檔被破壞。免責聲明：如果使用此參數，您將丟失所有的環境設置和自定義設置。出於這個原因，Microsoft 不公開支持使用此參數，而且也沒有將這個參數公之於眾（如果在命令提示行中鍵入 devenv.exe /?，您不會看到顯示此參數）。如果遇到環境方面的問題，應該將這個方法作為不得已而為之的辦法，並且確保在使用此參數前，已通過導出環境設置對其進行了備份。  
  
要使用此參數，請執行以下操作：  
  
1.關閉所有 Visual Studio 2005 實例。  
  
2.單擊 **開始**，選擇 **執行**  
  
3.輸入 devenv.exe /resetuserdata  
  
此命令會運行幾分鐘時間，與此同時，Visual Studio 清除設置並將其自身重置到其最初的狀態。此時，您可以打開“任務管理器”來檢查 devenv.exe 進程是否仍在運行。在結束運行後，可以重新啟動 Visual Studio。此時會再次出現首次啟動對話方塊，就像在電腦上第一次運行 Visual Studio 一樣。

Copyright © Bruce Huang All rights reserved.
<!-- more -->
