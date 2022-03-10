---
title: jQuery實現表格隔行分色顯示
tags:
  - jQuery
excerpt: >-
  <pre class="brush: html;"><br /><html><br />&nbsp;&nbsp;&nbsp;&nbsp;<head><br
  />&nbsp;&nbsp;&nbsp;&nbsp;<title>New Document</title><br
  />&nbsp;&nbsp;&nbsp;&nbsp;<script type="text/javascript"
  src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js"></script><br
  />&nbsp;&nbsp;&nbsp;&nbsp;<script type="text/javascript">   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;  $(document).ready(function(){   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;    $('tr:odd').addClass('oddColor');   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;    $('tr:even').addClass('evenColor');   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;   
  $('td:contains("Christen")').addClass('highlight')   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;});   <br />&nbsp;&nbsp;&nbsp;&nbsp;   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;  </script><br />&nbsp;&nbsp;&nbsp;&nbsp;<style
  type="text/css">   <br />&nbsp;&nbsp;&nbsp;&nbsp;<!--   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;.oddColor {   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;background-color:#ffc;   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;}   <br />&nbsp;&nbsp;&nbsp;&nbsp;.evenColor {   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;background-color:#cef;   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;}   <br />&nbsp;&nbsp;&nbsp;&nbsp;.highlight{   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;font-weight:bold;   <br
  />&nbsp;&nbsp;&nbsp;&nbsp;color:#f00}   <br />&nbsp;&nbsp;&nbsp;&nbsp;-->  
  <br />&nbsp;&nbsp;&nbsp;&nbsp;</style><br />&nbsp;&nbsp;&nbsp;&nbsp;</head><br
  />&nbsp;&nbsp;&nbsp;&nbsp;<body><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是奇&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>Christen</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是奇&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是奇&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是偶&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>Pinkey</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是偶&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是偶&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是奇&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是奇&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>Maomao</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是奇&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是偶&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是偶&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是偶&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>我是偶&#25968;行</td><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tr><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</table>&nbsp;&nbsp;&nbsp;&nbsp;<br
  />&nbsp;&nbsp;&nbsp;&nbsp;</body><br /></html><br /><br /></pre><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-03-17 23:28:00
---

  
  
      
    New Document  
      
     <br />&nbsp;&nbsp;&nbsp;&nbsp;  $(document).ready(function(){   <br />&nbsp;&nbsp;&nbsp;&nbsp;    $('tr:odd').addClass('oddColor');   <br />&nbsp;&nbsp;&nbsp;&nbsp;    $('tr:even').addClass('evenColor');   <br />&nbsp;&nbsp;&nbsp;&nbsp;    $('td:contains("Christen")').addClass('highlight')   <br />&nbsp;&nbsp;&nbsp;&nbsp;});   <br />&nbsp;&nbsp;&nbsp;&nbsp;   <br />&nbsp;&nbsp;&nbsp;&nbsp;   
     <br />&nbsp;&nbsp;&nbsp;&nbsp;<!--   <br />&nbsp;&nbsp;&nbsp;&nbsp;.oddColor {   <br />&nbsp;&nbsp;&nbsp;&nbsp;background-color:#ffc;   <br />&nbsp;&nbsp;&nbsp;&nbsp;}   <br />&nbsp;&nbsp;&nbsp;&nbsp;.evenColor {   <br />&nbsp;&nbsp;&nbsp;&nbsp;background-color:#cef;   <br />&nbsp;&nbsp;&nbsp;&nbsp;}   <br />&nbsp;&nbsp;&nbsp;&nbsp;.highlight{   <br />&nbsp;&nbsp;&nbsp;&nbsp;font-weight:bold;   <br />&nbsp;&nbsp;&nbsp;&nbsp;color:#f00}   <br />&nbsp;&nbsp;&nbsp;&nbsp;-->   <br />&nbsp;&nbsp;&nbsp;&nbsp;  
      
      
          
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

我是奇数行

Christen

我是奇数行

我是奇数行

我是偶数行

Pinkey

我是偶数行

我是偶数行

我是奇数行

我是奇数行

Maomao

我是奇数行

我是偶数行

我是偶数行

我是偶数行

我是偶数行

                                                                                                                                                                                                                                                                                                                                                                              
      
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
