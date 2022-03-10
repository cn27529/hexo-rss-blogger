---
title: Windows日志的保護與偽造
tags:
  - Windows 相關
  - 軟体應用相關
excerpt: >-
  日志對於系統安全的作用是顯而易見的，無論是網路管理員還是黑客都非常重視日志，一個有經驗的管理員往往能夠迅速通過日志了解到系統的安全性能，而一個聰明的黑客往往會在入侵成市嶁陶t清除掉對自己不利的日志。下面我們就來討論一下日志的安全和創建問題。<br
  /><br /><strong>一.概述︰</strong><br />Windows
  2000的系統日志文件有應用程序日志，安全日志、系統日志、DNS服務器日志等等，應用程序日志、安全日志、系統日志、DNS日志默認位置︰%systemroot%/system32/config，默認文件大小512KB。　　安全日志文件︰%systemroot%/system32/config/SecEvent.EVT
  系統日志文件︰<span style="color:
  red;">%systemroot%/system32/config/SysEvent.EVT</span>&nbsp; 應用程序日志文件︰<span
  style="color: red;">%systemroot%/system32/config/AppEvent.EVT</span>&nbsp;
  這些LOG文件在注冊表中的︰
  HKEY_LOCAL_MACHINE/System/CurrentControlSet/Services/Eventlog有的管理員很可能將這些日志重定位。其中EVENTLOG下面有很多的子表，里面可查到以上日志的定位目錄。<br
  /><br /><strong>二.作為網路管理員︰</strong><br />1.日志的安全配置︰<br
  />默認的條件下，日志的大小為512KB大小，如果超出則會報錯，並且不會再記錄任何日志。所以首要任務是更改默認大小，具體方法︰注冊表中HKEY_LOCAL_MACHINE/System/CurrentControlSet/Services/Eventlog對應的每個日志如系統，安全，應用程序等均有一個maxsize子鍵，修改即可。　　下面給出一個來自微軟站點的一個腳本，利用VMI來設定日志最大25MB,並允酗擏茼萓磏郅14天前的日志︰　　該腳本利用的是WMI對象,
  WMI（Windows Management
  Instrumentation）技術是微軟提供的Windows下的系統管理工具。通過該工具可以在本地或者管理客戶端系統中幾乎一切的訊息。很多專業的網路管理工具都是基於WMI開發的。該工具在Win2000以及WinNT下是標準工具，在Win9X下是擴展安裝選項。所以以下的代碼在2000以上均可運行成央CstrComputer
  = "."Set objWMIService = GetObject（"winmgmts:" _&
  "{impersonationLevel=impersonate,（Security）}!//" & _strComputer &
  "/root/cimv2"） ''獲得VMI對象Set colLogFiles = objWMIService.ExecQuery _ （"Select *
  from Win32_NTEventLogFile"）For each objLogfile in colLogFilesstrLogFileName =
  objLogfile.NameSet wmiSWbemObject = GetObject
  _（"winmgmts:{impersonationLevel=Impersonate}!//./root/cimv2:" _&
  "Win32_NTEventlogFile.Name=''" & strLogFileName &
  "''"）wmiSWbemObject.MaxFileSize = 2500000000wmiSWbemObject.OverwriteOutdated =
  14wmiSWbemObject.Put_
  Next　　將上述腳本用記事本存盤為vbs為後綴的即可使用。　　另外需要說明的是代碼中的strComputer="."在Windows腳本中的含義相當於localhost,如果要在遠程主機上執行代碼，只需要把"."改動為主機名,當然首先得擁有對方主機的管理員權限並建立IPC連接.本文中的代碼所出現的strComputer均可作如此改動。<br
  /><br />2.日志的查詢與備份︰<br
  />一個優秀的管理員是應該養成備份日志的習慣，如果有條件的話還應該把日志轉存到備份機器上或直接轉儲到列印機上，在這裡推薦微軟的resourceKit工具箱中的dumpel.exe，他的常用方法︰　　dumpel
  -f filename -s //server -l log 　　-f filename 輸出日志的位置和文件名　　-s //server
  輸出遠程電腦日志　　-l log log
  可選的為system,security,application,可能還有別的如DNS等.　　如要把目標服務器server上的系統日志轉存為backupsystem.log可以用以下格式︰　　dumpel
  //server -l system -f backupsystem.log
  　　再利用計劃任務可以實現定期備份系統日志。　　另外利用腳本編程的VMI對象也可以輕而易舉的實現日志備份︰　　下面給出備份application日志的代碼︰backuplog.vbsstrComputer
  = "."Set objWMIService = GetObject（"winmgmts:" _&
  "{impersonationLevel=impersonate,（Backup）}!//" & _strComputer & "/root/cimv2"）
  ''獲得 VMI對象Set colLogFiles = objWMIService.ExecQuery _（"Select * from
  Win32_NTEventLogFile where LogFileName=''Application''"） ''獲取日志對象中的應用程序日志For
  Each objLogfile in colLogFileserrBackupLog =
  objLogFile.BackupEventLog（"f:/application.evt"） ''將日志備份為f:/application.evtIf
  errBackupLog 0 Then Wscript.Echo "The Application event log could not be
  backed up."else Wscript.Echo "success backup log"End
  IfNext　　程序說明︰如果備份成弗N窗口提示︰"success backup log" 否則提示︰"The Application event log
  could not be backed up",此處備份的日志為application
  備份位置為f:/application.evt,可以自行修改，此處備份的格式為evt的原始格式，用記事本打開則為亂碼，這一點他不如dumpel用得方便。<br
  /><br />引用自:
  http://computer-repair.hsinchu-web.info/doc/computer-repair/security/2010-04-22/8340.html<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-05-24 10:28:00
---

日志對於系統安全的作用是顯而易見的，無論是網路管理員還是黑客都非常重視日志，一個有經驗的管理員往往能夠迅速通過日志了解到系統的安全性能，而一個聰明的黑客往往會在入侵成市嶁陶t清除掉對自己不利的日志。下面我們就來討論一下日志的安全和創建問題。  
  
**一.概述︰**  
Windows 2000的系統日志文件有應用程序日志，安全日志、系統日志、DNS服務器日志等等，應用程序日志、安全日志、系統日志、DNS日志默認位置︰%systemroot%/system32/config，默認文件大小512KB。　　安全日志文件︰%systemroot%/system32/config/SecEvent.EVT 系統日志文件︰%systemroot%/system32/config/SysEvent.EVT  應用程序日志文件︰%systemroot%/system32/config/AppEvent.EVT  這些LOG文件在注冊表中的︰ HKEY\_LOCAL\_MACHINE/System/CurrentControlSet/Services/Eventlog有的管理員很可能將這些日志重定位。其中EVENTLOG下面有很多的子表，里面可查到以上日志的定位目錄。  
  
**二.作為網路管理員︰**  
1.日志的安全配置︰  
默認的條件下，日志的大小為512KB大小，如果超出則會報錯，並且不會再記錄任何日志。所以首要任務是更改默認大小，具體方法︰注冊表中HKEY\_LOCAL\_MACHINE/System/CurrentControlSet/Services/Eventlog對應的每個日志如系統，安全，應用程序等均有一個maxsize子鍵，修改即可。　　下面給出一個來自微軟站點的一個腳本，利用VMI來設定日志最大25MB,並允酗擏茼萓磏郅14天前的日志︰　　該腳本利用的是WMI對象, WMI（Windows Management Instrumentation）技術是微軟提供的Windows下的系統管理工具。通過該工具可以在本地或者管理客戶端系統中幾乎一切的訊息。很多專業的網路管理工具都是基於WMI開發的。該工具在Win2000以及WinNT下是標準工具，在Win9X下是擴展安裝選項。所以以下的代碼在2000以上均可運行成央CstrComputer = "."Set objWMIService = GetObject（"winmgmts:" \_& "{impersonationLevel=impersonate,（Security）}!//" & \_strComputer & "/root/cimv2"） ''獲得VMI對象Set colLogFiles = objWMIService.ExecQuery \_ （"Select \* from Win32\_NTEventLogFile"）For each objLogfile in colLogFilesstrLogFileName = objLogfile.NameSet wmiSWbemObject = GetObject \_（"winmgmts:{impersonationLevel=Impersonate}!//./root/cimv2:" \_& "Win32\_NTEventlogFile.Name=''" & strLogFileName & "''"）wmiSWbemObject.MaxFileSize = 2500000000wmiSWbemObject.OverwriteOutdated = 14wmiSWbemObject.Put\_ Next　　將上述腳本用記事本存盤為vbs為後綴的即可使用。　　另外需要說明的是代碼中的strComputer="."在Windows腳本中的含義相當於localhost,如果要在遠程主機上執行代碼，只需要把"."改動為主機名,當然首先得擁有對方主機的管理員權限並建立IPC連接.本文中的代碼所出現的strComputer均可作如此改動。  
  
2.日志的查詢與備份︰  
一個優秀的管理員是應該養成備份日志的習慣，如果有條件的話還應該把日志轉存到備份機器上或直接轉儲到列印機上，在這裡推薦微軟的resourceKit工具箱中的dumpel.exe，他的常用方法︰　　dumpel -f filename -s //server -l log 　　-f filename 輸出日志的位置和文件名　　-s //server 輸出遠程電腦日志　　-l log log 可選的為system,security,application,可能還有別的如DNS等.　　如要把目標服務器server上的系統日志轉存為backupsystem.log可以用以下格式︰　　dumpel //server -l system -f backupsystem.log 　　再利用計劃任務可以實現定期備份系統日志。　　另外利用腳本編程的VMI對象也可以輕而易舉的實現日志備份︰　　下面給出備份application日志的代碼︰backuplog.vbsstrComputer = "."Set objWMIService = GetObject（"winmgmts:" \_& "{impersonationLevel=impersonate,（Backup）}!//" & \_strComputer & "/root/cimv2"） ''獲得 VMI對象Set colLogFiles = objWMIService.ExecQuery \_（"Select \* from Win32\_NTEventLogFile where LogFileName=''Application''"） ''獲取日志對象中的應用程序日志For Each objLogfile in colLogFileserrBackupLog = objLogFile.BackupEventLog（"f:/application.evt"） ''將日志備份為f:/application.evtIf errBackupLog 0 Then Wscript.Echo "The Application event log could not be backed up."else Wscript.Echo "success backup log"End IfNext　　程序說明︰如果備份成弗N窗口提示︰"success backup log" 否則提示︰"The Application event log could not be backed up",此處備份的日志為application 備份位置為f:/application.evt,可以自行修改，此處備份的格式為evt的原始格式，用記事本打開則為亂碼，這一點他不如dumpel用得方便。  
  
引用自: http://computer-repair.hsinchu-web.info/doc/computer-repair/security/2010-04-22/8340.html

Copyright © Bruce Huang All rights reserved.
<!-- more -->
