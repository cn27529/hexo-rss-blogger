---
title: MS Support JQuery dialog tool
tags:
  - jQuery
excerpt: >-
  <div><strong>TIPS-為VS2008加入完整jQuery Intellisense</strong><br /><br
  />微軟不是說jQuery已<a
  href="http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/10/01/ms-support-jquery.aspx">正式納入</a>為ASP.NET產品的一部分?
  Visual Studio 2008應該對jQuery提供更多支援才對呀? 有嗎?<br /><br />日前，MS Visual Studio Web
  Tools的Program Manager, Jeff King, 在他的Blog提供了讓VS2008加入完整jQuery Intellisense的<a
  href="http://blogs.msdn.com/webdevtools/archive/2008/10/28/rich-intellisense-for-jquery.aspx">做法</a>。<br
  /><br />首先，jQuery的官方下載區(<a
  title="http://docs.jquery.com/Downloading_jQuery#Download_jQuery"
  href="http://docs.jquery.com/Downloading_jQuery#Download_jQuery">http://docs.jquery.com/Downloading_jQuery#Download_jQuery</a>)，在原本的Minified,
  Packed, Uncompressed版檔案連結下方，多了一個Documentation項目，裡面有Visual Studio的專用文件說明檔:
  jquery-1.2.x-vsdoc.js。<br /><br />這個檔案怎麼用呢? 依照Jeff King的說法，要寫成以下的格式:
  (js中則是要加入/// <reference path="js/jquery-1.2.6-vsdoc.js">宣告)<br /><br /><
  type="text/javascript" src="js/jquery-1.2.6.js"><br />< % if (false) { % ><br
  />< type="text/javascript" src="js/jquery-1.2.6-vsdoc.js"><br />< % } %> <br
  /><br />if (false) 的寫法有點Tricky，它可以讓Visual
  Studio讀入vsdoc.js的內容，在Intellisense時顯示完整的函數、參數說明，卻又不干擾實際的執行。<br
  />加入後，在VisualStudio 2008裡要動用 jQuery 相關函數時，就可以看到完整的文字敘述，感覺還不錯。<br /><br /><a
  href="http://2.bp.blogspot.com/_H5b1_vBT2Kw/SY5es-CKPSI/AAAAAAAAA1Q/mYRoEBcqWC0/s1600-h/jQueryIntellisense.gif"><img
  id="BLOGGER_PHOTO_ID_5300277938120965410" style="WIDTH: 400px; CURSOR: hand;
  HEIGHT: 358px" alt=""
  src="http://2.bp.blogspot.com/_H5b1_vBT2Kw/SY5es-CKPSI/AAAAAAAAA1Q/mYRoEBcqWC0/s400/jQueryIntellisense.gif"
  border="0" /></a><br /><br />不過，要另外手動加上vsdoc.js的Script Include顯得有些笨，更不用說那個if
  (false)的怪招，感覺是硬拼出來的解決方案。<br />所幸，這只是暫時的因應之計，未來將會有Hotfix讓Visual
  Studio能自動尋找vsdoc.js，屆時就可以稱得上是內建支援了。<br /><br />【2008-11-08更新】Wow!
  自動搜尋-vsdoc.js的<a
  href="http://blogs.msdn.com/webdevtools/archive/2008/11/07/hotfix-to-enable-vsdoc-js-intellisense-doc-files-is-now-available.aspx">Hotfix</a>已經出來囉!
  可以下載玩玩!<br /><br />引用自 :<br /><a
  href="http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/11/09/jquery-intellisense.aspx">http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/11/09/jquery-intellisense.aspx</a><br
  /><a
  href="http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/10/01/ms-support-jquery.aspx">http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/10/01/ms-support-jquery.aspx</a></div><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-02-08 01:56:00
---

**TIPS-為VS2008加入完整jQuery Intellisense**  
  
微軟不是說jQuery已[正式納入](http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/10/01/ms-support-jquery.aspx)為ASP.NET產品的一部分? Visual Studio 2008應該對jQuery提供更多支援才對呀? 有嗎?  
  
日前，MS Visual Studio Web Tools的Program Manager, Jeff King, 在他的Blog提供了讓VS2008加入完整jQuery Intellisense的[做法](http://blogs.msdn.com/webdevtools/archive/2008/10/28/rich-intellisense-for-jquery.aspx)。  
  
首先，jQuery的官方下載區([http://docs.jquery.com/Downloading\_jQuery#Download\_jQuery](http://docs.jquery.com/Downloading_jQuery#Download_jQuery "http://docs.jquery.com/Downloading_jQuery#Download_jQuery"))，在原本的Minified, Packed, Uncompressed版檔案連結下方，多了一個Documentation項目，裡面有Visual Studio的專用文件說明檔: jquery-1.2.x-vsdoc.js。  
  
這個檔案怎麼用呢? 依照Jeff King的說法，要寫成以下的格式: (js中則是要加入/// 宣告)  
  
< type="text/javascript" src="js/jquery-1.2.6.js">  
< % if (false) { % >  
< type="text/javascript" src="js/jquery-1.2.6-vsdoc.js">  
< % } %>  
  
if (false) 的寫法有點Tricky，它可以讓Visual Studio讀入vsdoc.js的內容，在Intellisense時顯示完整的函數、參數說明，卻又不干擾實際的執行。  
加入後，在VisualStudio 2008裡要動用 jQuery 相關函數時，就可以看到完整的文字敘述，感覺還不錯。  
  
[![](http://2.bp.blogspot.com/_H5b1_vBT2Kw/SY5es-CKPSI/AAAAAAAAA1Q/mYRoEBcqWC0/s400/jQueryIntellisense.gif)](http://2.bp.blogspot.com/_H5b1_vBT2Kw/SY5es-CKPSI/AAAAAAAAA1Q/mYRoEBcqWC0/s1600-h/jQueryIntellisense.gif)  
  
不過，要另外手動加上vsdoc.js的Script Include顯得有些笨，更不用說那個if (false)的怪招，感覺是硬拼出來的解決方案。  
所幸，這只是暫時的因應之計，未來將會有Hotfix讓Visual Studio能自動尋找vsdoc.js，屆時就可以稱得上是內建支援了。  
  
【2008-11-08更新】Wow! 自動搜尋-vsdoc.js的[Hotfix](http://blogs.msdn.com/webdevtools/archive/2008/11/07/hotfix-to-enable-vsdoc-js-intellisense-doc-files-is-now-available.aspx)已經出來囉! 可以下載玩玩!  
  
引用自 :  
[http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/11/09/jquery-intellisense.aspx](http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/11/09/jquery-intellisense.aspx)  
[http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/10/01/ms-support-jquery.aspx](http://blog.darkthread.net/blogs/darkthreadtw/archive/2008/10/01/ms-support-jquery.aspx)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
