---
title: 'Python Dictionary, 字典的應用'
tags:
  - C#
  - CSS3
  - HTML
  - javascript
  - Python
  - 線上工具
excerpt: >-
  dictionary, 字典是指有一組以上的 key 與 value 所組成不多說, 直接展示吧... <pre
  class="prettyprint"><br />"""建立hi_dict的dictionary"""<br /><br />hi_dict =
  {'name': '王小明', 'age': 25, 'mail': 'sample@gmail.com'}<br /><br
  />"""取得某key的值"""<br /><br />print hi_dict.get('name')<br />"""或"""<br />print
  hi_dict['name']<br /><br />"""加入一組 key 與 value"""<br />add_dict =
  {'blog','http://myblog.com'}<br />hi_dict.update(add_dict)<br />"""或"""<br
  />hi_dict.update({'blog','http://myblog.com'})<br /><br />"""移除一組 key 與
  value"""<br />hi_dict.pop('blog') """若key 'blog' 不存在時會回傳, KeyError: 'bolg'
  訊息"""<br /><br /><br />"""複製dict"""<br />hi_dict2=hi_dict.copy()<br /><br
  /><br /><br /></pre><div class="blogger-post-footer">Copyright © Bruce Huang
  All rights reserved.</div>
date: 2016-03-17 10:01:00
---

dictionary, 字典是指有一組以上的 key 與 value 所組成不多說, 直接展示吧...

  
"""建立hi\_dict的dictionary"""  
  
hi\_dict = {'name': '王小明', 'age': 25, 'mail': 'sample@gmail.com'}  
  
"""取得某key的值"""  
  
print hi\_dict.get('name')  
"""或"""  
print hi\_dict\['name'\]  
  
"""加入一組 key 與 value"""  
add\_dict = {'blog','http://myblog.com'}  
hi\_dict.update(add\_dict)  
"""或"""  
hi\_dict.update({'blog','http://myblog.com'})  
  
"""移除一組 key 與 value"""  
hi\_dict.pop('blog') """若key 'blog' 不存在時會回傳, KeyError: 'bolg' 訊息"""  
  
  
"""複製dict"""  
hi\_dict2=hi\_dict.copy()  
  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
