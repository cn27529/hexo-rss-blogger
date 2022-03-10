---
title: 'node-telegram-bot-api, 建立你的telegram機器人'
tags:
  - Bot
  - TelegramBot
excerpt: >-
  登入telegram-web or telegram app 後選<br /><div class="separator" style="clear:
  both; text-align: center;"><a
  href="https://2.bp.blogspot.com/-qJVKBkTDOPU/WYvXQs0aW5I/AAAAAAAARSM/n5K-T-PfEoYunjq0KxufAeroQov23LR-gCLcBGAs/s1600/2017-08-10_114547.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="316" data-original-width="348" height="579"
  src="https://2.bp.blogspot.com/-qJVKBkTDOPU/WYvXQs0aW5I/AAAAAAAARSM/n5K-T-PfEoYunjq0KxufAeroQov23LR-gCLcBGAs/s640/2017-08-10_114547.png"
  width="640" /></a></div><br />填入@botFather, 進行尋找<br /><div class="separator"
  style="clear: both; text-align: center;"><a
  href="https://3.bp.blogspot.com/-402LDx0U1UI/WYvXgxq8PBI/AAAAAAAARSQ/IQv-ojVtksIjz6lkbTE6iWuijO4nZLh3ACLcBGAs/s1600/2017-08-10_114642.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="228" data-original-width="436" height="332"
  src="https://3.bp.blogspot.com/-402LDx0U1UI/WYvXgxq8PBI/AAAAAAAARSQ/IQv-ojVtksIjz6lkbTE6iWuijO4nZLh3ACLcBGAs/s640/2017-08-10_114642.png"
  width="640" /></a></div><br />對, 就是它, telegram bot 的爸爸XD, 將它加入<br
  />@botFather加入後你會發現這個對話框<br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://2.bp.blogspot.com/-paXcgOD3u8U/WYvu-EjoBaI/AAAAAAAARTE/midzxWpjYusj52y4kU3t8k2c2HPCJuGJACLcBGAs/s1600/2017-08-10_132830.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="253" data-original-width="696" height="232"
  src="https://2.bp.blogspot.com/-paXcgOD3u8U/WYvu-EjoBaI/AAAAAAAARTE/midzxWpjYusj52y4kU3t8k2c2HPCJuGJACLcBGAs/s640/2017-08-10_132830.png"
  width="640" /></a></div><br />對, 沒錯, 它告訴你使用/newbot來建立你的機器人, 如下<br /><div
  class="separator" style="clear: both; text-align: center;"></div><div
  class="separator" style="clear: both; text-align: center;"><a
  href="https://1.bp.blogspot.com/-dJ7zPnjlXe0/WYvvvwE5fwI/AAAAAAAARTM/rLNU-KgQiUAA1ZDIxaONipjxyPtqv51TACLcBGAs/s1600/2017-08-10_133131.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="664" data-original-width="591" height="640"
  src="https://1.bp.blogspot.com/-dJ7zPnjlXe0/WYvvvwE5fwI/AAAAAAAARTM/rLNU-KgQiUAA1ZDIxaONipjxyPtqv51TACLcBGAs/s640/2017-08-10_133131.png"
  width="568" /></a></div><br />好了, 我的cn27529bot機器人己有了XD<br /><br />接下來,
  跟它talk講話吧~在講話的前提下, 需要建立跟它溝通的API管道, 我們用nodejs來進行<br /><br />先安裝要用的套件<br /><div
  class="separator" style="clear: both; text-align: center;"></div><div
  class="separator" style="clear: both; text-align: center;"><a
  href="https://1.bp.blogspot.com/-bAsuRhUB7uA/WYvybXtlGZI/AAAAAAAARTk/if-tt4rXgCoBnEJM0QH6idYzzLDAKINxQCLcBGAs/s1600/2017-08-10_134141.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="415" data-original-width="491" height="539"
  src="https://1.bp.blogspot.com/-bAsuRhUB7uA/WYvybXtlGZI/AAAAAAAARTk/if-tt4rXgCoBnEJM0QH6idYzzLDAKINxQCLcBGAs/s640/2017-08-10_134141.png"
  width="640" /></a></div><br />裝好後, 建立一個bot.js, 然後填入<br /><br /><div
  style="background-color: #1e1e1e; color: #abb2bf; font-family: Consolas,
  "Courier New", monospace; font-size: 14px; line-height: 19px; white-space:
  pre;"><div><span style="color: #5c6370; font-style: italic;">// 建立一個
  Bot</span></div><div><div style="line-height: 19px;"><span style="color:
  #c678dd;">var</span> TelegramBot <span style="color: #56b6c2;">=</span> <span
  style="color: #56b6c2;">require</span>(<span style="color:
  #98c379;">'node-telegram-bot-api'</span>);</div></div><br /><div><span
  style="color: #c678dd;">const</span> token <span style="color:
  #56b6c2;">=</span> <span style="color:
  #98c379;">'這是你的機器人token'</span>;</div><div><span style="color:
  #c678dd;">const</span> bot <span style="color: #56b6c2;">=</span> <span
  style="color: #c678dd;">new</span> <span style="color:
  #e5c07b;">TelegramBot</span>(token, { polling<span style="color:
  #56b6c2;">:</span> <span style="color: #d19a66;">true</span> });</div><br
  /><div><span style="color: #e06c75;">bot</span>.<span style="color:
  #61afef;">onText</span>(<span style="color: #56b6c2;">/\/start/</span>,
  message <span style="color: #c678dd;">=></span> {</div><br /><div><span
  style="color: #e5c07b;">console</span>.<span style="color:
  #56b6c2;">log</span>(message); <span style="color: #5c6370; font-style:
  italic;">// for debug</span></div><div><span style="color:
  #c678dd;">const</span> chatId <span style="color: #56b6c2;">=</span> <span
  style="color: #e06c75;">message</span>.<span style="color:
  #e06c75;">chat</span>.<span style="color: #e06c75;">id</span>;</div><div><span
  style="color: #e06c75;">bot</span>.<span style="color:
  #61afef;">sendMessage</span>(chatId, <span style="color: #98c379;">'Hello
  World'</span>);</div><br /><div>});</div><br /><div><span style="color:
  #e06c75;">bot</span>.<span style="color: #61afef;">onText</span>(<span
  style="color: #56b6c2;">/\/吃飯飯/</span>, message <span style="color:
  #c678dd;">=></span> {</div><br /><div><span style="color:
  #e5c07b;">console</span>.<span style="color: #56b6c2;">log</span>(message);
  <span style="color: #5c6370; font-style: italic;">// for
  debug</span></div><div><span style="color: #c678dd;">const</span> chatId <span
  style="color: #56b6c2;">=</span> <span style="color:
  #e06c75;">message</span>.<span style="color: #e06c75;">chat</span>.<span
  style="color: #e06c75;">id</span>;</div><div><span style="color:
  #e06c75;">bot</span>.<span style="color: #61afef;">sendMessage</span>(chatId,
  <span style="color: #98c379;">'去你的飯飯'</span>);</div><br
  /><div>});</div></div><br /><span style="font-family: monospace;">然後啟動node
  bot.js, 然後</span><span style="font-family: monospace;">回到telegram web 或
  telegram app對話框中, 填入/start與/吃飯飯</span><br /><div class="separator"
  style="clear: both; text-align: center;"><a
  href="https://1.bp.blogspot.com/-4KSxWCv5ZtY/WYv1-uMf7nI/AAAAAAAARTw/w-48riYOrFA7ZMyD1nLUKott470wrRb9wCLcBGAs/s1600/2017-08-10_135659.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="465" data-original-width="700" height="424"
  src="https://1.bp.blogspot.com/-4KSxWCv5ZtY/WYv1-uMf7nI/AAAAAAAARTw/w-48riYOrFA7ZMyD1nLUKott470wrRb9wCLcBGAs/s640/2017-08-10_135659.png"
  width="640" /></a></div><br /><span style="font-family: monospace;">看,
  我跟我的機器人, 開始對話了XD</span><br /><span style="font-family: monospace;"><br
  /></span><span style="font-family: monospace;">所有對話過程都會在</span><span
  style="font-family: monospace;">console中</span><span style="font-family:
  monospace;">列出</span><br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://3.bp.blogspot.com/-9Y7fz85Jn94/WYv3SQlv-jI/AAAAAAAART8/kuu-zufhQRELyhVAbfyCQBOxsBbXrt68wCLcBGAs/s1600/2017-08-10_140326.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="529" data-original-width="528" height="640"
  src="https://3.bp.blogspot.com/-9Y7fz85Jn94/WYv3SQlv-jI/AAAAAAAART8/kuu-zufhQRELyhVAbfyCQBOxsBbXrt68wCLcBGAs/s640/2017-08-10_140326.png"
  width="636" /></a></div><span style="font-family: monospace;"><br
  /></span><span style="font-family: monospace;"><br /></span><span
  style="font-family: monospace;">收工</span><br /><br /><a
  href="https://telegram.me/cn27529bot">https://telegram.me/cn27529bot</a><br
  /><br /><br /><br /><br /><div class="blogger-post-footer">Copyright © Bruce
  Huang All rights reserved.</div>
date: 2017-08-10 14:11:00
---

登入telegram-web or telegram app 後選  

[![](https://2.bp.blogspot.com/-qJVKBkTDOPU/WYvXQs0aW5I/AAAAAAAARSM/n5K-T-PfEoYunjq0KxufAeroQov23LR-gCLcBGAs/s640/2017-08-10_114547.png)](https://2.bp.blogspot.com/-qJVKBkTDOPU/WYvXQs0aW5I/AAAAAAAARSM/n5K-T-PfEoYunjq0KxufAeroQov23LR-gCLcBGAs/s1600/2017-08-10_114547.png)

  
填入@botFather, 進行尋找  

[![](https://3.bp.blogspot.com/-402LDx0U1UI/WYvXgxq8PBI/AAAAAAAARSQ/IQv-ojVtksIjz6lkbTE6iWuijO4nZLh3ACLcBGAs/s640/2017-08-10_114642.png)](https://3.bp.blogspot.com/-402LDx0U1UI/WYvXgxq8PBI/AAAAAAAARSQ/IQv-ojVtksIjz6lkbTE6iWuijO4nZLh3ACLcBGAs/s1600/2017-08-10_114642.png)

  
對, 就是它, telegram bot 的爸爸XD, 將它加入  
@botFather加入後你會發現這個對話框  

[![](https://2.bp.blogspot.com/-paXcgOD3u8U/WYvu-EjoBaI/AAAAAAAARTE/midzxWpjYusj52y4kU3t8k2c2HPCJuGJACLcBGAs/s640/2017-08-10_132830.png)](https://2.bp.blogspot.com/-paXcgOD3u8U/WYvu-EjoBaI/AAAAAAAARTE/midzxWpjYusj52y4kU3t8k2c2HPCJuGJACLcBGAs/s1600/2017-08-10_132830.png)

  
對, 沒錯, 它告訴你使用/newbot來建立你的機器人, 如下  

[![](https://1.bp.blogspot.com/-dJ7zPnjlXe0/WYvvvwE5fwI/AAAAAAAARTM/rLNU-KgQiUAA1ZDIxaONipjxyPtqv51TACLcBGAs/s640/2017-08-10_133131.png)](https://1.bp.blogspot.com/-dJ7zPnjlXe0/WYvvvwE5fwI/AAAAAAAARTM/rLNU-KgQiUAA1ZDIxaONipjxyPtqv51TACLcBGAs/s1600/2017-08-10_133131.png)

  
好了, 我的cn27529bot機器人己有了XD  
  
接下來, 跟它talk講話吧~在講話的前提下, 需要建立跟它溝通的API管道, 我們用nodejs來進行  
  
先安裝要用的套件  

[![](https://1.bp.blogspot.com/-bAsuRhUB7uA/WYvybXtlGZI/AAAAAAAARTk/if-tt4rXgCoBnEJM0QH6idYzzLDAKINxQCLcBGAs/s640/2017-08-10_134141.png)](https://1.bp.blogspot.com/-bAsuRhUB7uA/WYvybXtlGZI/AAAAAAAARTk/if-tt4rXgCoBnEJM0QH6idYzzLDAKINxQCLcBGAs/s1600/2017-08-10_134141.png)

  
裝好後, 建立一個bot.js, 然後填入  
  

// 建立一個 Bot

var TelegramBot \= require('node-telegram-bot-api');

  

const token \= '這是你的機器人token';

const bot \= new TelegramBot(token, { polling: true });

  

bot.onText(/\\/start/, message \=> {

  

console.log(message); // for debug

const chatId \= message.chat.id;

bot.sendMessage(chatId, 'Hello World');

  

});

  

bot.onText(/\\/吃飯飯/, message \=> {

  

console.log(message); // for debug

const chatId \= message.chat.id;

bot.sendMessage(chatId, '去你的飯飯');

  

});

  
然後啟動node bot.js, 然後回到telegram web 或 telegram app對話框中, 填入/start與/吃飯飯  

[![](https://1.bp.blogspot.com/-4KSxWCv5ZtY/WYv1-uMf7nI/AAAAAAAARTw/w-48riYOrFA7ZMyD1nLUKott470wrRb9wCLcBGAs/s640/2017-08-10_135659.png)](https://1.bp.blogspot.com/-4KSxWCv5ZtY/WYv1-uMf7nI/AAAAAAAARTw/w-48riYOrFA7ZMyD1nLUKott470wrRb9wCLcBGAs/s1600/2017-08-10_135659.png)

  
看, 我跟我的機器人, 開始對話了XD  
  
所有對話過程都會在console中列出  

[![](https://3.bp.blogspot.com/-9Y7fz85Jn94/WYv3SQlv-jI/AAAAAAAART8/kuu-zufhQRELyhVAbfyCQBOxsBbXrt68wCLcBGAs/s640/2017-08-10_140326.png)](https://3.bp.blogspot.com/-9Y7fz85Jn94/WYv3SQlv-jI/AAAAAAAART8/kuu-zufhQRELyhVAbfyCQBOxsBbXrt68wCLcBGAs/s1600/2017-08-10_140326.png)

  
  
收工  
  
[https://telegram.me/cn27529bot](https://telegram.me/cn27529bot)  
  
  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
