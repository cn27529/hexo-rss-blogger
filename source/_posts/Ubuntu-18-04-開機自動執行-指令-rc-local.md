---
title: Ubuntu 18.04 開機自動執行 指令 rc.local
tags:
  - Glances
  - Ubuntu
excerpt: >-
  <div><span face="" style="color: #24292e;"><span style="background-color:
  white; font-size: 14px;">1.sudo su 切換到root權限</span></span></div><div><span
  face="" style="color: #24292e;"><span style="background-color: white;
  font-size: 14px;">2.以root身分, 進入lib/systemd/system/ 查看是否有rc.local.service檔案,
  一般都會有啦XD</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size:
  14px;">若沒有就走2-1</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size: 14px;">2-1.nano
  lib/systemd/system/rc.local.service</span></span></div><div><span face=""
  style="color: #24292e;"><span style="background-color: white; font-size:
  14px;">文件最後加上</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size:
  14px;">[Install]</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size:
  14px;">WantedBy=multi-user.target</span></span></div><div><span face=""
  style="color: #24292e;"><span style="background-color: white; font-size:
  14px;">Alias=rc.local.service</span></span></div><div><span face=""
  style="color: #24292e;"><span style="background-color: white; font-size:
  14px;"><br /></span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size:
  14px;">存檔</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">3.建立 rc.local
  檔</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">cd
  /etc</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">sudo touch
  rc.local</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"><br
  /></span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">nano
  rc.local</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size:
  14px;">文件內容如下</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size: 14px;">#!/bin/sh
  -e</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size:
  14px;">#</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">#
  rc.local</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size:
  14px;">#</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"># This script is executed at
  the end of each multiuser runlevel.</span></span></div><div><span face=""
  style="color: #24292e;"><span style="background-color: white; font-size:
  14px;"># Make sure that the script will “exit 0” on success or any
  other</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"># value on
  error.</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size:
  14px;">#</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"># In order to enable or
  disable this script just change the execution</span></span></div><div><span
  face="" style="color: #24292e;"><span style="background-color: white;
  font-size: 14px;"># bits.</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size:
  14px;">#</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"># By default this script
  does nothing.</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size: 14px;"><br
  /></span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">#每次啟動自動執行Glances
  命令列系統監控工具</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">glances
  -w</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"><br
  /></span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">exit
  0</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"><br
  /></span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"><br
  /></span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;"><br
  /></span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">4.rc.local
  變更執行權限</span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size: 14px;">sudo chmod +R 777
  /etc/rc.local</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size: 14px;"><br
  /></span></span></div><div><span face="" style="color: #24292e;"><span
  style="background-color: white; font-size:
  14px;">5.啟用服務</span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size: 14px;">sudo
  systemctl enable rc-local.service</span></span></div><div><span face=""
  style="color: #24292e;"><span style="background-color: white; font-size:
  14px;"><br /></span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size:
  14px;">6.重開機如果有自動glances -w就是成功囉！</span></span></div><div><span face=""
  style="color: #24292e;"><span style="background-color: white; font-size:
  14px;"><br /></span></span></div><div><span face="" style="color:
  #24292e;"><span style="background-color: white; font-size: 14px;"><a
  href="https://gist.github.com/cn27529/58e6d84550819740eac1dfe568ef9c09">gist</a></span></span></div><div><span
  face="" style="color: #24292e;">參考</span></div><div><span face=""
  style="color: #24292e;"><a
  href="https://www.webteach.tw/?p=2621">https://www.webteach.tw/?p=2621</a></span></div><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2020-08-10 10:18:00
---

1.sudo su 切換到root權限

2.以root身分, 進入lib/systemd/system/ 查看是否有rc.local.service檔案, 一般都會有啦XD

若沒有就走2-1

2-1.nano lib/systemd/system/rc.local.service

文件最後加上

\[Install\]

WantedBy=multi-user.target

Alias=rc.local.service

  

存檔

3.建立 rc.local 檔

cd /etc

sudo touch rc.local

  

nano rc.local

文件內容如下

#!/bin/sh -e

#

\# rc.local

#

\# This script is executed at the end of each multiuser runlevel.

\# Make sure that the script will “exit 0” on success or any other

\# value on error.

#

\# In order to enable or disable this script just change the execution

\# bits.

#

\# By default this script does nothing.

  

#每次啟動自動執行Glances 命令列系統監控工具

glances -w

  

exit 0

  

  

  

4.rc.local 變更執行權限

sudo chmod +R 777 /etc/rc.local

  

5.啟用服務

sudo systemctl enable rc-local.service

  

6.重開機如果有自動glances -w就是成功囉！

  

[gist](https://gist.github.com/cn27529/58e6d84550819740eac1dfe568ef9c09)

參考

[https://www.webteach.tw/?p=2621](https://www.webteach.tw/?p=2621)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
