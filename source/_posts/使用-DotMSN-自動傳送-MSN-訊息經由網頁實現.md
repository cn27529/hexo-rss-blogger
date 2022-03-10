---
title: 使用 DotMSN 自動傳送 MSN 訊息經由網頁實現
tags:
  - ASP.NET
  - DotNet Library
  - Windows 相關
excerpt: >-
  一般系統大致上都會以郵方式來傳送系統訊息來告知使用者，讓使用者得知系統消息，今天試驗了以MSN方式來達到相同目的。<br /><br
  />DotMSN是一個開放源碼獨立類庫提供連接與 MSN
  Messenger服務。該庫是建立在C＃中，因此可以被所有的語言。NET環境的支持。因為一個乾淨自然的面向對象方法的庫是易於使用和實施。
  DotMSN的設計是一個靈活，可靠，重量輕的增強任何應用程序。不同的應用 DotMSN從創建消息機器人到創建自定義客戶端。如果您的應用程序需要通過
  Messenger服務通信，DotMSN是您的工具。<br /><br />這是<a target="_blank"
  href="http://msluder.dk/DOTMSN/#download">DotMSN</a>的網站，看見它的Changelog後發現最後更新是2004年，天阿
  !，已經5年沒有Changelog了，是不是代表已經沒有在維護了...XD...哈<br /><br
  />先前已經下載試用後正常，才反應這文章的，以下是使用實例<br /><br />1. <br />加入 DotMSN.dll 為專案參考<br /><br
  />2.<br />oMessenger = new Messenger();<br />oMessenger.Connect("你的msn帳號",
  "你的msn密碼");<br />oMessenger.Owner.Name = "你的msn暱稱";<br
  />oMessenger.SynchronizeList();<br />System.Threading.Thread.Sleep(2000);<br
  />oMessenger.SetStatus(MSNStatus.Online);<br
  />System.Threading.Thread.Sleep(1000);<br />Conversation oConversation =
  oMessenger.RequestConversation("對方之MSN帳號");<br
  />System.Threading.Thread.Sleep(2000);<br
  />oConversation.SendMessage(msnBody);<br
  />System.Threading.Thread.Sleep(1000);<br />oMessenger.CloseConnection(); <br
  /><br /><br />引自: <a
  href="http://roxsu.blogspot.com/2007/05/msn-messenger-aspnet.html"
  target="_blank">http://roxsu.blogspot.com/2007/05/msn-messenger-aspnet.html</a><br
  /><a target="_blank"
  href="http://msluder.dk/DOTMSN/#download">http://msluder.dk/DOTMSN/#download</a><br
  /><a href="http://www.xihsolutions.net/dotmsn/index.html"
  target="_blank">http://www.xihsolutions.net/dotmsn/index.html</a><br /><a
  href="http://www.xihsolutions.net/dotmsn/download.html"
  target="_blank">http://www.xihsolutions.net/dotmsn/download.html</a><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-11-22 14:35:00
---

一般系統大致上都會以郵方式來傳送系統訊息來告知使用者，讓使用者得知系統消息，今天試驗了以MSN方式來達到相同目的。  
  
DotMSN是一個開放源碼獨立類庫提供連接與 MSN Messenger服務。該庫是建立在C＃中，因此可以被所有的語言。NET環境的支持。因為一個乾淨自然的面向對象方法的庫是易於使用和實施。 DotMSN的設計是一個靈活，可靠，重量輕的增強任何應用程序。不同的應用 DotMSN從創建消息機器人到創建自定義客戶端。如果您的應用程序需要通過 Messenger服務通信，DotMSN是您的工具。  
  
這是[DotMSN](http://msluder.dk/DOTMSN/#download)的網站，看見它的Changelog後發現最後更新是2004年，天阿 !，已經5年沒有Changelog了，是不是代表已經沒有在維護了...XD...哈  
  
先前已經下載試用後正常，才反應這文章的，以下是使用實例  
  
1.  
加入 DotMSN.dll 為專案參考  
  
2.  
oMessenger = new Messenger();  
oMessenger.Connect("你的msn帳號", "你的msn密碼");  
oMessenger.Owner.Name = "你的msn暱稱";  
oMessenger.SynchronizeList();  
System.Threading.Thread.Sleep(2000);  
oMessenger.SetStatus(MSNStatus.Online);  
System.Threading.Thread.Sleep(1000);  
Conversation oConversation = oMessenger.RequestConversation("對方之MSN帳號");  
System.Threading.Thread.Sleep(2000);  
oConversation.SendMessage(msnBody);  
System.Threading.Thread.Sleep(1000);  
oMessenger.CloseConnection();  
  
  
引自: [http://roxsu.blogspot.com/2007/05/msn-messenger-aspnet.html](http://roxsu.blogspot.com/2007/05/msn-messenger-aspnet.html)  
[http://msluder.dk/DOTMSN/#download](http://msluder.dk/DOTMSN/#download)  
[http://www.xihsolutions.net/dotmsn/index.html](http://www.xihsolutions.net/dotmsn/index.html)  
[http://www.xihsolutions.net/dotmsn/download.html](http://www.xihsolutions.net/dotmsn/download.html)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
