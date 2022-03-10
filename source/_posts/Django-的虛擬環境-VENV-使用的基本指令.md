---
title: 'Django 的虛擬環境 VENV, 使用的基本指令'
tags:
  - Django
  - Mac
  - Python
excerpt: >-
  VENV是簡稱，全名是Virtualenv<br />進入VENV環境<br /><strong>Windows</strong><br
  />C:\Users\YOUR_NAME\djangogirls> VENV\Scripts\activate <br /><strong>Linux /
  OS X</strong><br />~/djangogirls$ . VENV/bin/activate <br /><table
  css="tb"><thead><tr><th style="width: 50%;">指令</th><th style="width:
  50%;">說明</th></tr></thead><tbody><tr><td>django-admin.py
  <strong>startproject</strong> <em><code><project_name></code></em></td><td>建立
  django 專案</td></tr><tr><td>python manage.py <strong>-h</strong>
  <em><code><command_name></code></em></td><td>查看 django command
  的使用方法</td></tr><tr><td>python manage.py
  <strong>runserver</strong></td><td>啟動開發伺服器</td></tr><tr><td>python manage.py
  <strong>startapp</strong> <em><code><app_name></code></em></td><td>新增 django
  app</td></tr><tr> </tr><tr><td>python manage.py
  <strong>migrate</strong></td><td>migrate 指令會根據INSTALLED_APPS的設定，按照 app
  順序建立或更新資料表，將你在 models.py 裡的更新跟資料庫同步。 </td></tr><tr><td>python manage.py
  <strong>makemigrations</strong></td><td>如果你不是第一次執行migrate，在此之前需要先執行
  makemigrations： 這個指令會根據你對 Model 的修改刪除建立一個新的 migration
  檔案，讓migrate指令執行時，可以照著這份紀錄更新資料庫。 </td></tr><tr><td>python manage.py
  <strong>shell</strong></td><td>使用 shell 指令，進入 Django Shell， 這個 shell 和我們之前輸入
  python 執行的 shell 長得一樣，只是它會預先為我們設定 Django 需要的環境，方便我們執行 Django 相關的程式。
  </td></tr><tr><td>python manage.py
  <strong>createsuperuser</strong></td><td>建立Django 的管理後台的 superuser 確認
  you_project/urls.py 中的 urlpatterns 包含下面這行 url(r'^admin/',
  include(admin.site.urls)), </td></tr></tbody></table><style>.tb{ width:100%;
  border: 1px solid #cccccc; } th{ border: 1px solid #cccccc; } td{ height:30px;
  padding:7px; } </style><div class="blogger-post-footer">Copyright © Bruce
  Huang All rights reserved.</div>
date: 2015-09-28 19:48:00
---

VENV是簡稱，全名是Virtualenv  
進入VENV環境  
**Windows**  
C:\\Users\\YOUR\_NAME\\djangogirls> VENV\\Scripts\\activate  
**Linux / OS X**  
~/djangogirls$ . VENV/bin/activate  

指令

說明

django-admin.py **startproject**

建立 django 專案

python manage.py **\-h**

查看 django command 的使用方法

python manage.py **runserver**

啟動開發伺服器

python manage.py **startapp**

新增 django app

python manage.py **migrate**

migrate 指令會根據INSTALLED\_APPS的設定，按照 app 順序建立或更新資料表，將你在 models.py 裡的更新跟資料庫同步。

python manage.py **makemigrations**

如果你不是第一次執行migrate，在此之前需要先執行 makemigrations： 這個指令會根據你對 Model 的修改刪除建立一個新的 migration 檔案，讓migrate指令執行時，可以照著這份紀錄更新資料庫。

python manage.py **shell**

使用 shell 指令，進入 Django Shell， 這個 shell 和我們之前輸入 python 執行的 shell 長得一樣，只是它會預先為我們設定 Django 需要的環境，方便我們執行 Django 相關的程式。

python manage.py **createsuperuser**

建立Django 的管理後台的 superuser 確認 you\_project/urls.py 中的 urlpatterns 包含下面這行 url(r'^admin/', include(admin.site.urls)),

.tb{ width:100%; border: 1px solid #cccccc; } th{ border: 1px solid #cccccc; } td{ height:30px; padding:7px; }

Copyright © Bruce Huang All rights reserved.
<!-- more -->
