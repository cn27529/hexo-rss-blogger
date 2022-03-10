---
title: 玩玩 jsbin.com
tags:
  - CSS3
  - HTML
  - javascript
  - jQuery
  - JSON
  - 線上工具
  - 隨便寫寫
excerpt: >-
  好用的jsbin，<a href="http://jsbin.com/"
  target="_blank">http://jsbin.com</a>是一套前端的編輯工具線上，可在撰寫前端程式碼，然後可即時反應，也不用自己F5，XD<br
  /><br />開始玩一下吧<br /><div class="separator" style="clear: both; text-align:
  center;"></div><div class="separator" style="clear: both; text-align:
  center;"><a
  href="https://3.bp.blogspot.com/-2iv8TmW-cH0/VvSqLMkfAQI/AAAAAAAAJyg/yry1PNfjGiUXdIbqKnLcqDc141cO7k44w/s1600/new-jsbin.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="https://3.bp.blogspot.com/-2iv8TmW-cH0/VvSqLMkfAQI/AAAAAAAAJyg/yry1PNfjGiUXdIbqKnLcqDc141cO7k44w/s1600/new-jsbin.png"
  /></a></div><br /><br />在JavaScript區塊中來個JSON如下，完成JSON後，再按CTRL+S，進行存檔<br /><pre
  class="prettyprint">{ <br />  <br />  "name": "jsbin",<br />  "age": 99,<br
  />  "birthday": "1988/02/02",<br />  "mails": {"home": "hotmail@mail.com",
  "work": "yahoo@mail.com"},<br />  "phones": {"mobile": "0923456789", "home":
  "048353868" }<br />            <br />}<br /><br /></pre><br /><br
  />將網址列的URL記下來，等一下會用到<br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://4.bp.blogspot.com/-3pJy7E5g_7Y/VvTQPWBzHVI/AAAAAAAAJy4/ViRK9v2Qyj4_iMd1We6c07TbXENZB1bDQ/s1600/jsbin-url.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="https://4.bp.blogspot.com/-3pJy7E5g_7Y/VvTQPWBzHVI/AAAAAAAAJy4/ViRK9v2Qyj4_iMd1We6c07TbXENZB1bDQ/s1600/jsbin-url.png"
  /></a></div><br /><br />再開一個新的jsbin，在JavaScript區塊中來個一段如下<br /><br /><pre
  class="prettyprint">$.ajax({<br />  url:
  'http://jsbin.com/dijeyodote/2/edit?js',<br />  dataType: 'json',<br /> 
  success: function(data) {<br /><br />    var json_str=JSON.stringify(data);<br
  />    var json = JSON.parse(json_str);<br />    alert(json.phones.mobile);  
  <br />    <br />  }<br />    <br />});<br /><br /></pre><br
  />完成，顯示JSON的mobile值<br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://4.bp.blogspot.com/-iTSqPYYtKz8/VvTSe8Y-3kI/AAAAAAAAJzE/kki6eE-rijAHUMXyxhRZoGOTh1Wuund4g/s1600/jsbin-alert-json.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="https://4.bp.blogspot.com/-iTSqPYYtKz8/VvTSe8Y-3kI/AAAAAAAAJzE/kki6eE-rijAHUMXyxhRZoGOTh1Wuund4g/s1600/jsbin-alert-json.png"
  /></a></div><br /><br />好，收工 XD<br /><br /><br /><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2016-03-25 13:54:00
---

好用的jsbin，[http://jsbin.com](http://jsbin.com/)是一套前端的編輯工具線上，可在撰寫前端程式碼，然後可即時反應，也不用自己F5，XD  
  
開始玩一下吧  

[![](https://3.bp.blogspot.com/-2iv8TmW-cH0/VvSqLMkfAQI/AAAAAAAAJyg/yry1PNfjGiUXdIbqKnLcqDc141cO7k44w/s1600/new-jsbin.png)](https://3.bp.blogspot.com/-2iv8TmW-cH0/VvSqLMkfAQI/AAAAAAAAJyg/yry1PNfjGiUXdIbqKnLcqDc141cO7k44w/s1600/new-jsbin.png)

  
  
在JavaScript區塊中來個JSON如下，完成JSON後，再按CTRL+S，進行存檔  

{   
    
  "name": "jsbin",  
  "age": 99,  
  "birthday": "1988/02/02",  
  "mails": {"home": "hotmail@mail.com", "work": "yahoo@mail.com"},  
  "phones": {"mobile": "0923456789", "home": "048353868" }  
              
}  
  

  
  
將網址列的URL記下來，等一下會用到  

[![](https://4.bp.blogspot.com/-3pJy7E5g_7Y/VvTQPWBzHVI/AAAAAAAAJy4/ViRK9v2Qyj4_iMd1We6c07TbXENZB1bDQ/s1600/jsbin-url.png)](https://4.bp.blogspot.com/-3pJy7E5g_7Y/VvTQPWBzHVI/AAAAAAAAJy4/ViRK9v2Qyj4_iMd1We6c07TbXENZB1bDQ/s1600/jsbin-url.png)

  
  
再開一個新的jsbin，在JavaScript區塊中來個一段如下  
  

$.ajax({  
  url: 'http://jsbin.com/dijeyodote/2/edit?js',  
  dataType: 'json',  
  success: function(data) {  
  
    var json\_str=JSON.stringify(data);  
    var json = JSON.parse(json\_str);  
    alert(json.phones.mobile);     
      
  }  
      
});  
  

  
完成，顯示JSON的mobile值  

[![](https://4.bp.blogspot.com/-iTSqPYYtKz8/VvTSe8Y-3kI/AAAAAAAAJzE/kki6eE-rijAHUMXyxhRZoGOTh1Wuund4g/s1600/jsbin-alert-json.png)](https://4.bp.blogspot.com/-iTSqPYYtKz8/VvTSe8Y-3kI/AAAAAAAAJzE/kki6eE-rijAHUMXyxhRZoGOTh1Wuund4g/s1600/jsbin-alert-json.png)

  
  
好，收工 XD  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
