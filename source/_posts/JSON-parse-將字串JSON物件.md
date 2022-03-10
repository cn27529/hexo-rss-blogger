---
title: 'JSON.parse(), 將字串JSON物件'
tags:
  - javascript
  - jQuery
  - JSON
excerpt: >-
  JSON.parse(), 將字串JSON物件 <pre class="prettyprint"><br /><br />//JSON string <br
  />var json_str = '{"name":"jsbin","age":99,"birthday":"1988/02/02"';<br
  />json_str.concat(',"mails":{"home":"hotmail@mail.com","work":"yahoo@mail.com"}');<br
  />json_str.concat(',"phones":{"mobile":"0923456789","home":"048353868"}}');<br
  /><br />//轉JSON物件<br />var json = JSON.parse(json_str);<br
  />alert(json.mails.home);<br /><br /></pre> 收工<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2016-03-22 11:33:00
---

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
