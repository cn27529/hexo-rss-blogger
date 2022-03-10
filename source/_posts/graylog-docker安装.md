---
title: graylog-docker安装
tags:
  - docker
  - graylog
excerpt: >-
  <p>1.安装docker jdk1.8</p><p>2.下载docker镜像</p><p><br /></p><p>docker pull
  mongo</p><p>docker pull
  docker.elastic.co/elasticsearch/elasticsearch-oss:6.8.5</p><p>docker pull
  graylog/graylog:3.1</p><p><br /></p><p>3.分开启动3个组件(推荐)</p><p>#
  mongodb</p><p><br /></p><p>docker run \</p><p>--name mongo \</p><p>-p
  27017:27017 \</p><p>-v /etc/localtime:/etc/localtime:ro \</p><p>-v
  mongo_data:/data/db \</p><p>-d mongo:latest</p><p><br /></p><p>#
  elasticsearch</p><p><br /></p><p>docker run \</p><p>--name elasticsearch
  \</p><p>-p 9200:9200 -p 9300:9300 \</p><p>-e "http.host=0.0.0.0" \</p><p>-e
  "ES_JAVA_OPTS=-Xms512m -Xmx512m" \</p><p>-e "discovery.type=single-node"
  \</p><p>-e http.cors.allow-origin="*" \ (设置跨域)</p><p>-e http.cors.enabled=true
  \</p><p>-v /etc/localtime:/etc/localtime:ro \</p><p>-v
  es_data:/usr/share/elasticsearch/data \</p><p>-d
  docker.elastic.co/elasticsearch/elasticsearch-oss:6.8.5</p><p><br /></p><p>#
  graylog</p><p><br /></p><p>docker run \</p><p>--link mongo \</p><p>--link
  elasticsearch \</p><p>--name graylog \</p><p>-p 9000:9000 \</p><p>-p
  12201:12201 -p 12201:12201/udp \</p><p>-p 1514:1514 -p 1514:1514/udp -p
  5044:5044 \</p><p>-e GRAYLOG_HTTP_EXTERNAL_URI=http://{改成你的主機IP}:9000/
  \</p><p>-e GRAYLOG_ROOT_TIMEZONE=Asia/Shanghai \</p><p>-e
  GRAYLOG_WEB_ENDPOINT_URI="http://{改成你的主機IP}:9000/:9000/api" \</p><p>-e
  GRAYLOG_PASSWORD_SECRET=somepasswordpepper \</p><p>-e
  GRAYLOG_ROOT_PASSWORD_SHA2=8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918
  \</p><p>-v /etc/localtime:/etc/localtime:ro \</p><p>-v
  graylog_journal:/usr/share/graylog/data/journal \</p><p>-d
  graylog/graylog:3.1</p><p><br /></p><p><a
  href="https://gist.github.com/cn27529/312c7ce4a490e23c93299a52bcc8eec4"
  target="_blank">gist</a></p><div class="blogger-post-footer">Copyright © Bruce
  Huang All rights reserved.</div>
date: 2020-08-10 15:38:00
---

1.安装docker jdk1.8

2.下载docker镜像

  

docker pull mongo

docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:6.8.5

docker pull graylog/graylog:3.1

  

3.分开启动3个组件(推荐)

\# mongodb

  

docker run \\

\--name mongo \\

\-p 27017:27017 \\

\-v /etc/localtime:/etc/localtime:ro \\

\-v mongo\_data:/data/db \\

\-d mongo:latest

  

\# elasticsearch

  

docker run \\

\--name elasticsearch \\

\-p 9200:9200 -p 9300:9300 \\

\-e "http.host=0.0.0.0" \\

\-e "ES\_JAVA\_OPTS=-Xms512m -Xmx512m" \\

\-e "discovery.type=single-node" \\

\-e http.cors.allow-origin="\*" \\ (设置跨域)

\-e http.cors.enabled=true \\

\-v /etc/localtime:/etc/localtime:ro \\

\-v es\_data:/usr/share/elasticsearch/data \\

\-d docker.elastic.co/elasticsearch/elasticsearch-oss:6.8.5

  

\# graylog

  

docker run \\

\--link mongo \\

\--link elasticsearch \\

\--name graylog \\

\-p 9000:9000 \\

\-p 12201:12201 -p 12201:12201/udp \\

\-p 1514:1514 -p 1514:1514/udp -p 5044:5044 \\

\-e GRAYLOG\_HTTP\_EXTERNAL\_URI=http://{改成你的主機IP}:9000/ \\

\-e GRAYLOG\_ROOT\_TIMEZONE=Asia/Shanghai \\

\-e GRAYLOG\_WEB\_ENDPOINT\_URI="http://{改成你的主機IP}:9000/:9000/api" \\

\-e GRAYLOG\_PASSWORD\_SECRET=somepasswordpepper \\

\-e GRAYLOG\_ROOT\_PASSWORD\_SHA2=8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918 \\

\-v /etc/localtime:/etc/localtime:ro \\

\-v graylog\_journal:/usr/share/graylog/data/journal \\

\-d graylog/graylog:3.1

  

[gist](https://gist.github.com/cn27529/312c7ce4a490e23c93299a52bcc8eec4)

Copyright © Bruce Huang All rights reserved.
<!-- more -->
