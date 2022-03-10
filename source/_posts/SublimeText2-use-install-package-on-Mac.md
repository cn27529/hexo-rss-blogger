---
title: SublimeText2 use install package on Mac
tags:
  - Mac
  - SublimeText
  - 軟体應用相關
excerpt: >-
  <div class="separator" style="clear: both; text-align:
  center;"></div>在mac下，沒有notepad++可用怎辦？用sublime text 2吧，好用的sublime text
  2有著強大的外掛，也不輸notepad++，如何使用外掛呢？趕快記錄下來以後用的上。<br /><br />1.安裝好sublime text
  2後，開啟show console，如圖<br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="http://1.bp.blogspot.com/-1LQNvcyM1y0/VQ_vrayVcuI/AAAAAAAAHyg/-owKiFpjp8M/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.47.02.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="132"
  src="http://1.bp.blogspot.com/-1LQNvcyM1y0/VQ_vrayVcuI/AAAAAAAAHyg/-owKiFpjp8M/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.47.02.png"
  width="320" /></a></div><br />2.出現console命令列，如圖<br /><div class="separator"
  style="clear: both; text-align: center;"><a
  href="http://4.bp.blogspot.com/-C-WpNVx-rPM/VQ_w4U8vgyI/AAAAAAAAHys/Oj1pgagLLYs/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.52.35.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="53"
  src="http://4.bp.blogspot.com/-C-WpNVx-rPM/VQ_w4U8vgyI/AAAAAAAAHys/Oj1pgagLLYs/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.52.35.png"
  width="640" /></a></div><br />3.在console輸入框處，貼上下文<br /><br /><span
  style="background-color: #f4f5f7; color: #5f676a; font-family: Helvetica,
  Arial, 微軟正黑體, sans-serif; font-size: 12px; line-height:
  21.6000003814697px;">import urllib2,os; pf='Package Control.sublime-package';
  ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not
  os.path.exists(ipp) else None;
  urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler()));
  open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace('
  ','%20')).read()); print 'Please restart Sublime Text to finish
  installation'</span><br /><span style="background-color: #f4f5f7; color:
  #5f676a; font-family: Helvetica, Arial, 微軟正黑體, sans-serif; font-size: 12px;
  line-height: 21.6000003814697px;"><br /></span><span style="background-color:
  #f4f5f7; color: #5f676a; font-family: Helvetica, Arial, 微軟正黑體, sans-serif;
  font-size: 12px; line-height: 21.6000003814697px;">4.完成後，會要求你關閉並重開sublime text
  2，如圖</span><br /><div class="separator" style="clear: both; text-align:
  center;"><a
  href="http://2.bp.blogspot.com/-mgwoSRTq2cg/VQ_3nW-WduI/AAAAAAAAHzE/9TVLRTGPK8o/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.56.52.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="160"
  src="http://2.bp.blogspot.com/-mgwoSRTq2cg/VQ_3nW-WduI/AAAAAAAAHzE/9TVLRTGPK8o/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.56.52.png"
  width="400" /></a></div><div class="separator" style="clear: both; text-align:
  center;"><br /></div><span style="background-color: #f4f5f7; color: #5f676a;
  font-family: Helvetica, Arial, 微軟正黑體, sans-serif; font-size: 12px;
  line-height: 21.6000003814697px;">5.&nbsp;重開後就可以command+shift+P，使用install
  package命令，如圖</span><br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="http://1.bp.blogspot.com/-QpQsoAxAnMo/VQ_7VTCFWDI/AAAAAAAAHzQ/rbxXL3VkKbM/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.02.18.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="117"
  src="http://1.bp.blogspot.com/-QpQsoAxAnMo/VQ_7VTCFWDI/AAAAAAAAHzQ/rbxXL3VkKbM/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.02.18.png"
  width="400" /></a></div><span style="background-color: #f4f5f7; color:
  #5f676a; font-family: Helvetica, Arial, 微軟正黑體, sans-serif; font-size: 12px;
  line-height: 21.6000003814697px;"><br /></span><span style="background-color:
  #f4f5f7; color: #5f676a; font-family: Helvetica, Arial, 微軟正黑體, sans-serif;
  font-size: 12px; line-height: 21.6000003814697px;">6.鍵入install
  package後按enter，就可以進行尋找你要的外掛工具了，如圖</span><br /><div class="separator"
  style="clear: both; text-align: center;"><a
  href="http://1.bp.blogspot.com/-n2Gx6rH1e58/VRAEw30s4EI/AAAAAAAAHzg/qO03035HHo8/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.01.23.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="165"
  src="http://1.bp.blogspot.com/-n2Gx6rH1e58/VRAEw30s4EI/AAAAAAAAHzg/qO03035HHo8/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.01.23.png"
  width="400" /></a></div><br />如果不行，就再試一次，或許是弄錯了XD<br /><br /><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2015-03-23 19:42:00
---

在mac下，沒有notepad++可用怎辦？用sublime text 2吧，好用的sublime text 2有著強大的外掛，也不輸notepad++，如何使用外掛呢？趕快記錄下來以後用的上。  
  
1.安裝好sublime text 2後，開啟show console，如圖  

[![](http://1.bp.blogspot.com/-1LQNvcyM1y0/VQ_vrayVcuI/AAAAAAAAHyg/-owKiFpjp8M/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.47.02.png)](http://1.bp.blogspot.com/-1LQNvcyM1y0/VQ_vrayVcuI/AAAAAAAAHyg/-owKiFpjp8M/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.47.02.png)

  
2.出現console命令列，如圖  

[![](http://4.bp.blogspot.com/-C-WpNVx-rPM/VQ_w4U8vgyI/AAAAAAAAHys/Oj1pgagLLYs/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.52.35.png)](http://4.bp.blogspot.com/-C-WpNVx-rPM/VQ_w4U8vgyI/AAAAAAAAHys/Oj1pgagLLYs/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.52.35.png)

  
3.在console輸入框處，貼上下文  
  
import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed\_packages\_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install\_opener(urllib2.build\_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'  
  
4.完成後，會要求你關閉並重開sublime text 2，如圖  

[![](http://2.bp.blogspot.com/-mgwoSRTq2cg/VQ_3nW-WduI/AAAAAAAAHzE/9TVLRTGPK8o/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.56.52.png)](http://2.bp.blogspot.com/-mgwoSRTq2cg/VQ_3nW-WduI/AAAAAAAAHzE/9TVLRTGPK8o/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B18.56.52.png)

  

5. 重開後就可以command+shift+P，使用install package命令，如圖  

[![](http://1.bp.blogspot.com/-QpQsoAxAnMo/VQ_7VTCFWDI/AAAAAAAAHzQ/rbxXL3VkKbM/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.02.18.png)](http://1.bp.blogspot.com/-QpQsoAxAnMo/VQ_7VTCFWDI/AAAAAAAAHzQ/rbxXL3VkKbM/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.02.18.png)

  
6.鍵入install package後按enter，就可以進行尋找你要的外掛工具了，如圖  

[![](http://1.bp.blogspot.com/-n2Gx6rH1e58/VRAEw30s4EI/AAAAAAAAHzg/qO03035HHo8/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.01.23.png)](http://1.bp.blogspot.com/-n2Gx6rH1e58/VRAEw30s4EI/AAAAAAAAHzg/qO03035HHo8/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-03-23%2B19.01.23.png)

  
如果不行，就再試一次，或許是弄錯了XD  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
