---
title: JSON (javascript object notation)
tags:
  - javascript
excerpt: >-
  <b>JSON</b>（<b>J</b>ava<b>s</b>cript <b>O</b>bject
  <b>N</b>otation）是一種輕量級的資料交換語言，以文字為基礎，且易於讓人閱讀。儘管JSON是在Javascript的一個子集，但JSON是獨立於語言的文本格式，並且採用了類似於C語言家族的一些習慣。<br
  /><br />下列 javascript code是生成JSON的資料結構方式<br /><br />Ex1:<br /><pre
  class="brush: js;">var mailingAddress = { <br />     "Address"    :   "123
  Anywhere St.", <br />     "City"       :   "Springfield", <br />    
  "PostalCode" :   99999<br />};<br /><br />alert("The package will be shipped
  to postal code " + mailingAddress.PostalCode);<br /><br />};<br /><br
  /></pre><br />Ex2:<br /><pre class="brush: js;">var contact = {<br />    
  "Name": "John Doe",<br />     "PermissionToCall": true,<br />    
  "PhoneNumbers": [ <br />       {<br />           "Location": "Home",<br
  />           "Number": "555-555-1234"<br />       },<br />       {<br
  />           "Location": "Work",<br />           "Number": "555-555-9999 Ext.
  123"<br />       }<br />     ]<br />};<br />if (contact.PermissionToCall)<br
  />{<br />  alert("Call " + contact.Name + " at " +
  contact.PhoneNumbers[0].Number);<br />}<br /><br /></pre><br
  />下方幾個引用位置是不錯的學習地方 , 在此就不做範例過程<br /><br />JSON in javascript<br /><a
  href="http://www.json.org/js.html"
  target="_blank">http://www.json.org/js.html</a><br /><br />JSON + jQuery
  +Asp.Net C# 使用心得<br /><a
  href="http://chrisbalboa.pixnet.net/blog/post/30161616"
  target="_blank">http://chrisbalboa.pixnet.net/blog/post/30161616</a><br /><br
  />An Introduction to JavaScript Object Notation (JSON) in JavaScript and
  .NET<br /><a href="http://msdn.microsoft.com/en-us/library/bb299886.aspx"
  target="_blank">http://msdn.microsoft.com/en-us/library/bb299886.aspx</a><br
  /><br />jQuery.getJSON()<br /><a
  href="http://api.jquery.com/jQuery.getJSON/#urldatacallback"
  target="_blank">http://api.jquery.com/jQuery.getJSON/#urldatacallback</a><br
  /><br />ASP.NET的JSON日期轉換<br /><a
  href="http://blog.darkthread.net/blogs/darkthreadtw/archive/2010/04/21/asp-net-json.aspx"
  target="_blank">http://blog.darkthread.net/blogs/darkthreadtw/archive/2010/04/21/asp-net-json.aspx</a><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-11-18 16:52:00
---

**JSON**（**J**ava**s**cript **O**bject **N**otation）是一種輕量級的資料交換語言，以文字為基礎，且易於讓人閱讀。儘管JSON是在Javascript的一個子集，但JSON是獨立於語言的文本格式，並且採用了類似於C語言家族的一些習慣。  
  
下列 javascript code是生成JSON的資料結構方式  
  
Ex1:  

var mailingAddress = {   
     "Address"    :   "123 Anywhere St.",   
     "City"       :   "Springfield",   
     "PostalCode" :   99999  
};  
  
alert("The package will be shipped to postal code " + mailingAddress.PostalCode);  
  
};  
  

  
Ex2:  

var contact = {  
     "Name": "John Doe",  
     "PermissionToCall": true,  
     "PhoneNumbers": \[   
       {  
           "Location": "Home",  
           "Number": "555-555-1234"  
       },  
       {  
           "Location": "Work",  
           "Number": "555-555-9999 Ext. 123"  
       }  
     \]  
};  
if (contact.PermissionToCall)  
{  
  alert("Call " + contact.Name + " at " + contact.PhoneNumbers\[0\].Number);  
}  
  

  
下方幾個引用位置是不錯的學習地方 , 在此就不做範例過程  
  
JSON in javascript  
[http://www.json.org/js.html](http://www.json.org/js.html)  
  
JSON + jQuery +Asp.Net C# 使用心得  
[http://chrisbalboa.pixnet.net/blog/post/30161616](http://chrisbalboa.pixnet.net/blog/post/30161616)  
  
An Introduction to JavaScript Object Notation (JSON) in JavaScript and .NET  
[http://msdn.microsoft.com/en-us/library/bb299886.aspx](http://msdn.microsoft.com/en-us/library/bb299886.aspx)  
  
jQuery.getJSON()  
[http://api.jquery.com/jQuery.getJSON/#urldatacallback](http://api.jquery.com/jQuery.getJSON/#urldatacallback)  
  
ASP.NET的JSON日期轉換  
[http://blog.darkthread.net/blogs/darkthreadtw/archive/2010/04/21/asp-net-json.aspx](http://blog.darkthread.net/blogs/darkthreadtw/archive/2010/04/21/asp-net-json.aspx)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
