---
title: TooltipExample 自定義鼠标提示
tags:
  - javascript
excerpt: >-
  <html><br />&nbsp;&nbsp;&nbsp;&nbsp;<head><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<title>Style&nbsp;Example</title><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<script&nbsp;type="text/javascript"><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;showTip(oEvent)&nbsp;{<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;oDiv&nbsp;=&nbsp;document.getElementById("divTip1");<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oDiv.style.visibility&nbsp;=&nbsp;"visible";<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oDiv.style.left&nbsp;=&nbsp;oEvent.clientX&nbsp;+&nbsp;5;<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oDiv.style.top&nbsp;=&nbsp;oEvent.clientY&nbsp;+&nbsp;5;<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br
  />&nbsp;<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;hideTip(oEvent)&nbsp;{<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;oDiv&nbsp;=&nbsp;document.getElementById("divTip1");<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oDiv.style.visibility&nbsp;=&nbsp;"hidden";<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</script><br
  />&nbsp;&nbsp;&nbsp;&nbsp;</head><br />&nbsp;&nbsp;&nbsp;&nbsp;<body><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Move&nbsp;your&nbsp;mouse&nbsp;over&nbsp;the&nbsp;red&nbsp;square.</p><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div&nbsp;id="div1"&nbsp;<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;style="background-color:&nbsp;red;&nbsp;height:&nbsp;50px;&nbsp;width:&nbsp;50px"<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;onmouseover="showTip(event)"&nbsp;onmouseout="hideTip(event)"></div><br
  />&nbsp;<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div&nbsp;id="divTip1"&nbsp;<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;style="background-color:&nbsp;yellow;&nbsp;position:&nbsp;absolute;&nbsp;visibility:&nbsp;hidden;&nbsp;padding:&nbsp;5px"><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span&nbsp;style="font-weight:&nbsp;bold">Custom&nbsp;Tooltip</span><br&nbsp;/><br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More&nbsp;details&nbsp;can&nbsp;go&nbsp;here.<br
  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><br
  />&nbsp;&nbsp;&nbsp;&nbsp;</body><br /></html><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-03-17 23:57:00
---

  
      
        Style Example  
         function showTip(oEvent) {  
                var oDiv = document.getElementById("divTip1");  
                oDiv.style.visibility = "visible";  
                oDiv.style.left = oEvent.clientX + 5;  
                oDiv.style.top = oEvent.clientY + 5;  
            }  
   
            function hideTip(oEvent) {  
                var oDiv = document.getElementById("divTip1");  
                oDiv.style.visibility = "hidden";  
            }  
          
      
      
        

Move your mouse over the red square.

  
         style="background-color: red; height: 50px; width: 50px"  
             onmouseover="showTip(event)" onmouseout="hideTip(event)">  
   
          style="background-color: yellow; position: absolute; visibility: hidden; padding: 5px">  
            Custom Tooltip More details can go here.  
           
      

Copyright © Bruce Huang All rights reserved.
<!-- more -->
