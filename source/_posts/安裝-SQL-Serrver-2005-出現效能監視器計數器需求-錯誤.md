---
title: 安裝 SQL Serrver 2005 出現效能監視器計數器需求 (錯誤)
tags:
  - MS-SQL
excerpt: >-
  請依照下列步驟進行設定：<br />1.依序按一下「開始」和「執行」，在「開啟」中輸入 regedit，然後按一下「確定」按鈕。<br /><br
  />2.在「登錄編輯器」，找到下列機碼：<br />HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows
  NT\CurrentVersion\Perflib<br />您會發現如下這兩個機碼名稱與機碼值（您的機碼值可能跟我的不一樣，那沒有關係）：<br
  />Last Counter=00001dd2 (7634)<br />LastHelp=00001dd3 (7635)<br /><br
  />3.接著將展開「004」該節點，在右邊窗格中的 Counter
  機碼上，用滑鼠連按兩次來察看其最大值是多少（如圖所示），將捲軸拉到最下面，以本圖為例，最大值為 7635。<br /><br />4.回到步驟 2 中，確認
  Last Help 值 (7635) 必須符合上個步驟 Perflib\009 中的 Help 機碼的最大值 7635。<br />若不符何時，請修改步驟
  2 中的 Last Counter 值和 Last Help 值，修改方式如下：<br />a.以滑鼠右鍵按一下右邊窗格中的 Last Help
  ，連按兩下滑鼠左鍵，接著按一下 底數 下面的 ○ 十進位(D)，在 數值資料 文字方塊中，鍵入設定值 7635 （此數值請依照您實際的環境鍵入），然後按一下
  [確定]。<br />b.以滑鼠右鍵按一下右邊窗格中的 Last Counter ，連按兩下滑鼠左鍵，接著按一下 底數 下面的 ○ 十進位(D)，在
  數值資料 文字方塊中，鍵入設定值 7634 （此數值請依照您實際的環境鍵入），然後按一下 [確定]。<br />c.關閉 [登錄編輯器]。<br /><br
  />5.重新執行 SQL Server 安裝程式。<br
  />http://forums.microsoft.com/MSDN-CHT/ShowPost.aspx?PostID=679903&SiteID=14<br
  />這樣就不用在重慣了，之前同學還叫我連xp也重灌呢<div class="blogger-post-footer">Copyright © Bruce
  Huang All rights reserved.</div>
date: 2009-05-27 11:09:00
---

請依照下列步驟進行設定：  
1.依序按一下「開始」和「執行」，在「開啟」中輸入 regedit，然後按一下「確定」按鈕。  
  
2.在「登錄編輯器」，找到下列機碼：  
HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Perflib  
您會發現如下這兩個機碼名稱與機碼值（您的機碼值可能跟我的不一樣，那沒有關係）：  
Last Counter=00001dd2 (7634)  
LastHelp=00001dd3 (7635)  
  
3.接著將展開「004」該節點，在右邊窗格中的 Counter 機碼上，用滑鼠連按兩次來察看其最大值是多少（如圖所示），將捲軸拉到最下面，以本圖為例，最大值為 7635。  
  
4.回到步驟 2 中，確認 Last Help 值 (7635) 必須符合上個步驟 Perflib\\009 中的 Help 機碼的最大值 7635。  
若不符何時，請修改步驟 2 中的 Last Counter 值和 Last Help 值，修改方式如下：  
a.以滑鼠右鍵按一下右邊窗格中的 Last Help ，連按兩下滑鼠左鍵，接著按一下 底數 下面的 ○ 十進位(D)，在 數值資料 文字方塊中，鍵入設定值 7635 （此數值請依照您實際的環境鍵入），然後按一下 \[確定\]。  
b.以滑鼠右鍵按一下右邊窗格中的 Last Counter ，連按兩下滑鼠左鍵，接著按一下 底數 下面的 ○ 十進位(D)，在 數值資料 文字方塊中，鍵入設定值 7634 （此數值請依照您實際的環境鍵入），然後按一下 \[確定\]。  
c.關閉 \[登錄編輯器\]。  
  
5.重新執行 SQL Server 安裝程式。  
http://forums.microsoft.com/MSDN-CHT/ShowPost.aspx?PostID=679903&SiteID=14  
這樣就不用在重慣了，之前同學還叫我連xp也重灌呢

Copyright © Bruce Huang All rights reserved.
<!-- more -->
