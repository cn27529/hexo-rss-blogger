---
title: Django 的admin管理功能，自定義列表顯示，list_display
tags:
  - Django
  - Pycharm
  - Python
excerpt: >-
  建立好資料表格後，我們常常會利用admin的管理功能來新建資料或修改資料內容，因為這樣是比較快速的，以Django shell 我總覺慢了一大拍XD。<br
  /><br />動工吧～<br /><br />在admin.py中註冊資料表是這樣<br /><br />#
  註冊Hello資料表到admin進行管理<br />admin.site.register(Hello) <br /><br
  />然後，admin的Hello管理功能，畫面長這漾<br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="http://2.bp.blogspot.com/-vJKU0_9VjLI/ViIz9rdIQcI/AAAAAAAAIsc/w2eaUL_sj1U/s1600/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.37.26.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="391"
  src="http://2.bp.blogspot.com/-vJKU0_9VjLI/ViIz9rdIQcI/AAAAAAAAIsc/w2eaUL_sj1U/s640/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.37.26.png"
  width="640" /></a></div><br />還真的看不出來裡面是什麼東西XD<br /><br /><br />自定義後是這樣<br
  /><br /># 註冊Hello資料表到admin進行管理<br /># admin.site.register(Hello)<br /><br
  />class HelloAdmin(admin.ModelAdmin):     list_display = ('title', 'content',
  'photo', 'location', 'created_at')<br /><br />admin.site.register(Hello,
  HelloAdmin)  <br /><br />然後，自定義後畫面長這漾<br /><div class="separator"
  style="clear: both; text-align: center;"><a
  href="http://2.bp.blogspot.com/-GdU90DGb0JU/ViI0uvfAqQI/AAAAAAAAIsk/heiPwydRokg/s1600/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.40.25.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="292"
  src="http://2.bp.blogspot.com/-GdU90DGb0JU/ViI0uvfAqQI/AAAAAAAAIsk/heiPwydRokg/s640/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.40.25.png"
  width="640" /></a></div><br />OK，好多了<br /><br />收工！<br /><br /><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2015-10-17 19:50:00
---

建立好資料表格後，我們常常會利用admin的管理功能來新建資料或修改資料內容，因為這樣是比較快速的，以Django shell 我總覺慢了一大拍XD。  
  
動工吧～  
  
在admin.py中註冊資料表是這樣  
  
\# 註冊Hello資料表到admin進行管理  
admin.site.register(Hello)  
  
然後，admin的Hello管理功能，畫面長這漾  

[![](http://2.bp.blogspot.com/-vJKU0_9VjLI/ViIz9rdIQcI/AAAAAAAAIsc/w2eaUL_sj1U/s640/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.37.26.png)](http://2.bp.blogspot.com/-vJKU0_9VjLI/ViIz9rdIQcI/AAAAAAAAIsc/w2eaUL_sj1U/s1600/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.37.26.png)

  
還真的看不出來裡面是什麼東西XD  
  
  
自定義後是這樣  
  
\# 註冊Hello資料表到admin進行管理  
\# admin.site.register(Hello)  
  
class HelloAdmin(admin.ModelAdmin): list\_display = ('title', 'content', 'photo', 'location', 'created\_at')  
  
admin.site.register(Hello, HelloAdmin)  
  
然後，自定義後畫面長這漾  

[![](http://2.bp.blogspot.com/-GdU90DGb0JU/ViI0uvfAqQI/AAAAAAAAIsk/heiPwydRokg/s640/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.40.25.png)](http://2.bp.blogspot.com/-GdU90DGb0JU/ViI0uvfAqQI/AAAAAAAAIsk/heiPwydRokg/s1600/%25E8%259E%25A2%25E5%25B9%2595%25E5%25BF%25AB%25E7%2585%25A7%2B2015-10-17%2B19.40.25.png)

  
OK，好多了  
  
收工！  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
