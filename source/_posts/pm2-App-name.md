---
title: 'pm2, App name'
tags:
  - Nodejs
  - pm2
  - vscode
excerpt: >-
  具<a href="http://pm2.keymetrics.io/docs/usage/quick-start/#42-starts"
  target="_blank">官方文件</a>是長這樣<br /><br /><pre class="highlight"
  style="background: rgb(255, 255, 255); border-radius: 0px; border: 1px solid
  rgb(231, 231, 231); box-sizing: border-box; color: #333333; font-size: 13px;
  line-height: 1.42857; margin-bottom: 15px; overflow: auto; padding: 9.5px;
  word-break: break-all; word-wrap: break-word;"><code style="background-color:
  transparent; border-radius: 0px; border: 0px; box-sizing: border-box; color:
  inherit; font-size: inherit; padding: 0px; white-space: pre-wrap;">pm2 start
  app.js           <span class="c" style="box-sizing: border-box; color:
  #999988; font-style: italic;"># Start app.js</span><br /><br />pm2 start
  app.js <span class="nt" style="box-sizing: border-box; color: navy;">--</span>
  <span class="nt" style="box-sizing: border-box; color: navy;">-a</span> 23 
  <span class="c" style="box-sizing: border-box; color: #999988; font-style:
  italic;"># Pass arguments '-a 23' argument to app.js script</span><br /><br
  />pm2 start app.js <span class="nt" style="box-sizing: border-box; color:
  navy;">--name</span> serverone <span class="c" style="box-sizing: border-box;
  color: #999988; font-style: italic;"># Start a process and name it as
  serverone</span><br />                                    <span class="c"
  style="box-sizing: border-box; color: #999988; font-style: italic;"># you can
  now stop the process by doing</span><br />                                   
  <span class="c" style="box-sizing: border-box; color: #999988; font-style:
  italic;"># pm2 stop serverone</span></code></pre>別名其實是很方便的東西...<br /><br
  />按官方指示, 在實際上使用時, 你會發現....<br /><div class="separator" style="clear: both;
  text-align: center;"><a
  href="https://1.bp.blogspot.com/-ph3cB2mhYhs/WwPeDIkOgDI/AAAAAAAAaHE/3eFY0GR_RUEV6nk9tFM4fcfsfhKcSQXxQCLcBGAs/s1600/pm2-set-App%2Bname-%25E5%2588%25A5%25E5%2590%258D%25E6%25B2%2592%25E8%25AE%258A%25E8%2580%25B6XD.jpg"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em; text-align:
  center;"><img border="0" data-original-height="225" data-original-width="1033"
  height="139"
  src="https://1.bp.blogspot.com/-ph3cB2mhYhs/WwPeDIkOgDI/AAAAAAAAaHE/3eFY0GR_RUEV6nk9tFM4fcfsfhKcSQXxQCLcBGAs/s640/pm2-set-App%2Bname-%25E5%2588%25A5%25E5%2590%258D%25E6%25B2%2592%25E8%25AE%258A%25E8%2580%25B6XD.jpg"
  width="640" /></a></div><br /><br />在<b>參數</b>搭配<b>別名</b>時會變成這樣..<br /><div
  class="separator" style="clear: both; text-align: center;"><a
  href="https://4.bp.blogspot.com/-sZuS9EPBlyc/WwPefjKXbBI/AAAAAAAAaHM/NpsiVohEkTkDQHsm0sDvN7i11x4rYjZ-ACLcBGAs/s1600/pm2-set-App%2Bname-%25E5%25B9%25B9%2521%25E5%258F%2583%25E6%2595%25B8%25E7%259A%2584%25E5%259C%25B0%25E6%2596%25B9%25E6%2598%25AF%25E6%25B2%2599%25E5%25B0%258F.jpg"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="530" data-original-width="881" height="385"
  src="https://4.bp.blogspot.com/-sZuS9EPBlyc/WwPefjKXbBI/AAAAAAAAaHM/NpsiVohEkTkDQHsm0sDvN7i11x4rYjZ-ACLcBGAs/s640/pm2-set-App%2Bname-%25E5%25B9%25B9%2521%25E5%258F%2583%25E6%2595%25B8%25E7%259A%2584%25E5%259C%25B0%25E6%2596%25B9%25E6%2598%25AF%25E6%25B2%2599%25E5%25B0%258F.jpg"
  width="640" /></a></div><br />原來是....別名在前, 參數在後<br /><div class="separator"
  style="clear: both; text-align: center;"><a
  href="https://4.bp.blogspot.com/--Cxy83bXtVE/WwPuQ_QJ0rI/AAAAAAAAaHY/j2QehhARaRshoSSGFQxAiyG5l0xzzI8JACLcBGAs/s1600/pm2-set-App%2Bname-%25E6%25AD%25A3%25E7%25A2%25BA%25E4%25BA%2586.jpg"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  data-original-height="649" data-original-width="1078" height="385"
  src="https://4.bp.blogspot.com/--Cxy83bXtVE/WwPuQ_QJ0rI/AAAAAAAAaHY/j2QehhARaRshoSSGFQxAiyG5l0xzzI8JACLcBGAs/s640/pm2-set-App%2Bname-%25E6%25AD%25A3%25E7%25A2%25BA%25E4%25BA%2586.jpg"
  width="640" /></a></div><br />完工<br /><br /><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2018-05-22 18:21:00
---

具[官方文件](http://pm2.keymetrics.io/docs/usage/quick-start/#42-starts)是長這樣  
  

```
pm2 start app.js           # Start app.jspm2 start app.js -- -a 23  # Pass arguments '-a 23' argument to app.js scriptpm2 start app.js --name serverone # Start a process and name it as serverone                                    # you can now stop the process by doing                                    # pm2 stop serverone
```

別名其實是很方便的東西...  
  
按官方指示, 在實際上使用時, 你會發現....  

[![](https://1.bp.blogspot.com/-ph3cB2mhYhs/WwPeDIkOgDI/AAAAAAAAaHE/3eFY0GR_RUEV6nk9tFM4fcfsfhKcSQXxQCLcBGAs/s640/pm2-set-App%2Bname-%25E5%2588%25A5%25E5%2590%258D%25E6%25B2%2592%25E8%25AE%258A%25E8%2580%25B6XD.jpg)](https://1.bp.blogspot.com/-ph3cB2mhYhs/WwPeDIkOgDI/AAAAAAAAaHE/3eFY0GR_RUEV6nk9tFM4fcfsfhKcSQXxQCLcBGAs/s1600/pm2-set-App%2Bname-%25E5%2588%25A5%25E5%2590%258D%25E6%25B2%2592%25E8%25AE%258A%25E8%2580%25B6XD.jpg)

  
  
在**參數**搭配**別名**時會變成這樣..  

[![](https://4.bp.blogspot.com/-sZuS9EPBlyc/WwPefjKXbBI/AAAAAAAAaHM/NpsiVohEkTkDQHsm0sDvN7i11x4rYjZ-ACLcBGAs/s640/pm2-set-App%2Bname-%25E5%25B9%25B9%2521%25E5%258F%2583%25E6%2595%25B8%25E7%259A%2584%25E5%259C%25B0%25E6%2596%25B9%25E6%2598%25AF%25E6%25B2%2599%25E5%25B0%258F.jpg)](https://4.bp.blogspot.com/-sZuS9EPBlyc/WwPefjKXbBI/AAAAAAAAaHM/NpsiVohEkTkDQHsm0sDvN7i11x4rYjZ-ACLcBGAs/s1600/pm2-set-App%2Bname-%25E5%25B9%25B9%2521%25E5%258F%2583%25E6%2595%25B8%25E7%259A%2584%25E5%259C%25B0%25E6%2596%25B9%25E6%2598%25AF%25E6%25B2%2599%25E5%25B0%258F.jpg)

  
原來是....別名在前, 參數在後  

[![](https://4.bp.blogspot.com/--Cxy83bXtVE/WwPuQ_QJ0rI/AAAAAAAAaHY/j2QehhARaRshoSSGFQxAiyG5l0xzzI8JACLcBGAs/s640/pm2-set-App%2Bname-%25E6%25AD%25A3%25E7%25A2%25BA%25E4%25BA%2586.jpg)](https://4.bp.blogspot.com/--Cxy83bXtVE/WwPuQ_QJ0rI/AAAAAAAAaHY/j2QehhARaRshoSSGFQxAiyG5l0xzzI8JACLcBGAs/s1600/pm2-set-App%2Bname-%25E6%25AD%25A3%25E7%25A2%25BA%25E4%25BA%2586.jpg)

  
完工  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
