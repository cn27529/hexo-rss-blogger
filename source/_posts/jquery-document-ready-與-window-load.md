---
title: jquery $(document).ready 與 window.load
tags:
  - javascript
  - jQuery
excerpt: >-
  之前一直覺得$(document).ready和window.onload事件是一樣的，前陣子才豁然驚覺原來兩者是不一樣的。這真是令我汗顏Orz，以下我將兩者的差異做了一個比較表格來進行說明：<br
  /><style><!--#table1 th {background-color: #999000;color:
  #ffffff;text-align:center;border: 1px;}--></style><br /><table id="table1"
  border="1" cellspacing="0" cellpadding="0"><tbody><tr><th
  width="70"></th><th>window.onload</th><th>$(document).ready</th></tr><tr><td
  width="70">事件</td><td>javascript原生事件</td><td>模擬 W3C DOM 標準的 DOMContentLoaded
  事件</td></tr><tr><td width="70">觸發時機</td><td>整個網頁下載完成後觸發。
  因此如果網頁中包含圖檔，則事件觸發的時間會比較晚。</td><td>全部的DOM元素下載完成後觸發。
  因為不需等待圖檔載入完成，因此事件觸發的時間較早。</td></tr><tr><td
  width="70">複寫</td><td>前一次設定給window.onload的函式會被後一次所設定的函式覆蓋。</td><td>不會覆蓋，前一次跟後一次所設定的函式都會被執行。</td></tr></tbody></table><br
  /><p></p><p>複寫的部份僅用文字說明有些難以表達，直接用一個簡短的程式說明無疑是比較簡單的方式！範例1使用window.onload，範例2使用document
  ready的方式，說明兩者的不同。</p><br /><pre class="brush: js;"><br
  />window.onload=function() { alert('alert1'); };<br />window.onload=function()
  { alert('alert2'); };<br /><br /></pre><br
  /><p>在範例1使用window.onload的方式，當整個頁面載入完畢(包含圖片)，則僅會執行第二個alert，這是因為後面那個function覆蓋了前面的function。</p><br
  /><pre class="brush: js;"><br />$(document).ready(function() {
  alert('alert1'); });<br />$(document).ready(function() { alert('alert2');
  });<br /><br /></pre><br /><p>同樣的狀況，在使用document
  ready時卻有不同的結果。在範例2，當DOM元素載入完畢，兩個alert都會被執行，function不會被覆蓋。
  列表中最重要的差異點其實是觸發時機，請大家多多注意唷。這實在是一個很容易遺漏的小細節^^ </p><p></p><p>原文自 : <a
  target="_blank"
  href="http://blog.finalevil.com/2009/09/jquerydocumentreadyonload.html">http://blog.finalevil.com/2009/09/jquerydocumentreadyonload.html</a></p><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-10-05 00:27:00
---

之前一直覺得$(document).ready和window.onload事件是一樣的，前陣子才豁然驚覺原來兩者是不一樣的。這真是令我汗顏Orz，以下我將兩者的差異做了一個比較表格來進行說明：  
<!--#table1 th {background-color: #999000;color: #ffffff;text-align:center;border: 1px;}-->  

window.onload

$(document).ready

事件

javascript原生事件

模擬 W3C DOM 標準的 DOMContentLoaded 事件

觸發時機

整個網頁下載完成後觸發。 因此如果網頁中包含圖檔，則事件觸發的時間會比較晚。

全部的DOM元素下載完成後觸發。 因為不需等待圖檔載入完成，因此事件觸發的時間較早。

複寫

前一次設定給window.onload的函式會被後一次所設定的函式覆蓋。

不會覆蓋，前一次跟後一次所設定的函式都會被執行。

  

複寫的部份僅用文字說明有些難以表達，直接用一個簡短的程式說明無疑是比較簡單的方式！範例1使用window.onload，範例2使用document ready的方式，說明兩者的不同。

  

  
window.onload=function() { alert('alert1'); };  
window.onload=function() { alert('alert2'); };  
  

  

在範例1使用window.onload的方式，當整個頁面載入完畢(包含圖片)，則僅會執行第二個alert，這是因為後面那個function覆蓋了前面的function。

  

  
$(document).ready(function() { alert('alert1'); });  
$(document).ready(function() { alert('alert2'); });  
  

  

同樣的狀況，在使用document ready時卻有不同的結果。在範例2，當DOM元素載入完畢，兩個alert都會被執行，function不會被覆蓋。 列表中最重要的差異點其實是觸發時機，請大家多多注意唷。這實在是一個很容易遺漏的小細節^^

原文自 : [http://blog.finalevil.com/2009/09/jquerydocumentreadyonload.html](http://blog.finalevil.com/2009/09/jquerydocumentreadyonload.html)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
