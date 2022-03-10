---
title: 撰寫第一個應用程序\"hello world\" web2py-02
tags:
  - Python
  - web2py
excerpt: >-
  上次已介紹完web2py的下載與啟動<br><br>今天介紹如何建立你的web2py的web應用程序<br><br>開啟你的web2py開發環境&nbsp;http://127.0.0.1:8000/welcome/default/index<br><br>選My
  Sites<br><div class="separator" style="clear: both; text-align: center;"><a
  href="https://1.bp.blogspot.com/-xkQJZzwfcqE/VGQeobLrkbI/AAAAAAAAGz4/J6riBmSBRmU/s1600/img_01%2B2014.11.13%2B10.59.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="227"
  src="https://1.bp.blogspot.com/-xkQJZzwfcqE/VGQeobLrkbI/AAAAAAAAGz4/J6riBmSBRmU/s320/img_01%2B2014.11.13%2B10.59.gif"
  width="320"></a></div><br>建入一個密碼<br><div class="separator" style="clear: both;
  text-align: center;"></div><div class="separator" style="clear: both;
  text-align: center;"></div><div class="separator" style="clear: both;
  text-align: center;"></div><br><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://1.bp.blogspot.com/-RfGz23dqnNY/VGQfXx0JRrI/AAAAAAAAG0Q/cDPogAHTJA4/s1600/img_03%2B2014.11.13%2B11.01.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="202"
  src="https://1.bp.blogspot.com/-RfGz23dqnNY/VGQfXx0JRrI/AAAAAAAAG0Q/cDPogAHTJA4/s320/img_03%2B2014.11.13%2B11.01.gif"
  width="320"></a></div><br>來到開發環首頁<br><div class="separator" style="clear:
  both; text-align: center;"><a
  href="https://4.bp.blogspot.com/-0sqf3dBus2Y/VGQm1XeCStI/AAAAAAAAG0g/io-mWozbRM0/s1600/img_06%2B2014.11.13%2B11.34.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="104"
  src="https://4.bp.blogspot.com/-0sqf3dBus2Y/VGQm1XeCStI/AAAAAAAAG0g/io-mWozbRM0/s640/img_06%2B2014.11.13%2B11.34.gif"
  width="640"></a></div><br><br>新建立名為myapp的應用程序<br><div class="separator"
  style="clear: both; text-align: center;"><a
  href="https://1.bp.blogspot.com/-0vJoC7VZooI/VGQnHbgZSxI/AAAAAAAAG0o/42nC-g7KjHk/s1600/img_05%2B2014.11.13%2B11.33.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  src="//1.bp.blogspot.com/-0vJoC7VZooI/VGQnHbgZSxI/AAAAAAAAG0o/42nC-g7KjHk/s1600/img_05%2B2014.11.13%2B11.33.gif"></a></div><br>myapp的應用程序,
  建立好了, 選manage > edit 進入開發畫面<br><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://3.bp.blogspot.com/-dQa_AD-p-lY/VGQoynYRXwI/AAAAAAAAG00/J6n68sMWnZE/s1600/img_07%2B2014.11.13%2B11.41.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="113"
  src="https://3.bp.blogspot.com/-dQa_AD-p-lY/VGQoynYRXwI/AAAAAAAAG00/J6n68sMWnZE/s640/img_07%2B2014.11.13%2B11.41.gif"
  width="640"></a></div><br><br><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://2.bp.blogspot.com/-cx7G1g846f8/VGQpJNLZ0yI/AAAAAAAAG08/cVhGKrUCHNw/s1600/img_08%2B2014.11.13%2B11.44.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="84"
  src="https://2.bp.blogspot.com/-cx7G1g846f8/VGQpJNLZ0yI/AAAAAAAAG08/cVhGKrUCHNw/s640/img_08%2B2014.11.13%2B11.44.gif"
  width="640"></a></div><br>進入開發畫面後, 選擇controllers > default.py > edit<br><div
  class="separator" style="clear: both; text-align: center;"><a
  href="https://1.bp.blogspot.com/-T2jZATVDi9I/VGQptXrU9pI/AAAAAAAAG1I/eqi9mHmQM8Q/s1600/img_09%2B2014.11.13%2B11.45.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="149"
  src="https://1.bp.blogspot.com/-T2jZATVDi9I/VGQptXrU9pI/AAAAAAAAG1I/eqi9mHmQM8Q/s320/img_09%2B2014.11.13%2B11.45.gif"
  width="320"></a></div><br>修改一下hello world的訊息<br><div class="separator"
  style="clear: both; text-align: center;"><a
  href="https://2.bp.blogspot.com/-L8Bnfh73g-U/VGQr4bOOQTI/AAAAAAAAG1U/rEUMK_GcDFw/s1600/img_11%2B2014.11.13%2B11.53.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="100"
  src="https://2.bp.blogspot.com/-L8Bnfh73g-U/VGQr4bOOQTI/AAAAAAAAG1U/rEUMK_GcDFw/s640/img_11%2B2014.11.13%2B11.53.gif"
  width="640"></a></div><br><br>選擇 exposes的 index , 也可以URL打上
  http://127.0.0.1:8000/myapp/default/index , 出現如下<br><div class="separator"
  style="clear: both; text-align: center;"><a
  href="https://3.bp.blogspot.com/-tNcRcNXp7II/VGQsysYO57I/AAAAAAAAG1c/9wyquY_kv_A/s1600/img_13%2B2014.11.13%2B11.55.gif"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="243"
  src="https://3.bp.blogspot.com/-tNcRcNXp7II/VGQsysYO57I/AAAAAAAAG1c/9wyquY_kv_A/s400/img_13%2B2014.11.13%2B11.55.gif"
  width="400"></a></div><br>收工, 下次見<br><br><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2014-11-13 12:01:00
---

上次已介紹完web2py的下載與啟動  
  
今天介紹如何建立你的web2py的web應用程序  
  
開啟你的web2py開發環境 http://127.0.0.1:8000/welcome/default/index  
  
選My Sites  

[![](https://1.bp.blogspot.com/-xkQJZzwfcqE/VGQeobLrkbI/AAAAAAAAGz4/J6riBmSBRmU/s320/img_01%2B2014.11.13%2B10.59.gif)](https://1.bp.blogspot.com/-xkQJZzwfcqE/VGQeobLrkbI/AAAAAAAAGz4/J6riBmSBRmU/s1600/img_01%2B2014.11.13%2B10.59.gif)

  
建入一個密碼  

  

[![](https://1.bp.blogspot.com/-RfGz23dqnNY/VGQfXx0JRrI/AAAAAAAAG0Q/cDPogAHTJA4/s320/img_03%2B2014.11.13%2B11.01.gif)](https://1.bp.blogspot.com/-RfGz23dqnNY/VGQfXx0JRrI/AAAAAAAAG0Q/cDPogAHTJA4/s1600/img_03%2B2014.11.13%2B11.01.gif)

  
來到開發環首頁  

[![](https://4.bp.blogspot.com/-0sqf3dBus2Y/VGQm1XeCStI/AAAAAAAAG0g/io-mWozbRM0/s640/img_06%2B2014.11.13%2B11.34.gif)](https://4.bp.blogspot.com/-0sqf3dBus2Y/VGQm1XeCStI/AAAAAAAAG0g/io-mWozbRM0/s1600/img_06%2B2014.11.13%2B11.34.gif)

  
  
新建立名為myapp的應用程序  

[![](//1.bp.blogspot.com/-0vJoC7VZooI/VGQnHbgZSxI/AAAAAAAAG0o/42nC-g7KjHk/s1600/img_05%2B2014.11.13%2B11.33.gif)](https://1.bp.blogspot.com/-0vJoC7VZooI/VGQnHbgZSxI/AAAAAAAAG0o/42nC-g7KjHk/s1600/img_05%2B2014.11.13%2B11.33.gif)

  
myapp的應用程序, 建立好了, 選manage > edit 進入開發畫面  

[![](https://3.bp.blogspot.com/-dQa_AD-p-lY/VGQoynYRXwI/AAAAAAAAG00/J6n68sMWnZE/s640/img_07%2B2014.11.13%2B11.41.gif)](https://3.bp.blogspot.com/-dQa_AD-p-lY/VGQoynYRXwI/AAAAAAAAG00/J6n68sMWnZE/s1600/img_07%2B2014.11.13%2B11.41.gif)

  
  

[![](https://2.bp.blogspot.com/-cx7G1g846f8/VGQpJNLZ0yI/AAAAAAAAG08/cVhGKrUCHNw/s640/img_08%2B2014.11.13%2B11.44.gif)](https://2.bp.blogspot.com/-cx7G1g846f8/VGQpJNLZ0yI/AAAAAAAAG08/cVhGKrUCHNw/s1600/img_08%2B2014.11.13%2B11.44.gif)

  
進入開發畫面後, 選擇controllers > default.py > edit  

[![](https://1.bp.blogspot.com/-T2jZATVDi9I/VGQptXrU9pI/AAAAAAAAG1I/eqi9mHmQM8Q/s320/img_09%2B2014.11.13%2B11.45.gif)](https://1.bp.blogspot.com/-T2jZATVDi9I/VGQptXrU9pI/AAAAAAAAG1I/eqi9mHmQM8Q/s1600/img_09%2B2014.11.13%2B11.45.gif)

  
修改一下hello world的訊息  

[![](https://2.bp.blogspot.com/-L8Bnfh73g-U/VGQr4bOOQTI/AAAAAAAAG1U/rEUMK_GcDFw/s640/img_11%2B2014.11.13%2B11.53.gif)](https://2.bp.blogspot.com/-L8Bnfh73g-U/VGQr4bOOQTI/AAAAAAAAG1U/rEUMK_GcDFw/s1600/img_11%2B2014.11.13%2B11.53.gif)

  
  
選擇 exposes的 index , 也可以URL打上 http://127.0.0.1:8000/myapp/default/index , 出現如下  

[![](https://3.bp.blogspot.com/-tNcRcNXp7II/VGQsysYO57I/AAAAAAAAG1c/9wyquY_kv_A/s400/img_13%2B2014.11.13%2B11.55.gif)](https://3.bp.blogspot.com/-tNcRcNXp7II/VGQsysYO57I/AAAAAAAAG1c/9wyquY_kv_A/s1600/img_13%2B2014.11.13%2B11.55.gif)

  
收工, 下次見  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
