---
title: WinXp 校調 - 讓電腦跑得比較快?
tags:
  - Windows 相關
excerpt: >-
  清除 WinXP Shared Folders--就是在「我的電腦」裡那個礙眼的「共用文件夾」 <br />1.利用regedit來開啟註冊表編輯器 <br
  />2.並刪掉以下的機碼： <br />HKEY_LOCAL_MACHINE \ SOFTWARE \ Microsoft \ Windows \
  CurrentVersion \ Explorer \ My Computer \ NameSpace \ DelegateFolders \
  {59031a47-3f72-44a7-89c5-5595fe6b30ee} <br /><br />加速XP的開關機 <br />1.開啟註冊表編輯器
  <br />2.找到HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control， <br
  />3.將WaitToKillServiceTimeout 設為：1000或更小。 <br />4.找到HKEY_CURRENT_USER\Control
  Panel\Desktop， <br />5.將右邊視窗的 WaitToKillAppTimeout 改為 1000， <br
  />6.即關閉程序時僅等待1秒。 <br />7.將HungAppTimeout 值改為：200，表示程序出錯時等待0.5秒。 <br />8.打開註冊表
  HKEY_CURRENT_USER\Control Panel\Desktop 鍵， <br />9.將 AutoEndTasks 值設為 1。
  讓系統自動關閉停止回應的程式。 <br /><br />加快選單顯示速度 <br />1.開啟註冊表編輯器， <br />2.找到
  HKEY_CURRENT_USER\Control Panel\Desktop， <br />3.將其下的 MenuShowDelay
  項改為：0，你的選單將會出乎意料地快。 <br />=================================== <br /><br
  />XP減肥方法 <br />1.刪除系統檔備份 ：sfc.exe /purgecache <br />2.刪除驅動備份：windows\driver
  cache\i386目錄下的Driver.cab文件 （73mb) <br />3.取消系統還原 <br />4.刪除Help檔（減掉40多mb) <br
  />5.刪掉\WINDOWS\system32\dllcache(減去近300mb),這是備用的dll檔， 只要你已拷貝了安裝檔，完全可以這樣做。 <br
  />6.把我的文件、IE的暫存檔案夾都轉到其他硬碟（分區）。 <br />7.把虛擬記憶體也轉到其他硬碟。 <br
  />8.將應用軟體裝在其他硬碟（這對重裝系統也有好處）。 <br
  />9.刪除\windows\ime下不用的輸入法（日文，韓文，簡體中文輸入法，84.5MB） <br />10.如用ntfs裝xp,本身就節省硬碟。
  <br /><br />XP檢查是否有啟用成功 <br />開完機後可以試試在 執行列上打... <br />oobe/msoobe /a <br
  />如果出現... <br />Windows 產品啟用 <br />Windows 已經啟用。請按[確定]結束。 <br /><br
  />真正檢查XP的版本 <br />找尋電腦中windows/system32/NTOSKRNL.EXE 的這個檔-->按右鍵-->選內容 <br
  /><br />辨認真假中文版XP的方法 <br />1.執行超級終端機.是否為中文介面及中文名稱抬頭 <br
  />2.尋找dxdiag.exe並執行.看看directx診斷程式中的系統資訊 <br />-->看看系統資訊中的作業系統版本是否為5.1build2600
  <br />-->看看系統資訊中的語言及區域設定是否都為中文 <br />(如果是就沒問題囉) <br /><br />XP要做開機磁片 <br
  />在A槽-->按右鍵-->選格式化-->選建立一個MS-DOS開機磁片 <br /><br />WinXP的ADSL撥接功能 <br />方法: <br
  />控制台-->網路連線-->建立一個新連線-->連線到網際網路 <br />-->手動設定我的連線 <br
  />-->使用需要使用者名稱和密碼的寬頻連線來連線 <br />-->ISP名稱(隨便填你想要的,如Hinet...) <br
  />-->使用者名稱.密碼就填撥接帳號與密碼 <br />-->下面3選項看需要可選可不選(其實XP內建的防火牆功能不錯)-->完成 <br />P.S
  如要開機就自動撥接上網的話,把連線ICON抓到啟動中,應該就可以囉 <br /><br />XP的網路芳鄰無法使用解決辦法(先確認網路都沒問題) <br
  />進入控制台-->使用者帳戶-->建立新的帳戶 <br />-->輸入那台電腦的開機帳號(電腦名稱)及密碼 <br
  />-->選擇"受限制的帳戶"-->完成 <br />這樣別人就可以登陸你的電腦裡囉 <br /><br />XP裡開啟DMA <br />關於DMA:
  <br />到裝置管理員裡選擇IDE ATA/ATAPI controllers <br />到Primary/Secondary IDE
  Channel裡面的進階設定 <br />將所有的轉送模式都設定為使用DMA(如果可用的話) <br
  />系統就會自動打開DMA支援(在BIOS裡也應該要先設為支援DMA) <br /><br />XP裡關閉光碟Autorun功能 <br
  />打開光碟機的內容,將自動撥放裡所有的光碟格式都設為不要有任何動作 <br />或 <br />利用Group Policy (執行gpedit.msc)
  <br />到電腦設定-->系統管理範本-->系統 <br />找到-->關閉自動撥放 <br />按右鍵選-->內容,選擇已-->啟用, <br
  />在下面那裡選-->所有的磁碟機, <br />然後套用,重新開機,應該也可以,但是這個方法不能關閉音樂CD的自動撥放 <br /><br
  />XP的自動關機問題 <br />如果不能自動關機的話 <br />控制台-->電源-->顯示-->螢幕保護程式-->電源管理-->APM打勾 <br
  />這樣應該就可以了 <br />如果還不行,應該是BIOS的問題 <br /><br />XP關閉系統休眠功能 <br
  />因為休眠功能佔的硬碟空間蠻大的, <br />所以關閉比較好, <br />控制台-->電源選項-->休眠(不要打勾) <br /><br
  />關閉視窗錯誤回報 <br />控制台---->系統---->進階---->右下角--->錯誤報告---->關閉 <br /><br
  />關閉XP安裝驅動程式往往因為數位簽署 <br />控制台----->系統------>硬體----->裝置管理員----->驅動程式簽署---->略過
  <br /><br />確定XP是否真正破解 <br />開始-->>執行-->>regedit <br
  />HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion] <br />將
  "RegDone" = 的數值，由 "0" 改成 "1" <br />如此才算完全"破解" ,這個動作很重要 <br />很多奇怪的小毛病因此而解決 <br
  />請大家務必檢查一下........... <br /><br />檢查WinXP執行時候為什麼會停頓 <br />開始-->連線-->顯示所有連線
  <br />按區域網路-->按右鍵-->選內容 <br />點選一般下面-->選Internet Protocol(TCP/IP)-->按內容 <br
  />使用下列的ip位址-->第一個192.168.0.1-->第二個打255.255.255.0 <br />這樣就好了-->以後開機就不會停頓了 <br
  />(PS.有網路使用需求的不要亂改)<div class="blogger-post-footer">Copyright © Bruce Huang
  All rights reserved.</div>
date: 2009-03-22 00:15:00
---

清除 WinXP Shared Folders--就是在「我的電腦」裡那個礙眼的「共用文件夾」  
1.利用regedit來開啟註冊表編輯器  
2.並刪掉以下的機碼：  
HKEY\_LOCAL\_MACHINE \\ SOFTWARE \\ Microsoft \\ Windows \\ CurrentVersion \\ Explorer \\ My Computer \\ NameSpace \\ DelegateFolders \\ {59031a47-3f72-44a7-89c5-5595fe6b30ee}  
  
加速XP的開關機  
1.開啟註冊表編輯器  
2.找到HKEY\_LOCAL\_MACHINE\\System\\CurrentControlSet\\Control，  
3.將WaitToKillServiceTimeout 設為：1000或更小。  
4.找到HKEY\_CURRENT\_USER\\Control Panel\\Desktop，  
5.將右邊視窗的 WaitToKillAppTimeout 改為 1000，  
6.即關閉程序時僅等待1秒。  
7.將HungAppTimeout 值改為：200，表示程序出錯時等待0.5秒。  
8.打開註冊表 HKEY\_CURRENT\_USER\\Control Panel\\Desktop 鍵，  
9.將 AutoEndTasks 值設為 1。 讓系統自動關閉停止回應的程式。  
  
加快選單顯示速度  
1.開啟註冊表編輯器，  
2.找到 HKEY\_CURRENT\_USER\\Control Panel\\Desktop，  
3.將其下的 MenuShowDelay 項改為：0，你的選單將會出乎意料地快。  
\===================================  
  
XP減肥方法  
1.刪除系統檔備份 ：sfc.exe /purgecache  
2.刪除驅動備份：windows\\driver cache\\i386目錄下的Driver.cab文件 （73mb)  
3.取消系統還原  
4.刪除Help檔（減掉40多mb)  
5.刪掉\\WINDOWS\\system32\\dllcache(減去近300mb),這是備用的dll檔， 只要你已拷貝了安裝檔，完全可以這樣做。  
6.把我的文件、IE的暫存檔案夾都轉到其他硬碟（分區）。  
7.把虛擬記憶體也轉到其他硬碟。  
8.將應用軟體裝在其他硬碟（這對重裝系統也有好處）。  
9.刪除\\windows\\ime下不用的輸入法（日文，韓文，簡體中文輸入法，84.5MB）  
10.如用ntfs裝xp,本身就節省硬碟。  
  
XP檢查是否有啟用成功  
開完機後可以試試在 執行列上打...  
oobe/msoobe /a  
如果出現...  
Windows 產品啟用  
Windows 已經啟用。請按\[確定\]結束。  
  
真正檢查XP的版本  
找尋電腦中windows/system32/NTOSKRNL.EXE 的這個檔-->按右鍵-->選內容  
  
辨認真假中文版XP的方法  
1.執行超級終端機.是否為中文介面及中文名稱抬頭  
2.尋找dxdiag.exe並執行.看看directx診斷程式中的系統資訊  
\-->看看系統資訊中的作業系統版本是否為5.1build2600  
\-->看看系統資訊中的語言及區域設定是否都為中文  
(如果是就沒問題囉)  
  
XP要做開機磁片  
在A槽-->按右鍵-->選格式化-->選建立一個MS-DOS開機磁片  
  
WinXP的ADSL撥接功能  
方法:  
控制台-->網路連線-->建立一個新連線-->連線到網際網路  
\-->手動設定我的連線  
\-->使用需要使用者名稱和密碼的寬頻連線來連線  
\-->ISP名稱(隨便填你想要的,如Hinet...)  
\-->使用者名稱.密碼就填撥接帳號與密碼  
\-->下面3選項看需要可選可不選(其實XP內建的防火牆功能不錯)-->完成  
P.S 如要開機就自動撥接上網的話,把連線ICON抓到啟動中,應該就可以囉  
  
XP的網路芳鄰無法使用解決辦法(先確認網路都沒問題)  
進入控制台-->使用者帳戶-->建立新的帳戶  
\-->輸入那台電腦的開機帳號(電腦名稱)及密碼  
\-->選擇"受限制的帳戶"-->完成  
這樣別人就可以登陸你的電腦裡囉  
  
XP裡開啟DMA  
關於DMA:  
到裝置管理員裡選擇IDE ATA/ATAPI controllers  
到Primary/Secondary IDE Channel裡面的進階設定  
將所有的轉送模式都設定為使用DMA(如果可用的話)  
系統就會自動打開DMA支援(在BIOS裡也應該要先設為支援DMA)  
  
XP裡關閉光碟Autorun功能  
打開光碟機的內容,將自動撥放裡所有的光碟格式都設為不要有任何動作  
或  
利用Group Policy (執行gpedit.msc)  
到電腦設定-->系統管理範本-->系統  
找到-->關閉自動撥放  
按右鍵選-->內容,選擇已-->啟用,  
在下面那裡選-->所有的磁碟機,  
然後套用,重新開機,應該也可以,但是這個方法不能關閉音樂CD的自動撥放  
  
XP的自動關機問題  
如果不能自動關機的話  
控制台-->電源-->顯示-->螢幕保護程式-->電源管理-->APM打勾  
這樣應該就可以了  
如果還不行,應該是BIOS的問題  
  
XP關閉系統休眠功能  
因為休眠功能佔的硬碟空間蠻大的,  
所以關閉比較好,  
控制台-->電源選項-->休眠(不要打勾)  
  
關閉視窗錯誤回報  
控制台---->系統---->進階---->右下角--->錯誤報告---->關閉  
  
關閉XP安裝驅動程式往往因為數位簽署  
控制台----->系統------>硬體----->裝置管理員----->驅動程式簽署---->略過  
  
確定XP是否真正破解  
開始-->>執行-->>regedit  
HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\]  
將 "RegDone" = 的數值，由 "0" 改成 "1"  
如此才算完全"破解" ,這個動作很重要  
很多奇怪的小毛病因此而解決  
請大家務必檢查一下...........  
  
檢查WinXP執行時候為什麼會停頓  
開始-->連線-->顯示所有連線  
按區域網路-->按右鍵-->選內容  
點選一般下面-->選Internet Protocol(TCP/IP)-->按內容  
使用下列的ip位址-->第一個192.168.0.1-->第二個打255.255.255.0  
這樣就好了-->以後開機就不會停頓了  
(PS.有網路使用需求的不要亂改)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
