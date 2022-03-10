---
title: Asp.net Cross Site Script攻擊 解決辦法
tags:
  - ASP.NET
  - javascript
excerpt: >-
  最近在想辦法去解決Cross Stie Script Attack~<br /><br />先小小的解說一下什麼是Cross Site Script
  ~<br /><br />假設~你今天的網站有個留言板~<br /><br />那我今天是個無聊男子~<br /><br
  />我在你的流言裡打入javascript~<br /><br />例如:<br /><br
  />那之後當有人要瀏覽你的這份留言時~開啟網頁後~不好意思~你就被種了一個子網頁在這頁面中~<br /><br
  />然後這頁面會指向yahoo~當然這例子是沒有威脅性的~<br /><br />那要是我指向的網頁是帶有病毒的呢?或者是一個釣魚網站呢?<br /><br
  />凡事只要是script都可以被植入~就連最簡單的~我在你的留言板中留下<br /><br /> <br /><br />那瀏覽時就會跳出訊息~<br
  /><br />那當你是javascript高手~可想而知這後果有啥~很好去突破你的個人資訊~<br /><br />那要怎麼去解決呢?<br /><br
  />首先~<br /><br />很高興的是.net framework2.0中已經有幫忙注意這點了~(1.1並沒有)<br /><br
  />當你在page物件中有個屬性叫ValidateRequest~當你把它設成true後~<br /><br
  />每當potsback執行時~會先判斷你的輸入欄位中~是否有輸入html或者script的tag<br /><br
  />當發現有的時候~直接出現錯誤說明這具有攻擊行為~<br /><br />當然這是防止輸入的部份~能把這段攻擊碼值入你的系統中有很多方式~<br
  /><br />所以output也要去防止~那微軟有個library叫Microsoft Anti-Cross Site Scripting Library
  V1.5<br /><br />可至http://msdn.microsoft.com/en-us/library/aa973813.aspx中查閱~<br
  /><br />這元件是用來防止output的~<br /><br />剛剛以有玩過一下~<br /><br
  />首先將AntiXssLibrary.dll加入參考至你的專案中~<br /><br />using
  Microsoft.Security.Application;<br /><br />那在你需要輸出的欄位中<br /><br />Label1.Text
  =AntiXss.HtmlEncode( dt.Rows[0]["UserID"].ToString());<br /><br
  />這樣在畫面上就只會顯示出你的攻擊碼~<br /><br />就只把你的攻擊script當成一個字串而不是一個指令~<br /><br
  />詳細可參考微軟的網站~<br /><br />事實上它只是去做encode，但這就能做到基礎的防護了~<br /><br
  />不只html~script也能encode~<br /><br />在這分享給大家~也希望大家在codeing的時候能夠注意到這問題<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-10-21 18:18:00
---

最近在想辦法去解決Cross Stie Script Attack~  
  
先小小的解說一下什麼是Cross Site Script ~  
  
假設~你今天的網站有個留言板~  
  
那我今天是個無聊男子~  
  
我在你的流言裡打入javascript~  
  
例如:  
  
那之後當有人要瀏覽你的這份留言時~開啟網頁後~不好意思~你就被種了一個子網頁在這頁面中~  
  
然後這頁面會指向yahoo~當然這例子是沒有威脅性的~  
  
那要是我指向的網頁是帶有病毒的呢?或者是一個釣魚網站呢?  
  
凡事只要是script都可以被植入~就連最簡單的~我在你的留言板中留下  
  
  
  
那瀏覽時就會跳出訊息~  
  
那當你是javascript高手~可想而知這後果有啥~很好去突破你的個人資訊~  
  
那要怎麼去解決呢?  
  
首先~  
  
很高興的是.net framework2.0中已經有幫忙注意這點了~(1.1並沒有)  
  
當你在page物件中有個屬性叫ValidateRequest~當你把它設成true後~  
  
每當potsback執行時~會先判斷你的輸入欄位中~是否有輸入html或者script的tag  
  
當發現有的時候~直接出現錯誤說明這具有攻擊行為~  
  
當然這是防止輸入的部份~能把這段攻擊碼值入你的系統中有很多方式~  
  
所以output也要去防止~那微軟有個library叫Microsoft Anti-Cross Site Scripting Library V1.5  
  
可至http://msdn.microsoft.com/en-us/library/aa973813.aspx中查閱~  
  
這元件是用來防止output的~  
  
剛剛以有玩過一下~  
  
首先將AntiXssLibrary.dll加入參考至你的專案中~  
  
using Microsoft.Security.Application;  
  
那在你需要輸出的欄位中  
  
Label1.Text =AntiXss.HtmlEncode( dt.Rows\[0\]\["UserID"\].ToString());  
  
這樣在畫面上就只會顯示出你的攻擊碼~  
  
就只把你的攻擊script當成一個字串而不是一個指令~  
  
詳細可參考微軟的網站~  
  
事實上它只是去做encode，但這就能做到基礎的防護了~  
  
不只html~script也能encode~  
  
在這分享給大家~也希望大家在codeing的時候能夠注意到這問題

Copyright © Bruce Huang All rights reserved.
<!-- more -->
