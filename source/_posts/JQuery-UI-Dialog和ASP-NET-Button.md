---
title: JQuery UI Dialog和ASP.NET Button
tags:
  - ASP.NET
  - CSS3
  - HTML
  - jQuery
excerpt: >-
  今天實作了 jquery ui dialog 的運用 , 郤發現 jquery ui dialog 控件內加入了一個<br />伺服器提交鈕 ,
  郤沒有反應. 在g了之後...有了解決辦法.<br /><br /><pre class="brush: js;">$(function () { <br
  />var dlg = $("#testDialog").dialog(); <br
  />dlg.parent().appendTo(jQuery("form:first")); <br />});<br /></pre><br /><br
  />原文自:http://www.52live.com.cn/b/post/fix-asp-net-button-not-work-in-jquery-ui-dialog.aspx<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-08-16 16:51:00
---

今天實作了 jquery ui dialog 的運用 , 郤發現 jquery ui dialog 控件內加入了一個  
伺服器提交鈕 , 郤沒有反應. 在g了之後...有了解決辦法.  
  

$(function () {   
var dlg = $("#testDialog").dialog();   
dlg.parent().appendTo(jQuery("form:first"));   
});  

  
  
原文自:http://www.52live.com.cn/b/post/fix-asp-net-button-not-work-in-jquery-ui-dialog.aspx

Copyright © Bruce Huang All rights reserved.
<!-- more -->
