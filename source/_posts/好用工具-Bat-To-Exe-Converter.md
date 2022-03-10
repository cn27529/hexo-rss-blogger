---
title: 好用工具 Bat To Exe Converter
tags:
  - Command line
  - Windows 相關
excerpt: >-
  <span class="Apple-style-span" style="font-size: small;"><span
  class="Apple-style-span" style="font-size: 13px;"><span
  class="Apple-style-span" style="color: #444444; font-family: Arial, Helvetica,
  sans-serif; font-size: small; line-height: 23px;"></span></span></span><br
  /><span class="Apple-style-span" style="font-size: small;"><span
  class="Apple-style-span" style="font-size: 13px;"><span
  class="Apple-style-span" style="color: #444444; font-family: Arial, Helvetica,
  sans-serif; font-size: small; line-height: 23px;"><div style="margin-top:
  0px;">時常在寫批次檔(Batch, *.bat)幫助我處理一些日常的工作，例如說備份資料庫、建立 SSH Tunnel、或是將所有子目錄下的 .svn
  目錄改成 _svn 目錄、…等等。有些 Batch Script 甚至會寫超過一百行，若你想保護辛苦寫的批次檔時，就可以利用&nbsp;<a
  href="http://www.f2ko.de/English/b2e/index.php" rel="nofollow"
  style="background-attachment: initial; background-clip: initial;
  background-color: initial; background-image:
  url(http://blog.miniasp.com/themes/TheWillWillWeb/images/img03.gif);
  background-origin: initial; background-position: 100% 50%; background-repeat:
  no-repeat no-repeat; color: #468259; text-decoration: none;"
  target="_blank">Bat To Exe Converter</a>&nbsp;幫你轉成 *.exe 執行檔。</div><div
  style="margin-top: 0px;">簡單的說，這套工具有 4 個特色：</div><ol style="margin-top:
  0px;"><li>隱藏原始碼。（這是無庸置疑的）</li><li>支援 “沒有互動視窗”的應用程式(Ghost
  applications)，可讓你的程式在背景作業。</li><li>批次檔轉換後的執行檔可設定應用程式圖示、檔案版本、產品版本、公司名稱、程式描述、版權宣告等應用程式資訊。</li><li>可以不只將批次檔轉成執行檔，還可以將批次檔相關的檔案、文件或程式也一併結合在一起。</li></ol><div
  style="margin-top: 0px;">正所謂「一圖解千文」，如下圖示就是此工具唯一的 GUI 操作介面：</div><div
  class="separator" style="clear: both; text-align: center;"><a
  href="http://blog.miniasp.com/image.axd?picture=WindowsLiveWriter/BatToExeConverter_149F2/image_thumb.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="521"
  src="http://blog.miniasp.com/image.axd?picture=WindowsLiveWriter/BatToExeConverter_149F2/image_thumb.png"
  width="640" /></a></div><div style="margin-top: 0px;"><br /></div><div
  style="margin-top: 0px;"></div><div style="margin-top:
  0px;">下載後的壓縮檔中會有兩個檔案，一個是&nbsp;<strong>Bat_To_Exe_Converter.exe</strong>&nbsp;執行檔，另一個是
  help.chm 說明檔，可查詢指令列(Command Line)操作的用法。</div><div style="margin-top:
  0px;">若要透過指令列的方式執行轉換動作，至少需要設定 4 個參數才能執行，其參數的說明如下：</div><ol style="margin-top:
  0px;"><li>第一個參數是<strong>來源批次檔</strong></li><li>第二個參數是<strong>輸出的執行檔</strong></li><li>第三個參數是&nbsp;<strong>Icon
  的檔案路徑</strong></li><li>第四個參數是設定你的<strong>應用程式類型</strong>&nbsp;( Console 或
  Ghost
  )</li><li><strong>第五個之後的參數</strong>都是要<strong>外掛進來的檔案</strong>，也就是要跟這個原本的批次檔一起工作的程式。</li></ol><div
  style="margin-top: 0px;">範例1：將 a.bat 轉成 a.exe，其中的 "" 代表不要設定 Icon，1 代表轉換成
  Console application</div><div class="csharpcode-wrapper"
  style="background-color: #f7f7f7; border-bottom-color: green;
  border-bottom-style: dotted; border-bottom-width: 1px; border-left-color:
  green; border-left-style: dotted; border-left-width: 1px; border-right-color:
  green; border-right-style: dotted; border-right-width: 1px; border-top-color:
  green; border-top-style: dotted; border-top-width: 1px; cursor: text;
  font-family: Consolas, 'Courier New', Courier, monospace; font-size: 8pt;
  line-height: 12pt; margin-bottom: 20px; margin-left: 10px; margin-right: 0px;
  margin-top: 20px; max-height: 250px; overflow-x: auto; overflow-y: auto;
  padding-bottom: 4px; padding-left: 4px; padding-right: 4px; padding-top: 4px;
  width: 585px;"><pre class="csharpcode" style="background-color: #f7f7f7;
  border-bottom-color: green; border-bottom-style: none; border-bottom-width:
  1px; border-left-color: green; border-left-style: none; border-left-width:
  1px; border-right-color: green; border-right-style: none; border-right-width:
  1px; border-top-color: green; border-top-style: none; border-top-width: 1px;
  color: black; cursor: text; font-family: Consolas, 'Courier New', Courier,
  monospace; font-size: 8pt; line-height: 12pt; margin-bottom: 0px; margin-left:
  0px; margin-right: 0px; margin-top: 0px; max-height: 250px; overflow-x:
  visible; overflow-y: visible; padding-bottom: 0px; padding-left: 0px;
  padding-right: 0px; padding-top: 0px; width: 567px;">Bat_To_Exe_Converter.exe 
  a.bat  a.exe  <span class="str" style="color: #006080;">""</span> 
  1</pre></div><div style="margin-top: 0px;">範例2：將 a.bat 轉成 a.exe，其中的 0 代表轉換成
  Ghost application ( 背景作業模式 )</div><div class="csharpcode-wrapper"
  style="background-color: #f7f7f7; border-bottom-color: green;
  border-bottom-style: dotted; border-bottom-width: 1px; border-left-color:
  green; border-left-style: dotted; border-left-width: 1px; border-right-color:
  green; border-right-style: dotted; border-right-width: 1px; border-top-color:
  green; border-top-style: dotted; border-top-width: 1px; cursor: text;
  font-family: Consolas, 'Courier New', Courier, monospace; font-size: 8pt;
  line-height: 12pt; margin-bottom: 20px; margin-left: 10px; margin-right: 0px;
  margin-top: 20px; max-height: 250px; overflow-x: auto; overflow-y: auto;
  padding-bottom: 4px; padding-left: 4px; padding-right: 4px; padding-top: 4px;
  width: 585px;"><pre class="csharpcode" style="background-color: #f7f7f7;
  border-bottom-color: green; border-bottom-style: none; border-bottom-width:
  1px; border-left-color: green; border-left-style: none; border-left-width:
  1px; border-right-color: green; border-right-style: none; border-right-width:
  1px; border-top-color: green; border-top-style: none; border-top-width: 1px;
  color: black; cursor: text; font-family: Consolas, 'Courier New', Courier,
  monospace; font-size: 8pt; line-height: 12pt; margin-bottom: 0px; margin-left:
  0px; margin-right: 0px; margin-top: 0px; max-height: 250px; overflow-x:
  visible; overflow-y: visible; padding-bottom: 0px; padding-left: 0px;
  padding-right: 0px; padding-top: 0px; width: 567px;">Bat_To_Exe_Converter.exe 
  a.bat  a.exe  <span class="str" style="color: #006080;">""</span> 
  0</pre></div><div style="margin-top: 0px;">範例3：將 a.bat 轉成 a.exe，並且也將
  myprogram1.exe 與 test.jpg 兩個檔案都打包放進 a.exe 中，讓 a.exe 在執行時可以引用這兩個檔案。</div><div
  class="csharpcode-wrapper" style="background-color: #f7f7f7;
  border-bottom-color: green; border-bottom-style: dotted; border-bottom-width:
  1px; border-left-color: green; border-left-style: dotted; border-left-width:
  1px; border-right-color: green; border-right-style: dotted;
  border-right-width: 1px; border-top-color: green; border-top-style: dotted;
  border-top-width: 1px; cursor: text; font-family: Consolas, 'Courier New',
  Courier, monospace; font-size: 8pt; line-height: 12pt; margin-bottom: 20px;
  margin-left: 10px; margin-right: 0px; margin-top: 20px; max-height: 250px;
  overflow-x: auto; overflow-y: auto; padding-bottom: 4px; padding-left: 4px;
  padding-right: 4px; padding-top: 4px; width: 585px;"><pre class="csharpcode"
  style="background-color: #f7f7f7; border-bottom-color: green;
  border-bottom-style: none; border-bottom-width: 1px; border-left-color: green;
  border-left-style: none; border-left-width: 1px; border-right-color: green;
  border-right-style: none; border-right-width: 1px; border-top-color: green;
  border-top-style: none; border-top-width: 1px; color: black; cursor: text;
  font-family: Consolas, 'Courier New', Courier, monospace; font-size: 8pt;
  line-height: 12pt; margin-bottom: 0px; margin-left: 0px; margin-right: 0px;
  margin-top: 0px; max-height: 250px; overflow-x: visible; overflow-y: visible;
  padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;
  width: 567px;">Bat_To_Exe_Converter.exe  a.bat  a.exe  <span class="str"
  style="color: #006080;">""</span>  1  myprogram1.exe  test.jpg</pre></div><div
  style="margin-top: 0px;">另外，我也做了個小測試，情境如下：</div><ul style="list-style-image:
  url(http://blog.miniasp.com/themes/TheWillWillWeb/images/img12.gif);
  list-style-position: initial; list-style-type: initial; margin-top:
  0px;"><li>我寫一個 a.bat 內容是&nbsp;<strong>type a.txt</strong></li><li>然後建立一個 a.txt
  內容是&nbsp;<strong>12345</strong></li><li>然後執行&nbsp;<strong>Bat_To_Exe_Converter.exe
  a.bat a.exe "" 1 a.txt</strong>&nbsp;將 a.txt 綁進 a.exe 中</li><li>之後<strong>將
  a.txt 的內容修改</strong>成&nbsp;<strong>67890</strong></li><li>接者我<strong>執行
  a.exe</strong>&nbsp;得到的結果是&nbsp;<strong>67890</strong></li><li>接者我從該目錄<strong>刪除
  a.txt 檔案</strong></li><li><strong>再執行一次
  a.exe</strong>&nbsp;我得到的結果是&nbsp;<strong>12345</strong></li></ul><div
  style="margin-top:
  0px;">由此可知，即便將檔案一併綁進轉換後的執行檔中，原本批次檔讀取的訊息還是先從原本所在的目錄讀取檔案，若讀取不到才會讀取被綁進執行檔中的檔案。</div><div
  style="margin-top: 0px;"><br /></div><div style="margin-top:
  0px;">引用自:&nbsp;<a
  href="http://blog.miniasp.com/post/2008/10/Useful-tool-Bat-to-Exe-Converter.aspx">http://blog.miniasp.com/post/2008/10/Useful-tool-Bat-to-Exe-Converter.aspx</a></div><div
  style="margin-top: 0px;"><br /></div></span></span></span><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-10-22 07:55:00
---

  

時常在寫批次檔(Batch, \*.bat)幫助我處理一些日常的工作，例如說備份資料庫、建立 SSH Tunnel、或是將所有子目錄下的 .svn 目錄改成 \_svn 目錄、…等等。有些 Batch Script 甚至會寫超過一百行，若你想保護辛苦寫的批次檔時，就可以利用 [Bat To Exe Converter](http://www.f2ko.de/English/b2e/index.php) 幫你轉成 \*.exe 執行檔。

簡單的說，這套工具有 4 個特色：

1.  隱藏原始碼。（這是無庸置疑的）
2.  支援 “沒有互動視窗”的應用程式(Ghost applications)，可讓你的程式在背景作業。
3.  批次檔轉換後的執行檔可設定應用程式圖示、檔案版本、產品版本、公司名稱、程式描述、版權宣告等應用程式資訊。
4.  可以不只將批次檔轉成執行檔，還可以將批次檔相關的檔案、文件或程式也一併結合在一起。

正所謂「一圖解千文」，如下圖示就是此工具唯一的 GUI 操作介面：

[![](http://blog.miniasp.com/image.axd?picture=WindowsLiveWriter/BatToExeConverter_149F2/image_thumb.png)](http://blog.miniasp.com/image.axd?picture=WindowsLiveWriter/BatToExeConverter_149F2/image_thumb.png)

  

下載後的壓縮檔中會有兩個檔案，一個是 **Bat\_To\_Exe\_Converter.exe** 執行檔，另一個是 help.chm 說明檔，可查詢指令列(Command Line)操作的用法。

若要透過指令列的方式執行轉換動作，至少需要設定 4 個參數才能執行，其參數的說明如下：

1.  第一個參數是**來源批次檔**
2.  第二個參數是**輸出的執行檔**
3.  第三個參數是 **Icon 的檔案路徑**
4.  第四個參數是設定你的**應用程式類型** ( Console 或 Ghost )
5.  **第五個之後的參數**都是要**外掛進來的檔案**，也就是要跟這個原本的批次檔一起工作的程式。

範例1：將 a.bat 轉成 a.exe，其中的 "" 代表不要設定 Icon，1 代表轉換成 Console application

Bat\_To\_Exe\_Converter.exe  a.bat  a.exe  ""  1

範例2：將 a.bat 轉成 a.exe，其中的 0 代表轉換成 Ghost application ( 背景作業模式 )

Bat\_To\_Exe\_Converter.exe  a.bat  a.exe  ""  0

範例3：將 a.bat 轉成 a.exe，並且也將 myprogram1.exe 與 test.jpg 兩個檔案都打包放進 a.exe 中，讓 a.exe 在執行時可以引用這兩個檔案。

Bat\_To\_Exe\_Converter.exe  a.bat  a.exe  ""  1  myprogram1.exe  test.jpg

另外，我也做了個小測試，情境如下：

*   我寫一個 a.bat 內容是 **type a.txt**
*   然後建立一個 a.txt 內容是 **12345**
*   然後執行 **Bat\_To\_Exe\_Converter.exe a.bat a.exe "" 1 a.txt** 將 a.txt 綁進 a.exe 中
*   之後**將 a.txt 的內容修改**成 **67890**
*   接者我**執行 a.exe** 得到的結果是 **67890**
*   接者我從該目錄**刪除 a.txt 檔案**
*   **再執行一次 a.exe** 我得到的結果是 **12345**

由此可知，即便將檔案一併綁進轉換後的執行檔中，原本批次檔讀取的訊息還是先從原本所在的目錄讀取檔案，若讀取不到才會讀取被綁進執行檔中的檔案。

  

引用自: [http://blog.miniasp.com/post/2008/10/Useful-tool-Bat-to-Exe-Converter.aspx](http://blog.miniasp.com/post/2008/10/Useful-tool-Bat-to-Exe-Converter.aspx)

  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
