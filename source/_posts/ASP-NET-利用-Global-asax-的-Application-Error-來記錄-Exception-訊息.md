---
title: ASP.NET 利用 Global.asax 的 Application_Error 來記錄 Exception 訊息
tags:
  - ASP.NET
  - C#
  - Windows 相關
excerpt: >-
  利用 windows 的事件記錄器替我們做好記錄<br /><br />錄網頁Exception訊息的方法有多種..在此介紹三種儲存方式...<br
  />1.記錄在事件檢視器裡<br />2.記錄在文字檔裡<br />3.用Email寄出訊息<br /><br /><br />1. 於應用程式中建立
  global.asax , 在 application_error 事件中加入下列 <br /><br />void
  Application_Error(object sender, EventArgs e)<br />{<br /><br />string Message
  = "";<br />Exception ex = Server.GetLastError();<br />Message =
  "發生錯誤的網頁:{0}錯誤訊息:{1}堆疊內容:{2}";<br />Message = String.Format(Message,
  Request.Path + Environment.NewLine, ex.GetBaseException().Message +
  Environment.NewLine, Environment.NewLine + ex.StackTrace);<br /><br
  />//寫入事件撿視器,方法一<br />System.Diagnostics.EventLog.WriteEntry("WebAppError",
  Message, System.Diagnostics.EventLogEntryType.Error);<br /><br
  />//寫入文字檔,方法二<br
  />System.IO.File.AppendAllText(Server.MapPath(string.Format("Log\\{0}.txt",
  DateTime.Now.Ticks.ToString())), Message);<br /><br />//寄出Email,方法三<br
  />//此方法請參考System.Net.Mail.MailMessage<br /><br />//清除Error<br
  />Server.ClearError();<br /><br />Response.Write("系統錯誤,請聯絡系統管理員!!");<br /><br
  />}<br /><br /><br />2. 於一個新網頁中加入, 產生一個Null Exception 錯誤<br />protected void
  Page_Load(object sender, EventArgs e)<br />{<br />throw (new
  ArgumentNullException());<br />}<br /><br /><br />3. 事件檢視器內容<br /><br /><br
  /><div class="separator" style="clear: both; text-align: center;"><a
  href="http://3.bp.blogspot.com/_H5b1_vBT2Kw/SvfgJOm5lxI/AAAAAAAAA5s/dH7RQCaSw_w/s1600-h/imgc01+2009.11.09+17.24.46.gif"
  imageanchor="1" style="clear: left; cssfloat: left; float: left;
  margin-bottom: 1em; margin-right: 1em;"><img border="0" sr="true"
  src="http://3.bp.blogspot.com/_H5b1_vBT2Kw/SvfgJOm5lxI/AAAAAAAAA5s/dH7RQCaSw_w/s640/imgc01+2009.11.09+17.24.46.gif"
  /></a><br /></div><br /><br /><br /><br /><br /><br /><br /><br /><img
  height="30"
  src="http://3.bp.blogspot.com/_H5b1_vBT2Kw/SvfgJOm5lxI/AAAAAAAAA5s/dH7RQCaSw_w/s640/imgc01+2009.11.09+17.24.46.gif"
  style="filter: alpha(opacity=30); left: 57px; mozopacity: 0.3; opacity: 0.3;
  position: absolute; top: 961px; visibility: hidden;" width="96" /><br /><br
  /><br /><br />4. 文字內容<br /><br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="http://2.bp.blogspot.com/_H5b1_vBT2Kw/SvfgzKFoEcI/AAAAAAAAA50/uRyjPpz0X2E/s1600-h/imgc02+2009.11.09+17.28.41.gif"
  imageanchor="1" style="clear: left; cssfloat: left; float: left;
  margin-bottom: 1em; margin-right: 1em;"><img border="0" sr="true"
  src="http://2.bp.blogspot.com/_H5b1_vBT2Kw/SvfgzKFoEcI/AAAAAAAAA50/uRyjPpz0X2E/s400/imgc02+2009.11.09+17.28.41.gif"
  /></a><br /></div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br
  />5. 完成了 , 收工~~*-*<br /><br /><br /><br />參考來源 : <br
  />http://www.dotblogs.com.tw/puma/archive/2008/08/31/5260.aspx<br
  />http://www.blueshop.com.tw/board/show.asp?
  subcde=BRD20080822113331G86&fumcde=FUM20041006161839LRJ<br
  />http://support.microsoft.com/kb/306355/zh-tw<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-11-09 17:29:00
---

利用 windows 的事件記錄器替我們做好記錄  
  
錄網頁Exception訊息的方法有多種..在此介紹三種儲存方式...  
1.記錄在事件檢視器裡  
2.記錄在文字檔裡  
3.用Email寄出訊息  
  
  
1\. 於應用程式中建立 global.asax , 在 application\_error 事件中加入下列  
  
void Application\_Error(object sender, EventArgs e)  
{  
  
string Message = "";  
Exception ex = Server.GetLastError();  
Message = "發生錯誤的網頁:{0}錯誤訊息:{1}堆疊內容:{2}";  
Message = String.Format(Message, Request.Path + Environment.NewLine, ex.GetBaseException().Message + Environment.NewLine, Environment.NewLine + ex.StackTrace);  
  
//寫入事件撿視器,方法一  
System.Diagnostics.EventLog.WriteEntry("WebAppError", Message, System.Diagnostics.EventLogEntryType.Error);  
  
//寫入文字檔,方法二  
System.IO.File.AppendAllText(Server.MapPath(string.Format("Log\\\\{0}.txt", DateTime.Now.Ticks.ToString())), Message);  
  
//寄出Email,方法三  
//此方法請參考System.Net.Mail.MailMessage  
  
//清除Error  
Server.ClearError();  
  
Response.Write("系統錯誤,請聯絡系統管理員!!");  
  
}  
  
  
2\. 於一個新網頁中加入, 產生一個Null Exception 錯誤  
protected void Page\_Load(object sender, EventArgs e)  
{  
throw (new ArgumentNullException());  
}  
  
  
3\. 事件檢視器內容  
  
  

[![](http://3.bp.blogspot.com/_H5b1_vBT2Kw/SvfgJOm5lxI/AAAAAAAAA5s/dH7RQCaSw_w/s640/imgc01+2009.11.09+17.24.46.gif)](http://3.bp.blogspot.com/_H5b1_vBT2Kw/SvfgJOm5lxI/AAAAAAAAA5s/dH7RQCaSw_w/s1600-h/imgc01+2009.11.09+17.24.46.gif)  

  
  
  
  
  
  
  
  
![](http://3.bp.blogspot.com/_H5b1_vBT2Kw/SvfgJOm5lxI/AAAAAAAAA5s/dH7RQCaSw_w/s640/imgc01+2009.11.09+17.24.46.gif)  
  
  
  
4\. 文字內容  
  

[![](http://2.bp.blogspot.com/_H5b1_vBT2Kw/SvfgzKFoEcI/AAAAAAAAA50/uRyjPpz0X2E/s400/imgc02+2009.11.09+17.28.41.gif)](http://2.bp.blogspot.com/_H5b1_vBT2Kw/SvfgzKFoEcI/AAAAAAAAA50/uRyjPpz0X2E/s1600-h/imgc02+2009.11.09+17.28.41.gif)  

  
  
  
  
  
  
  
  
  
  
5\. 完成了 , 收工~~\*-\*  
  
  
  
參考來源 :  
http://www.dotblogs.com.tw/puma/archive/2008/08/31/5260.aspx  
http://www.blueshop.com.tw/board/show.asp? subcde=BRD20080822113331G86&fumcde=FUM20041006161839LRJ  
http://support.microsoft.com/kb/306355/zh-tw

Copyright © Bruce Huang All rights reserved.
<!-- more -->
