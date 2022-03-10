---
title: CollapsibleSectionExample 可折疊零件演示
tags:
  - javascript
excerpt: >-
  <html><br />    <head><br />        <title>Style Example</title><br />       
  <script type="text/javascript"><br />            function toggle(sDivId) {<br
  />                var oDiv = document.getElementById(sDivId);<br
  />                oDiv.style.display = (oDiv.style.display == "none") ?
  "block" : "none";<br />            }<br />        </script><br />   
  </head><br />    <body><br />        <div style="background-color: blue;
  color: white; font-weight: bold; padding: 10px; cursor: pointer"<br
  />             onclick="toggle('divContent1')" align="right">Click
  Here</div><br />        <div style="border: 3px solid blue; height: 100px;
  padding: 10px"<br />             id="divContent1" align="right">This is some
  content<br />        to show and hide.</div><br />        <p
  align="right">　</p><br />        <div style="background-color: blue; color:
  white; font-weight: bold; padding: 10px; cursor: pointer"<br />            
  onclick="toggle('divContent2')" align="right">Click Here</div><br />       
  <div style="border: 3px solid blue; height: 100px; padding: 10px"<br
  />             id="divContent2" align="right">This is some content<br
  />        to show and hide.</div><br />    </body><br /></html><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-03-17 23:45:00
---

  
  
Style Example  
<br /> function toggle(sDivId) {<br /> var oDiv = document.getElementById(sDivId);<br /> oDiv.style.display = (oDiv.style.display == "none") ? "block" : "none";<br /> }<br />  
  
  

onclick="toggle('divContent1')" align="right">Click Here

  

id="divContent1" align="right">This is some content  
to show and hide.

  

  

onclick="toggle('divContent2')" align="right">Click Here

  

id="divContent2" align="right">This is some content  
to show and hide.

  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
