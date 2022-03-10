---
title: GitBook的本機環境與應用的產出
tags:
  - Git
  - GitBook
  - GitHub
excerpt: >-
  線上文件是一種顛覆本機工作的產物，哈！今天來玩玩GitBook的文件產出ＸＤ<br />這篇不是新手文章，是新手的請確認你己會使用gitbook<br
  />直接進主題:<br /><br />確定己經安裝了gitbook-cli還沒裝的快去裝XD, 這個套件可以讓我們的gitbook文件產出<br
  />HTML 文件<br />ePub 電子書<br />Kindle 電子書<br />製作 PDF 電子書<br /><br
  />今天的例子是HTML文件<br />先切換像到你的gitbook目錄位置, 執行終端指令<br />開啟.gitignore檔查看<br /><br
  /># Node rules:<br />## Grunt intermediate storage
  (http://gruntjs.com/creating-plugins#storing-task-files)<br />.grunt<br /><br
  />## Dependency directory<br />## Commenting this out is preferred by some
  people, see<br />##
  https://docs.npmjs.com/misc/faq#should-i-check-my-node_modules-folder-into-git<br
  />node_modules<br /><br /># Book build output<br />_book<br /><br /># eBook
  build output<br />*.epub<br />*.mobi<br />*.pdf<br /><br />如果沒有上面這段就自己打吧XD<br
  /><br />若在本地看gitbook命令列輸入:<br />gitbook serve<br />它預設會開啟 localhost:4000<br
  /><br /><br />若要產生html靜態檔案, 命令列輸入:<br />gitbook fulid --output=/site/mybook<br
  /><br /><div class="separator" style="clear: both; text-align: center;"><a
  href="https://1.bp.blogspot.com/-JM_aAmlMknY/WQvh5R4et4I/AAAAAAAAOY8/tKdrJ22Ie0gzRUkkWoc_GqGdj6f42JP-wCLcB/s1600/2017-05-05_102205.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="41"
  src="https://1.bp.blogspot.com/-JM_aAmlMknY/WQvh5R4et4I/AAAAAAAAOY8/tKdrJ22Ie0gzRUkkWoc_GqGdj6f42JP-wCLcB/s400/2017-05-05_102205.png"
  width="400" /></a></div><br />然後...<br /><div class="separator" style="clear:
  both; text-align: center;"><a
  href="https://4.bp.blogspot.com/-CvwB2jQSOc0/WQvjQiL5AJI/AAAAAAAAOZI/2Wo8TgttkR4ycNoDz23On9iNGTVqTJ49gCLcB/s1600/2017-05-05_102856.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="207"
  src="https://4.bp.blogspot.com/-CvwB2jQSOc0/WQvjQiL5AJI/AAAAAAAAOZI/2Wo8TgttkR4ycNoDz23On9iNGTVqTJ49gCLcB/s400/2017-05-05_102856.png"
  width="400" /></a></div><br />登登 success<br />來去目錄查看一下吧<br /><div
  class="separator" style="clear: both; text-align: center;"><a
  href="https://4.bp.blogspot.com/-KfnggbsrQnY/WQvj1a3h8jI/AAAAAAAAOZQ/0HFjc3zcBc4h9R4JKj8ulEFb-zf5w2rcwCLcB/s1600/2017-05-05_103120.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="320"
  src="https://4.bp.blogspot.com/-KfnggbsrQnY/WQvj1a3h8jI/AAAAAAAAOZQ/0HFjc3zcBc4h9R4JKj8ulEFb-zf5w2rcwCLcB/s320/2017-05-05_103120.png"
  width="290" /></a></div><br />有了之後, 直接去打開index.html吧GO~~<br /><div
  class="separator" style="clear: both; text-align: center;"><a
  href="https://4.bp.blogspot.com/-dMYKTwbS0mo/WQvkrRk7OJI/AAAAAAAAOZg/YzPtNbcEN7g0HD3JAbmSAxuoeIoFuM52wCLcB/s1600/2017-05-05_103450.png"
  imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0"
  height="249"
  src="https://4.bp.blogspot.com/-dMYKTwbS0mo/WQvkrRk7OJI/AAAAAAAAOZg/YzPtNbcEN7g0HD3JAbmSAxuoeIoFuM52wCLcB/s640/2017-05-05_103450.png"
  width="640" /></a></div><br />YA~有嘍~大功告成, 美觀又漂亮XD<br /><br />收工! (握拳<br /><br
  /><br /><div class="blogger-post-footer">Copyright © Bruce Huang All rights
  reserved.</div>
date: 2017-05-05 10:37:00
---

線上文件是一種顛覆本機工作的產物，哈！今天來玩玩GitBook的文件產出ＸＤ  
這篇不是新手文章，是新手的請確認你己會使用gitbook  
直接進主題:  
  
確定己經安裝了gitbook-cli還沒裝的快去裝XD, 這個套件可以讓我們的gitbook文件產出  
HTML 文件  
ePub 電子書  
Kindle 電子書  
製作 PDF 電子書  
  
今天的例子是HTML文件  
先切換像到你的gitbook目錄位置, 執行終端指令  
開啟.gitignore檔查看  
  
\# Node rules:  
\## Grunt intermediate storage (http://gruntjs.com/creating-plugins#storing-task-files)  
.grunt  
  
\## Dependency directory  
\## Commenting this out is preferred by some people, see  
\## https://docs.npmjs.com/misc/faq#should-i-check-my-node\_modules-folder-into-git  
node\_modules  
  
\# Book build output  
\_book  
  
\# eBook build output  
\*.epub  
\*.mobi  
\*.pdf  
  
如果沒有上面這段就自己打吧XD  
  
若在本地看gitbook命令列輸入:  
gitbook serve  
它預設會開啟 localhost:4000  
  
  
若要產生html靜態檔案, 命令列輸入:  
gitbook fulid --output=/site/mybook  
  

[![](https://1.bp.blogspot.com/-JM_aAmlMknY/WQvh5R4et4I/AAAAAAAAOY8/tKdrJ22Ie0gzRUkkWoc_GqGdj6f42JP-wCLcB/s400/2017-05-05_102205.png)](https://1.bp.blogspot.com/-JM_aAmlMknY/WQvh5R4et4I/AAAAAAAAOY8/tKdrJ22Ie0gzRUkkWoc_GqGdj6f42JP-wCLcB/s1600/2017-05-05_102205.png)

  
然後...  

[![](https://4.bp.blogspot.com/-CvwB2jQSOc0/WQvjQiL5AJI/AAAAAAAAOZI/2Wo8TgttkR4ycNoDz23On9iNGTVqTJ49gCLcB/s400/2017-05-05_102856.png)](https://4.bp.blogspot.com/-CvwB2jQSOc0/WQvjQiL5AJI/AAAAAAAAOZI/2Wo8TgttkR4ycNoDz23On9iNGTVqTJ49gCLcB/s1600/2017-05-05_102856.png)

  
登登 success  
來去目錄查看一下吧  

[![](https://4.bp.blogspot.com/-KfnggbsrQnY/WQvj1a3h8jI/AAAAAAAAOZQ/0HFjc3zcBc4h9R4JKj8ulEFb-zf5w2rcwCLcB/s320/2017-05-05_103120.png)](https://4.bp.blogspot.com/-KfnggbsrQnY/WQvj1a3h8jI/AAAAAAAAOZQ/0HFjc3zcBc4h9R4JKj8ulEFb-zf5w2rcwCLcB/s1600/2017-05-05_103120.png)

  
有了之後, 直接去打開index.html吧GO~~  

[![](https://4.bp.blogspot.com/-dMYKTwbS0mo/WQvkrRk7OJI/AAAAAAAAOZg/YzPtNbcEN7g0HD3JAbmSAxuoeIoFuM52wCLcB/s640/2017-05-05_103450.png)](https://4.bp.blogspot.com/-dMYKTwbS0mo/WQvkrRk7OJI/AAAAAAAAOZg/YzPtNbcEN7g0HD3JAbmSAxuoeIoFuM52wCLcB/s1600/2017-05-05_103450.png)

  
YA~有嘍~大功告成, 美觀又漂亮XD  
  
收工! (握拳  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
