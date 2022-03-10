---
title: 'JSON.stringify(), JSON資料轉字串'
tags:
  - javascript
  - jQuery
  - JSON
excerpt: >-
  JSON.stringify(), JSON資料轉字串  <pre class="prettyprint"><br /><br />//JSON資料<br
  />var data = { <br />  "name": "jsbin",<br />  "age": 99,<br />  "birthday":
  "1988/02/02",<br />  "mails": {"home": "hotmail@mail.com", "work":
  "yahoo@mail.com"},<br />  "phones": {"mobile": "0923456789", "home":
  "048353868" }<br />}<br /><br />//轉字串<br />var json_str =
  JSON.stringify(data);<br />alert(json_str);<br /><br /></pre>  JSON.parse(),
  將字串JSON物件 <pre class="prettyprint"><br /><br />//JSON string <br />var
  json_str = '{"name":"jsbin","age":99,"birthday":"1988/02/02"';<br
  />json_str.concat(',"mails":{"home":"hotmail@mail.com","work":"yahoo@mail.com"}');<br
  />json_str.concat(',"phones":{"mobile":"0923456789","home":"048353868"}}');<br
  /><br />//轉JSON物件<br />var json = JSON.parse(json_str);<br
  />alert(json.mails.home);<br /><br /></pre> 收工<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2016-03-22 11:32:00
---

JSON.stringify(), JSON資料轉字串

  
  
//JSON資料  
var data = {   
  "name": "jsbin",  
  "age": 99,  
  "birthday": "1988/02/02",  
  "mails": {"home": "hotmail@mail.com", "work": "yahoo@mail.com"},  
  "phones": {"mobile": "0923456789", "home": "048353868" }  
}  
  
//轉字串  
var json\_str = JSON.stringify(data);  
alert(json\_str);  
  

JSON.parse(), 將字串JSON物件

  
  
//JSON string   
var json\_str = '{"name":"jsbin","age":99,"birthday":"1988/02/02"';  
json\_str.concat(',"mails":{"home":"hotmail@mail.com","work":"yahoo@mail.com"}');  
json\_str.concat(',"phones":{"mobile":"0923456789","home":"048353868"}}');  
  
//轉JSON物件  
var json = JSON.parse(json\_str);  
alert(json.mails.home);  
  

收工

Copyright © Bruce Huang All rights reserved.
<!-- more -->
