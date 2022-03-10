---
title: 讓你的筆記本工具，在另存檔案時預設使用utf-8編碼
tags:
  - Windows 相關
  - 軟体應用相關
  - 軟工文件工具
excerpt: >-
  Windows Notepad default save as utf-8<br />介紹如何讓windows
  notepad，能夠在另存檔案時預設使用為utf-8編碼。<br /><div><br /></div><div>1.
  建立一個名為TXTUTF-8.txt文檔</div><div><br /></div><div>2. 打開TXTUTF-8.txt文檔，選擇"檔案" >
  "另存" 為utf-8格式</div><div><br /></div><div>3.
  移置C:\Windows\SHELLNEW，將TXTUTF-8.txt拷貝至此C:\Windows\SHELLNEW路徑下</div><div><br
  /></div><div>3. 執行cmd命令，鍵入regedit命令</div><div><br /></div><div>4.
  選擇HKEY_CLASSES_ROOT找到.txt節點，在.txt下找到ShellNew。</div><div><br
  /></div><div>5.&nbsp;點選ShellNew，在右邊的視窗中空白處，點右鍵&nbsp;新增 >
  字串值&nbsp;項目，將字串值的名稱命名為FileName，點選FileName按右鍵 > 修改
  ，填入TXTUTF-8.txt，按確定。</div><div><br /></div><div>完成收工</div><div></div><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2012-10-15 22:32:00
---

Windows Notepad default save as utf-8  
介紹如何讓windows notepad，能夠在另存檔案時預設使用為utf-8編碼。  

  

1\. 建立一個名為TXTUTF-8.txt文檔

  

2\. 打開TXTUTF-8.txt文檔，選擇"檔案" > "另存" 為utf-8格式

  

3\. 移置C:\\Windows\\SHELLNEW，將TXTUTF-8.txt拷貝至此C:\\Windows\\SHELLNEW路徑下

  

3\. 執行cmd命令，鍵入regedit命令

  

4\. 選擇HKEY\_CLASSES\_ROOT找到.txt節點，在.txt下找到ShellNew。

  

5. 點選ShellNew，在右邊的視窗中空白處，點右鍵 新增 > 字串值 項目，將字串值的名稱命名為FileName，點選FileName按右鍵 > 修改 ，填入TXTUTF-8.txt，按確定。

  

完成收工

Copyright © Bruce Huang All rights reserved.
<!-- more -->
