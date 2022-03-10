---
title: 'DOS.nbtstat 指令, 取得服務器主機名'
tags:
  - Command line
  - Windows 相關
excerpt: >-
  如何使用IP位置找出服務器名稱 nbtstat -a 192.168.0.1 , 可列出其主機名提供的遠端電腦名字表。<br /><br
  />結果如下:<br />NetBIOS Remote Machine Name Table<br /><br />Name &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Type &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; Status<br
  />--------------------------------------------------------------------------<br
  />找到的主機名 &nbsp;UNIQUE &nbsp;Registered<br />XXXX &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; GROUP &nbsp; &nbsp;Registered<br />找到的主機名 &nbsp;UNIQUE
  &nbsp;Registered<br />XXXX &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  GROUP &nbsp; &nbsp;Registered<br /><br /><br /><b>參數</b><br />-A
  列出其IP位址提供的遠端電腦名字表。<br />-c 列出包括了IP位址的遠端名字快取記憶體器。<br />-n 列出本地NetBIOS名字。<br
  />-r 列出通過廣播和WINS解析的名字。<br />-R 消除和重新載入遠端快取記憶體器名字表。<br />-S 列出有目的地IP位址的會話表。<br
  />-s 列出會話表對話。<br /><br />NBTSTAT產生的列標題具有以下含義：<br /><br />Input 接收到的位元組數。<br
  /><br />Output 發出的位元組數。<br /><br />In/Out 無論是從電腦（出站）還是從另一個系統連接到本地電腦（入站）。<br
  /><br />Life 在電腦消除名字表快取記憶體表目前“度過”的時間。<br /><br />Local Name
  連接提供的本地NetBIOS名字。<br /><br />Remote Host 遠端主機的名字或IP位址。<br /><br />Type
  一個名字可以具備兩個類型之一：unique or group<br /><br
  />在16個字元的NetBIOS名中，最後一個位元組往往有具體含義，因?同一個名可以在同一台電腦上出現多次。這表明該名字的最後一個位元組被轉換成了16進制。<br
  /><br />State NetBIOS連接將在下列“狀態”（任何一個）中顯示：<br /><br />狀態含義：<br />Accepting:
  連接正在進行中。<br />Associated: 連接的端點已經建立，電腦已經與IP位址聯繫起來。<br />Connected:
  這是一個好的狀態！它表明您被連接到遠端資源上。<br />Connecting: 您的會話試著解析目的地資源的名字-IP位址映射。<br
  />Disconnected: 您的電腦請求斷開，並等待遠端電腦作出這樣的反應。<br />Disconnecting: 您的連接正在結束。<br
  />Idle: 遠端電腦在當前會話中已經打開，但現在沒有接受連接。<br />Inbound: 入站會話試著連接。<br />Listening:
  遠端電腦可用。<br />Outbound: 您的會話正在建立TCP連接。<br />Reconnecting:
  如果第一次連接失敗，就會顯示這個狀態，表示試著重新連接。<br /><br /><br />您通過下表能掌握有關該主機的服務<br /><br
  />名稱編號類型的使用：<br /><br />00 U 工作站服務<br />01 U 郵件服務<br />\\_MSBROWSE_ 01 G
  主瀏覽器<br />03 U 郵件服務<br />06 U RAS伺服器服務<br />1F U NetDDE服務<br />20 U 檔案伺服器服務<br
  />21 U RAS用戶端服務<br />22 U Exchange Interchange<br />23 U Exchange Store<br
  />24 U Exchange Directory<br />30 U 數據機共用伺服器服務<br />31 U 數據機共用用戶端服務<br />43 U
  SMS用戶端遠端控制<br />44 U SMS管理遠端控制工具<br />45 U SMS用戶端遠端聊天<br />46 U SMS用戶端遠端傳輸<br
  />4C U DEC Pathworks TCP/IP服務<br />52 U DEC Pathworks TCP/IP服務<br />87 U
  Exchange MTA<br />6A U Exchange IMC<br />BE U網路監控代理<br />BF U網路監控應用<br />03
  U郵件服務<br />00 G功能變數名稱<br />1B U域主瀏覽器<br />1C G網域控制器<br />1D U主瀏覽器<br />1E
  G瀏覽器服務選擇<br />1C G IIS 伺服器<br />00 U IIS 伺服器<br />[2B] U Lotus Notes伺服器<br
  />IRISMULTICAST [2F] G Lotus Notes<br />IRISNAMESERVER [33] G Lotus Notes<br
  />Forte_$ND800ZA [20] U DCA Irmalan閘道服務<br /><br />Unique (U):
  該名字可能只有一個分配給它的IP位址。在網路設備上，一個要註冊的名字可以出現多次，但其尾碼是唯一的，從而使整個名字是唯一的。<br /><br
  />Group (G): 一個正常的群組；一個名字可以有很多個IP位址。<br /><br />Multihomed (M):
  該名字是唯一的，但由於在同一台電腦上有多個網路介面，這個配置可允許註冊。這些地址的最大編號是25。<br /><br />Internet Group
  (I): 這是用來管理WinNT功能變數名稱的組名字的特殊配置。<br /><br />Domain Name (D): NT 4.0提供的新內容。<br
  /><br /><br />引自: http://www.wretch.cc/blog/lichangying/24234909<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2011-06-02 13:22:00
---

如何使用IP位置找出服務器名稱 nbtstat -a 192.168.0.1 , 可列出其主機名提供的遠端電腦名字表。  
  
結果如下:  
NetBIOS Remote Machine Name Table  
  
Name                  Type             Status  
\--------------------------------------------------------------------------  
找到的主機名  UNIQUE  Registered  
XXXX               GROUP    Registered  
找到的主機名  UNIQUE  Registered  
XXXX               GROUP    Registered  
  
  
**參數**  
\-A 列出其IP位址提供的遠端電腦名字表。  
\-c 列出包括了IP位址的遠端名字快取記憶體器。  
\-n 列出本地NetBIOS名字。  
\-r 列出通過廣播和WINS解析的名字。  
\-R 消除和重新載入遠端快取記憶體器名字表。  
\-S 列出有目的地IP位址的會話表。  
\-s 列出會話表對話。  
  
NBTSTAT產生的列標題具有以下含義：  
  
Input 接收到的位元組數。  
  
Output 發出的位元組數。  
  
In/Out 無論是從電腦（出站）還是從另一個系統連接到本地電腦（入站）。  
  
Life 在電腦消除名字表快取記憶體表目前“度過”的時間。  
  
Local Name 連接提供的本地NetBIOS名字。  
  
Remote Host 遠端主機的名字或IP位址。  
  
Type 一個名字可以具備兩個類型之一：unique or group  
  
在16個字元的NetBIOS名中，最後一個位元組往往有具體含義，因?同一個名可以在同一台電腦上出現多次。這表明該名字的最後一個位元組被轉換成了16進制。  
  
State NetBIOS連接將在下列“狀態”（任何一個）中顯示：  
  
狀態含義：  
Accepting: 連接正在進行中。  
Associated: 連接的端點已經建立，電腦已經與IP位址聯繫起來。  
Connected: 這是一個好的狀態！它表明您被連接到遠端資源上。  
Connecting: 您的會話試著解析目的地資源的名字-IP位址映射。  
Disconnected: 您的電腦請求斷開，並等待遠端電腦作出這樣的反應。  
Disconnecting: 您的連接正在結束。  
Idle: 遠端電腦在當前會話中已經打開，但現在沒有接受連接。  
Inbound: 入站會話試著連接。  
Listening: 遠端電腦可用。  
Outbound: 您的會話正在建立TCP連接。  
Reconnecting: 如果第一次連接失敗，就會顯示這個狀態，表示試著重新連接。  
  
  
您通過下表能掌握有關該主機的服務  
  
名稱編號類型的使用：  
  
00 U 工作站服務  
01 U 郵件服務  
\\\\\_MSBROWSE\_ 01 G 主瀏覽器  
03 U 郵件服務  
06 U RAS伺服器服務  
1F U NetDDE服務  
20 U 檔案伺服器服務  
21 U RAS用戶端服務  
22 U Exchange Interchange  
23 U Exchange Store  
24 U Exchange Directory  
30 U 數據機共用伺服器服務  
31 U 數據機共用用戶端服務  
43 U SMS用戶端遠端控制  
44 U SMS管理遠端控制工具  
45 U SMS用戶端遠端聊天  
46 U SMS用戶端遠端傳輸  
4C U DEC Pathworks TCP/IP服務  
52 U DEC Pathworks TCP/IP服務  
87 U Exchange MTA  
6A U Exchange IMC  
BE U網路監控代理  
BF U網路監控應用  
03 U郵件服務  
00 G功能變數名稱  
1B U域主瀏覽器  
1C G網域控制器  
1D U主瀏覽器  
1E G瀏覽器服務選擇  
1C G IIS 伺服器  
00 U IIS 伺服器  
\[2B\] U Lotus Notes伺服器  
IRISMULTICAST \[2F\] G Lotus Notes  
IRISNAMESERVER \[33\] G Lotus Notes  
Forte\_$ND800ZA \[20\] U DCA Irmalan閘道服務  
  
Unique (U): 該名字可能只有一個分配給它的IP位址。在網路設備上，一個要註冊的名字可以出現多次，但其尾碼是唯一的，從而使整個名字是唯一的。  
  
Group (G): 一個正常的群組；一個名字可以有很多個IP位址。  
  
Multihomed (M): 該名字是唯一的，但由於在同一台電腦上有多個網路介面，這個配置可允許註冊。這些地址的最大編號是25。  
  
Internet Group (I): 這是用來管理WinNT功能變數名稱的組名字的特殊配置。  
  
Domain Name (D): NT 4.0提供的新內容。  
  
  
引自: http://www.wretch.cc/blog/lichangying/24234909

Copyright © Bruce Huang All rights reserved.
<!-- more -->
