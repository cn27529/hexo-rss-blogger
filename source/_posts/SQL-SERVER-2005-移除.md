---
title: SQL SERVER 2005 移除
tags:
  - MS-SQL
excerpt: >-
  這是移除時的流程筆記，想當初我第一次移除SQL SERVER
  2005的時候，花了我一整天的時間哩～本來還差點移不掉的說，一直狂google文章才好不容易移除乾淨。一開始移除時候，以為非常簡單的從「控制台」－＞「新增移除程式」裡直接勾選就OK了～沒想到因為當初安裝的時候還有一堆雜七雜八的附屬程式，如果只移除本體其他附屬程式就會出大問題...搞得我內心有陰影，一直不敢移除SQL
  SERVER 2005...<br /><br
  />這次要移除前學聰明了，先去google了一下移除方法，微軟官方網站正好有手動移除；就參考他的步驟，一步一步走走看囉。<br /><br
  />１、備份資料：移除前當然要先把之前所記錄的資料備份一下囉。<br /><br />２、停止所有的SQL SERVER服務：為了避免在移除過程中，SQL
  SERVER仍在執行導致無法正確移除；所以要先關閉它的所有服務。從「我的電腦」－＞「滑鼠右鍵」－＞「管理」－＞「服務」把所有SQL
  SERVER的服務停止，這樣就OK啦。<br /><br />３、在命令提示字元下，輸入" cd\Program Files\Microsoft SQL
  Server\90\Setup Bootstrap\ARPWrapper.exe /Remove"。<br /><br />４、選擇移除所有SQL
  SERVER 2005相關檔案。<br /><br
  />５、一段不算短的移除時間。移除完以後就OK啦！最後再將「控制台」－＞「新增移除程式」－＞「Microsoft SQL Server Native
  Client 元件」解除安裝；所有的SQL SERVER 2005就算移除完畢囉！<br /><br
  />沒想到這麼容易，當初真的應該要先google一下的～^^<br /><br />引用自 : <a
  href="http://blog.roodo.com/taikobo0/archives/5742105.html"
  target="_blank">http://blog.roodo.com/taikobo0/archives/5742105.html</a><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-05-27 10:31:00
---

這是移除時的流程筆記，想當初我第一次移除SQL SERVER 2005的時候，花了我一整天的時間哩～本來還差點移不掉的說，一直狂google文章才好不容易移除乾淨。一開始移除時候，以為非常簡單的從「控制台」－＞「新增移除程式」裡直接勾選就OK了～沒想到因為當初安裝的時候還有一堆雜七雜八的附屬程式，如果只移除本體其他附屬程式就會出大問題...搞得我內心有陰影，一直不敢移除SQL SERVER 2005...  
  
這次要移除前學聰明了，先去google了一下移除方法，微軟官方網站正好有手動移除；就參考他的步驟，一步一步走走看囉。  
  
１、備份資料：移除前當然要先把之前所記錄的資料備份一下囉。  
  
２、停止所有的SQL SERVER服務：為了避免在移除過程中，SQL SERVER仍在執行導致無法正確移除；所以要先關閉它的所有服務。從「我的電腦」－＞「滑鼠右鍵」－＞「管理」－＞「服務」把所有SQL SERVER的服務停止，這樣就OK啦。  
  
３、在命令提示字元下，輸入" cd\\Program Files\\Microsoft SQL Server\\90\\Setup Bootstrap\\ARPWrapper.exe /Remove"。  
  
４、選擇移除所有SQL SERVER 2005相關檔案。  
  
５、一段不算短的移除時間。移除完以後就OK啦！最後再將「控制台」－＞「新增移除程式」－＞「Microsoft SQL Server Native Client 元件」解除安裝；所有的SQL SERVER 2005就算移除完畢囉！  
  
沒想到這麼容易，當初真的應該要先google一下的～^^  
  
引用自 : [http://blog.roodo.com/taikobo0/archives/5742105.html](http://blog.roodo.com/taikobo0/archives/5742105.html)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
