---
title: DotNetZip Library
tags:
  - DotNet Library
excerpt: >-
  有時候亂逛的時候總會發現不錯的東西 , 但是不一定馬上會使用到今天要介紹的是一個免費的檔案壓縮處理的外部元件 DotNetZip Library ,
  這個東西還不錯用 , 可以把需要的檔案加壓成一個指定名稱的zip檔然後就可以輸出...不錯吧.<br /><br /><br /><a
  href="http://www.codeplex.com/DotNetZip"
  target="_blank">http://www.codeplex.com/DotNetZip</a><br /><span
  style="font-family:Arial;font-size:85%;"><strong></strong></span><br /><span
  style="font-family:Arial;font-size:85%;"><strong>Project Description
  </strong></span><br /><span
  style="font-family:Arial;font-size:85%;"><strong><br /></strong>The Microsoft
  .NET Framework {v2.0 v3.0 v3.5} includes base class libraries supporting
  compression within streams - both the Deflate and Gzip formats are supported.
  But the System.IO.Compression namespace provides streaming compression only -
  useful for communicating between cooperating parties but not directly useful
  for creating compressed archives, like .zip files. The built-in compression
  library does not know how to format zip archive headers and so on.<br /><br
  />To address this, this simple class library augments the
  System.IO.Compression.DeflateStream class, to provide handling for Zip
  files.<span style="color:#0000ff;"> Using this library, you can write .NET
  applications that read and write zip-format files. </span><br /><br
  />Frequently Asked Questions </span><span
  style="font-family:Arial;font-size:85%;"><br /><br /><strong>How does this Zip
  Library work?</strong><br /><br /><span style="color:#0000ff;">There's a
  single DLL, a single assembly, fully managed code, written in C#, that
  provides support for reading and writing Zip archive files. </span><br /><br
  /><strong>What do I need to "do" zip files from within my
  application?</strong><br /><br />To use the zip capability in your
  applications, you need to be using the .NET Framework 2.0 or later. You can
  use the Zip library from any application, whether a console application, a
  Windows-Forms application, a server-based application, or something else.<br
  /><br /><strong>How big is the library?</strong><br /><br /><span
  style="color:#0000ff;">The zip DLL is about 36k in size.</span> There is no
  other pre-requisite.<br /></span><br /><p><span
  style="color:#ff0000;"><strong>Limitations</strong></span><br
  />--------------------------------</p><p>There are numerous limitations to
  this library:</p><p>it does NOT support encryption, file comments, or <span
  style="color:#ff0000;">double-byte chars in filenames</span>.</p><p>it
  does<span style="color:#ff0000;"> NOT support file lengths greater than
  0xffffffff</span>.</p><p>it does NOT support "multi-disk archives."</p><p>it
  does NOT do varying compression levels.</p><p>it can actually expand the size
  of previously compressed data, such as JPG files.</p><p align="left">there is
  no GUI tool</p><div class="blogger-post-footer">Copyright © Bruce Huang All
  rights reserved.</div>
date: 2009-05-10 00:33:00
---

有時候亂逛的時候總會發現不錯的東西 , 但是不一定馬上會使用到今天要介紹的是一個免費的檔案壓縮處理的外部元件 DotNetZip Library , 這個東西還不錯用 , 可以把需要的檔案加壓成一個指定名稱的zip檔然後就可以輸出...不錯吧.  
  
  
[http://www.codeplex.com/DotNetZip](http://www.codeplex.com/DotNetZip)  
  
**Project Description**  
The Microsoft .NET Framework {v2.0 v3.0 v3.5} includes base class libraries supporting compression within streams - both the Deflate and Gzip formats are supported. But the System.IO.Compression namespace provides streaming compression only - useful for communicating between cooperating parties but not directly useful for creating compressed archives, like .zip files. The built-in compression library does not know how to format zip archive headers and so on.  
  
To address this, this simple class library augments the System.IO.Compression.DeflateStream class, to provide handling for Zip files. Using this library, you can write .NET applications that read and write zip-format files.  
  
Frequently Asked Questions  
  
**How does this Zip Library work?**  
  
There's a single DLL, a single assembly, fully managed code, written in C#, that provides support for reading and writing Zip archive files.  
  
**What do I need to "do" zip files from within my application?**  
  
To use the zip capability in your applications, you need to be using the .NET Framework 2.0 or later. You can use the Zip library from any application, whether a console application, a Windows-Forms application, a server-based application, or something else.  
  
**How big is the library?**  
  
The zip DLL is about 36k in size. There is no other pre-requisite.  
  

**Limitations**  
\--------------------------------

There are numerous limitations to this library:

it does NOT support encryption, file comments, or double-byte chars in filenames.

it does NOT support file lengths greater than 0xffffffff.

it does NOT support "multi-disk archives."

it does NOT do varying compression levels.

it can actually expand the size of previously compressed data, such as JPG files.

there is no GUI tool

Copyright © Bruce Huang All rights reserved.
<!-- more -->
