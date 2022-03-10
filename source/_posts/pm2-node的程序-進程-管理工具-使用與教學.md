---
title: 'pm2, node的程序(進程)管理工具, 使用與教學'
tags:
  - Nodejs
  - pm2
excerpt: >-
  今天的東東叫pm2, pm2是node的一個可監控程序的工具, 不多廢, 進主題<br /><br /><span style="font-size:
  x-large;">進行全域安裝</span><br /><div style="background-color: #1f1b1b; color:
  white; font-family: "PT Mono", monospace; font-size: 12px; line-height: 14px;
  margin: 0px; padding: 0px; white-space: nowrap;"><span class=" xterm-bold 
  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin: 0px;
  padding:
  0px;">workspace</span>&nbsp;npm&nbsp;install&nbsp;pm2&nbsp;-g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space:
  nowrap;">/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2&nbsp;->&nbsp;/home/cabox/.nvm/versions/node/v5.2.0/lib/node_modules/pm2/bin/pm2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space:
  nowrap;">/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-dev&nbsp;->&nbsp;/home/cabox/.nvm/versions/node/v5.2.0/lib/node_modules/pm2/bin/pm2-dev&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space:
  nowrap;">/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-docker&nbsp;->&nbsp;/home/cabox/.nvm/versions/node/v5.2.0/lib/node_modules/pm2/bin/pm2-docker&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space:
  nowrap;">/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-daemon&nbsp;->&nbsp;/home/cabox/.nvm/versions/node/v5.2.0/lib/node_modules/pm2/bin/pm2-daemon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space:
  nowrap;">/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-runtime&nbsp;->&nbsp;/home/cabox/.nvm/versions/node/v5.2.0/lib/node_modules/pm2/bin/pm2-runtime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space:
  nowrap;">/home/cabox/.nvm/versions/node/v5.2.0/lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;">`--&nbsp;<span class=" xterm-bg-color-0  xterm-color-3 "
  style="background-color: #2e3436; color: #c4a000; margin: 0px; padding:
  0px;">pm2@2.5.0</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space:
  nowrap;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-bg-color-0  xterm-color-7 "
  style="background-color: #2e3436; color: #d3d7cf; margin: 0px; padding:
  0px;">npm</span>&nbsp;<span class=" xterm-bg-color-3  xterm-color-0 "
  style="background-color: #c4a000; color: #2e3436; margin: 0px; padding:
  0px;">WARN</span>&nbsp;<span class=" xterm-color-5 " style="color: #75507b;
  margin: 0px; padding:
  0px;">optional</span>&nbsp;Skipping&nbsp;failed&nbsp;optional&nbsp;dependency&nbsp;/pm2/chokidar/fsevents:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-bg-color-0  xterm-color-7 "
  style="background-color: #2e3436; color: #d3d7cf; margin: 0px; padding:
  0px;">npm</span>&nbsp;<span class=" xterm-bg-color-3  xterm-color-0 "
  style="background-color: #c4a000; color: #2e3436; margin: 0px; padding:
  0px;">WARN</span>&nbsp;<span class=" xterm-color-5 " style="color: #75507b;
  margin: 0px; padding:
  0px;">notsup</span>&nbsp;Not&nbsp;compatible&nbsp;with&nbsp;your&nbsp;operating&nbsp;system&nbsp;or&nbsp;architecture:&nbsp;fsevents@1.1.2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-bold  xterm-color-10 " style="color:
  #8ae234; font-weight: 700; margin: 0px; padding:
  0px;">➜&nbsp;&nbsp;</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">workspace</span>&nbsp;<span class="reverse-video terminal-cursor blured"
  style="background-color: rgb(0 , 0 , 0); border: 1px solid rgb(255 , 255 ,
  255); color: black; margin: 0px; padding: 0px;">&nbsp;</span>&nbsp; &nbsp;
  &nbsp; &nbsp;&nbsp;</div>YA裝好了, 目前安裝的是2.5.0版本<br /><br /><span
  style="font-size: x-large;">如何使用它</span><br />進入到你的node app資夾, 一般情況下都是執行npm
  start啟動你的node app<br />start的內容多半是指定在package.json裡, 可以去看就道了,
  如果你的啟動是index.js<br />那就是...<br /><div style="background-color: #1f1b1b; color:
  white; font-family: "PT Mono", monospace; font-size: 12px; line-height: 14px;
  margin: 0px; padding: 0px; white-space: nowrap;"><span class=" xterm-bold 
  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin: 0px;
  padding: 0px;">bk</span>&nbsp;<span class=" xterm-bold  xterm-color-12 "
  style="color: #729fcf; font-weight: 700; margin: 0px; padding:
  0px;">git:(</span><span class=" xterm-bold  xterm-color-9 " style="color:
  #ef2929; font-weight: 700; margin: 0px; padding: 0px;">master</span><span
  class=" xterm-bold  xterm-color-12 " style="color: #729fcf; font-weight: 700;
  margin: 0px; padding:
  0px;">)</span>&nbsp;pm2&nbsp;start&nbsp;index.js&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Starting&nbsp;/home/cabox/workspace/bk/index.js&nbsp;in&nbsp;fork_mode&nbsp;(1&nbsp;instance)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Done.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">┌──────────┬────┬──────┬──────┬────────┬─────────┬────────┬─────┬───────────┬──────────┐</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;App&nbsp;name&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;id&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;mode&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;pid&nbsp;&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;status&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;restart&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;uptime&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;cpu&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding:
  0px;">&nbsp;mem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;watching&nbsp;</span><span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">├──────────┼────┼──────┼──────┼────────┼─────────┼────────┼─────┼───────────┼──────────┤</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;index&nbsp;&nbsp;&nbsp;&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span class=" xterm-bold 
  xterm-bg-color-257  xterm-color-256 " style="font-weight: 700; margin: 0px;
  padding: 0px;">fork</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;9660&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;<span class=" xterm-bold  xterm-color-10 " style="color:
  #8ae234; font-weight: 700; margin: 0px; padding:
  0px;">online</span>&nbsp;<span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0%&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;13.3&nbsp;MB&nbsp;&nbsp;&nbsp;<span class=" xterm-color-8
  " style="color: #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span
  class=" xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">disabled</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">└──────────┴────┴──────┴──────┴────────┴─────────┴────────┴─────┴───────────┴──────────┘</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding: 0px;">&nbsp;Use&nbsp;`pm2&nbsp;show&nbsp;<id
  name="">`&nbsp;to&nbsp;get&nbsp;more&nbsp;details&nbsp;about&nbsp;an&nbsp;app</id></span>&nbsp;&nbsp;</div>瞧,
  有了! 這樣就開始被監控了, 然後你的app 也啟動了<br /><br />也是可以將App name命名, 如<br /><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding: 0px;">bk</span>&nbsp;<span
  class=" xterm-bold  xterm-color-12 " style="color: #729fcf; font-weight: 700;
  margin: 0px; padding: 0px;">git:(</span><span class=" xterm-bold 
  xterm-color-9 " style="color: #ef2929; font-weight: 700; margin: 0px; padding:
  0px;">master</span><span class=" xterm-bold  xterm-color-12 " style="color:
  #729fcf; font-weight: 700; margin: 0px; padding:
  0px;">)</span>&nbsp;pm2&nbsp;start&nbsp;index.js&nbsp;--name&nbsp;myapp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Spawning&nbsp;PM2&nbsp;daemon&nbsp;with&nbsp;pm2_home=/home/cabox/.pm2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>PM2&nbsp;Successfully&nbsp;daemonized&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Starting&nbsp;/home/cabox/workspace/bk/index.js&nbsp;in&nbsp;fork_mode&nbsp;(1&nbsp;instance)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Done.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">┌──────────┬────┬──────┬───────┬────────┬─────────┬────────┬─────┬───────────┬──────────┐</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;App&nbsp;name&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;id&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;mode&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;pid&nbsp;&nbsp;&nbsp;</span><span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;status&nbsp;</span><span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span><span class=" xterm-bold 
  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin: 0px;
  padding: 0px;">&nbsp;restart&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;uptime&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;cpu&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding:
  0px;">&nbsp;mem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;watching&nbsp;</span><span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">├──────────┼────┼──────┼───────┼────────┼─────────┼────────┼─────┼───────────┼──────────┤</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;myapp&nbsp;&nbsp;&nbsp;&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span class=" xterm-bold 
  xterm-bg-color-257  xterm-color-256 " style="font-weight: 700; margin: 0px;
  padding: 0px;">fork</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;10014&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;<span class=" xterm-bold  xterm-color-10 " style="color:
  #8ae234; font-weight: 700; margin: 0px; padding:
  0px;">online</span>&nbsp;<span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0%&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;13.4&nbsp;MB&nbsp;&nbsp;&nbsp;<span class=" xterm-color-8
  " style="color: #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span
  class=" xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">disabled</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">└──────────┴────┴──────┴───────┴────────┴─────────┴────────┴─────┴───────────┴──────────┘</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding: 0px;">&nbsp;Use&nbsp;`pm2&nbsp;show&nbsp;<id
  name="">`&nbsp;to&nbsp;get&nbsp;more&nbsp;details&nbsp;about&nbsp;an&nbsp;app</id></span>&nbsp;</div>瞧,
  有了! 己變成myapp, 然後你的app 也啟動了, 去看看吧<br />(app啟動無圖) XD<br /><br
  />接下來看看監控的dashboard<br /><span class=" xterm-bold  xterm-color-14 "
  style="background-color: #1f1b1b; color: #34e2e2; font-family: "pt mono" ,
  monospace; font-size: 12px; font-weight: 700; margin: 0px; padding: 0px;
  white-space: nowrap;">bk</span><span style="background-color: #1f1b1b; color:
  white; font-family: "pt mono" , monospace; font-size: 12px; white-space:
  nowrap;">&nbsp;</span><span class=" xterm-bold  xterm-color-12 "
  style="background-color: #1f1b1b; color: #729fcf; font-family: "pt mono" ,
  monospace; font-size: 12px; font-weight: 700; margin: 0px; padding: 0px;
  white-space: nowrap;">git:(</span><span class=" xterm-bold  xterm-color-9 "
  style="background-color: #1f1b1b; color: #ef2929; font-family: "pt mono" ,
  monospace; font-size: 12px; font-weight: 700; margin: 0px; padding: 0px;
  white-space: nowrap;">master</span><span class=" xterm-bold  xterm-color-12 "
  style="background-color: #1f1b1b; color: #729fcf; font-family: "pt mono" ,
  monospace; font-size: 12px; font-weight: 700; margin: 0px; padding: 0px;
  white-space: nowrap;">)</span><span style="background-color: #1f1b1b; color:
  white; font-family: "pt mono" , monospace; font-size: 12px; white-space:
  nowrap;">&nbsp;pm2&nbsp;monit &nbsp; &nbsp; &nbsp;&nbsp;</span><br />會出現下列<br
  /><div style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;">Process&nbsp;list&nbsp;<span class=" xterm-color-4 "
  style="color: #3465a4; margin: 0px; padding:
  0px;">─────────────────────────────┐</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">┌─</span>&nbsp;Global&nbsp;Logs&nbsp;<span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">───────────────────────────────────────────────────────────────────────────────────────────┐</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bg-color-4 
  xterm-color-7 " style="background-color: #3465a4; color: #d3d7cf; margin: 0px;
  padding:
  0px;">[&nbsp;0]&nbsp;myapp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mem:&nbsp;</span><span
  class=" xterm-bold  xterm-bg-color-4  xterm-color-15 "
  style="background-color: #3465a4; color: #eeeeec; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;44</span><span class=" xterm-bg-color-4 
  xterm-color-7 " style="background-color: #3465a4; color: #d3d7cf; margin: 0px;
  padding: 0px;">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;CPU:&nbsp;</span><span class="
  xterm-bold  xterm-bg-color-4  xterm-color-15 " style="background-color:
  #3465a4; color: #eeeeec; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;0</span><span class=" xterm-bg-color-4  xterm-color-7 "
  style="background-color: #3465a4; color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;%&nbsp;&nbsp;</span><span class=" xterm-bold  xterm-bg-color-4 
  xterm-color-15 " style="background-color: #3465a4; color: #eeeeec;
  font-weight: 700; margin: 0px; padding: 0px;">on</span><span class="
  xterm-color-7 " style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;</span><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding: 0px;">│&nbsp;</span><span class="
  xterm-color-2 " style="color: #4e9a06; margin: 0px; padding:
  0px;">myapp</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">&nbsp;>&nbsp;Executing&nbsp;(default):&nbsp;SELECT&nbsp;`id`,&nbsp;`title`,&nbsp;`body`,&nbsp;`noteday`,&nbsp;`createdAt`,&nbsp;`updatedAt`,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;`ProfileId`&nbsp;FROM&nbsp;`Notes`&nbsp;AS&nbsp;`Note`;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding: 0px;">│&nbsp;</span><span class=" xterm-color-2 " style="color:
  #4e9a06; margin: 0px; padding: 0px;">myapp</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;>&nbsp;Executing&nbsp;(default):&nbsp;SELECT&nbsp;`id`,&nbsp;`email`,&nbsp;`password`,&nbsp;`createdAt`,&nbsp;`updatedAt`&nbsp;FROM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;`Accounts`&nbsp;AS&nbsp;`Account`;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-color-4 " style="color: #3465a4; margin: 0px; padding:
  0px;">│</span><span class=" xterm-color-7 " style="color: #d3d7cf; margin:
  0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-4 " style="color: #3465a4;
  margin: 0px; padding:
  0px;">└────────────────────────────────────────────┘</span><span class="
  xterm-color-7 " style="color: #d3d7cf; margin: 0px; padding:
  0px;">└─────────────────────────────────────────────────────────────────────────────────────────────────────────┘</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding: 0px;">┌─</span>&nbsp;Custom&nbsp;metrics&nbsp;<span
  class=" xterm-color-0 " style="color: #2e3436; margin: 0px; padding:
  0px;">(http://bit.ly/code-metric</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">─┐┌─</span>&nbsp;Metadata&nbsp;<span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">──────────────────────────────────────────────────────────────────────────────────────────────┐</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding: 0px;">│&nbsp;</span><span class=" xterm-bold "
  style="font-weight: 700; margin: 0px; padding:
  0px;">Loop&nbsp;delay</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0.47ms&nbsp;<span
  class=" xterm-color-7 " style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;││&nbsp;App&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-bold  xterm-color-15 " style="color: #eeeeec; font-weight: 700;
  margin: 0px; padding: 0px;">myapp</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-bg-color-4  xterm-color-0 " style="background-color: #3465a4;
  color: #2e3436; margin: 0px; padding: 0px;">&nbsp;</span><span class="
  xterm-color-7 " style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;│</span>&nbsp;</div><div style="background-color: #1f1b1b; color:
  white; font-family: "PT Mono", monospace; font-size: 12px; line-height: 14px;
  margin: 0px; padding: 0px; white-space: nowrap;"><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Restarts&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Uptime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;14m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Script&nbsp;path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/home/cabox/workspace/bk/index.js&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Script&nbsp;args&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Interpreter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Interpreter&nbsp;args&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Exec&nbsp;mode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-bold  xterm-color-15 " style="color: #eeeeec; font-weight: 700;
  margin: 0px; padding: 0px;">fork</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;Node.js&nbsp;version&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.2.0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;││&nbsp;watch&nbsp;&&nbsp;reload&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  class=" xterm-bold  xterm-color-9 " style="color: #ef2929; font-weight: 700;
  margin: 0px; padding: 0px;">?</span><span class=" xterm-color-7 "
  style="color: #d3d7cf; margin: 0px; padding:
  0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│</span>&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding:
  0px;">└────────────────────────────────────────────┘└─────────────────────────────────────────────────────────────────────────────────────────────────────────┘</span>&nbsp;</div>瞧,
  是不是, 監控畫面開啟了<br /><br /><span style="font-size: x-large;">如何停止它</span><br
  /><div style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">workspace</span>&nbsp;pm2&nbsp;stop&nbsp;myapp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Applying&nbsp;action&nbsp;stopProcessId&nbsp;on&nbsp;app&nbsp;[myapp](ids:&nbsp;0)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>[myapp](0)&nbsp;✓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">┌──────────┬────┬──────┬───────┬─────────┬─────────┬────────┬─────┬───────────┬──────────┐</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;App&nbsp;name&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;id&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;mode&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;pid&nbsp;&nbsp;&nbsp;</span><span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;status&nbsp;&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;restart&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;uptime&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;cpu&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding:
  0px;">&nbsp;mem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;watching&nbsp;</span><span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">├──────────┼────┼──────┼───────┼─────────┼─────────┼────────┼─────┼───────────┼──────────┤</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;myapp&nbsp;&nbsp;&nbsp;&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span class=" xterm-bold 
  xterm-bg-color-257  xterm-color-256 " style="font-weight: 700; margin: 0px;
  padding: 0px;">fork</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=" xterm-color-8
  " style="color: #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span
  class=" xterm-bold  xterm-color-9 " style="color: #ef2929; font-weight: 700;
  margin: 0px; padding: 0px;">stopped</span>&nbsp;<span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0%&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
  class=" xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;<span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">disabled</span>&nbsp;<span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;myapp2&nbsp;&nbsp;&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;1&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span class=" xterm-bold 
  xterm-bg-color-257  xterm-color-256 " style="font-weight: 700; margin: 0px;
  padding: 0px;">fork</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;10826&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;<span class=" xterm-bold  xterm-color-10 " style="color:
  #8ae234; font-weight: 700; margin: 0px; padding:
  0px;">online</span>&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;2m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0%&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;24.2&nbsp;MB&nbsp;&nbsp;&nbsp;<span class=" xterm-color-8
  " style="color: #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span
  class=" xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">disabled</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">└──────────┴────┴──────┴───────┴─────────┴─────────┴────────┴─────┴───────────┴──────────┘</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding: 0px;">&nbsp;Use&nbsp;`pm2&nbsp;show&nbsp;<id
  name="">`&nbsp;to&nbsp;get&nbsp;more&nbsp;details&nbsp;about&nbsp;an&nbsp;app</id></span>&nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>瞧, myapp己停止了<br /><br /><span
  style="font-size: x-large;">如何刪除它</span><br /><div style="background-color:
  #1f1b1b; color: white; font-family: "PT Mono", monospace; font-size: 12px;
  line-height: 14px; margin: 0px; padding: 0px; white-space: nowrap;"><span
  class=" xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700;
  margin: 0px; padding:
  0px;">workspace</span>&nbsp;pm2&nbsp;delete&nbsp;myapp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Applying&nbsp;action&nbsp;deleteProcessId&nbsp;on&nbsp;app&nbsp;[myapp](ids:&nbsp;0)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>[myapp](0)&nbsp;✓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">┌──────────┬────┬──────┬───────┬────────┬─────────┬────────┬─────┬───────────┬──────────┐</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;App&nbsp;name&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;id&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;mode&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;pid&nbsp;&nbsp;&nbsp;</span><span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;status&nbsp;</span><span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span><span class=" xterm-bold 
  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin: 0px;
  padding: 0px;">&nbsp;restart&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;uptime&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;cpu&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding:
  0px;">&nbsp;mem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;watching&nbsp;</span><span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">├──────────┼────┼──────┼───────┼────────┼─────────┼────────┼─────┼───────────┼──────────┤</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;myapp2&nbsp;&nbsp;&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;1&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span class=" xterm-bold 
  xterm-bg-color-257  xterm-color-256 " style="font-weight: 700; margin: 0px;
  padding: 0px;">fork</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding: 0px;">│</span>&nbsp;10826&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;<span class=" xterm-bold  xterm-color-10 " style="color:
  #8ae234; font-weight: 700; margin: 0px; padding:
  0px;">online</span>&nbsp;<span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">│</span>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="
  xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;11m&nbsp;&nbsp;&nbsp;&nbsp;<span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;0%&nbsp;&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;22.7&nbsp;MB&nbsp;&nbsp;&nbsp;<span class=" xterm-color-8
  " style="color: #555753; margin: 0px; padding: 0px;">│</span>&nbsp;<span
  class=" xterm-color-8 " style="color: #555753; margin: 0px; padding:
  0px;">disabled</span>&nbsp;<span class=" xterm-color-8 " style="color:
  #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">└──────────┴────┴──────┴───────┴────────┴─────────┴────────┴─────┴───────────┴──────────┘</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding: 0px;">&nbsp;Use&nbsp;`pm2&nbsp;show&nbsp;<id
  name="">`&nbsp;to&nbsp;get&nbsp;more&nbsp;details&nbsp;about&nbsp;an&nbsp;app</id></span>&nbsp;
  &nbsp; &nbsp; &nbsp;</div>瞧, myapp己被刪了<br /><br /><span style="font-size:
  x-large;">不再用它時</span><br /><br />好了, 關閉pm2的監控吧<br /><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-bold  xterm-color-14 " style="color:
  #34e2e2; font-weight: 700; margin: 0px; padding: 0px;">bk</span>&nbsp;<span
  class=" xterm-bold  xterm-color-12 " style="color: #729fcf; font-weight: 700;
  margin: 0px; padding: 0px;">git:(</span><span class=" xterm-bold 
  xterm-color-9 " style="color: #ef2929; font-weight: 700; margin: 0px; padding:
  0px;">master</span><span class=" xterm-bold  xterm-color-12 " style="color:
  #729fcf; font-weight: 700; margin: 0px; padding:
  0px;">)</span>&nbsp;pm2&nbsp;kill&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Stopping&nbsp;PM2...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Applying&nbsp;action&nbsp;deleteProcessId&nbsp;on&nbsp;app&nbsp;[all](ids:&nbsp;0)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>[myapp](0)&nbsp;✓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>All&nbsp;processes&nbsp;have&nbsp;been&nbsp;stopped&nbsp;and&nbsp;deleted&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding: 0px;">[PM2]&nbsp;</span>PM2&nbsp;stopped &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp;&nbsp;</div><br /><div style="background-color: #1f1b1b; color: white;
  font-family: "PT Mono", monospace; font-size: 12px; line-height: 14px; margin:
  0px; padding: 0px; white-space: nowrap;"><span class=" xterm-bold 
  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin: 0px;
  padding:
  0px;">workspace</span>&nbsp;pm2&nbsp;list&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>Spawning&nbsp;PM2&nbsp;daemon&nbsp;with&nbsp;pm2_home=/home/cabox/.pm2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-2 " style="color: #4e9a06;
  margin: 0px; padding:
  0px;">[PM2]&nbsp;</span>PM2&nbsp;Successfully&nbsp;daemonized&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">┌──────────┬────┬──────┬─────┬────────┬─────────┬────────┬─────┬─────┬──────────┐</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding: 0px;">│</span><span class=" xterm-bold  xterm-color-14 "
  style="color: #34e2e2; font-weight: 700; margin: 0px; padding:
  0px;">&nbsp;App&nbsp;name&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;id&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;mode&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;pid&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;status&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;restart&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;uptime&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;cpu&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;mem&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding: 0px;">│</span><span class="
  xterm-bold  xterm-color-14 " style="color: #34e2e2; font-weight: 700; margin:
  0px; padding: 0px;">&nbsp;watching&nbsp;</span><span class=" xterm-color-8 "
  style="color: #555753; margin: 0px; padding:
  0px;">│</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-8 " style="color: #555753;
  margin: 0px; padding:
  0px;">└──────────┴────┴──────┴─────┴────────┴─────────┴────────┴─────┴─────┴──────────┘</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div
  style="background-color: #1f1b1b; color: white; font-family: "PT Mono",
  monospace; font-size: 12px; line-height: 14px; margin: 0px; padding: 0px;
  white-space: nowrap;"><span class=" xterm-color-7 " style="color: #d3d7cf;
  margin: 0px; padding: 0px;">&nbsp;Use&nbsp;`pm2&nbsp;show&nbsp;<id
  name="">`&nbsp;to&nbsp;get&nbsp;more&nbsp;details&nbsp;about&nbsp;an&nbsp;app</id></span>&nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>瞧, 己經沒有app被監控了<br /><br
  />收工, 今天就介紹到這兒吧, 下次再做進階的應用, 881~<br /><br /><br /><br /><br /><br /><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2017-07-11 14:30:00
---

今天的東東叫pm2, pm2是node的一個可監控程序的工具, 不多廢, 進主題  
  
進行全域安裝  

workspace npm install pm2 -g                                                                                                                           

/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2 -> /home/cabox/.nvm/versions/node/v5.2.0/lib/node\_modules/pm2/bin/pm2                                       

/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-dev -> /home/cabox/.nvm/versions/node/v5.2.0/lib/node\_modules/pm2/bin/pm2-dev                               

/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-docker -> /home/cabox/.nvm/versions/node/v5.2.0/lib/node\_modules/pm2/bin/pm2-docker                         

/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-daemon -> /home/cabox/.nvm/versions/node/v5.2.0/lib/node\_modules/pm2/bin/pm2-daemon                         

/home/cabox/.nvm/versions/node/v5.2.0/bin/pm2-runtime -> /home/cabox/.nvm/versions/node/v5.2.0/lib/node\_modules/pm2/bin/pm2-runtime                       

/home/cabox/.nvm/versions/node/v5.2.0/lib                                                                                                                 

\`-- pm2@2.5.0                                                                                                                                             

npm WARN optional Skipping failed optional dependency /pm2/chokidar/fsevents:                                                                             

npm WARN notsup Not compatible with your operating system or architecture: fsevents@1.1.2                                                                 

➜ workspace          

YA裝好了, 目前安裝的是2.5.0版本  
  
如何使用它  
進入到你的node app資夾, 一般情況下都是執行npm start啟動你的node app  
start的內容多半是指定在package.json裡, 可以去看就道了, 如果你的啟動是index.js  
那就是...  

bk git:(master) pm2 start index.js                                                                                                                     

\[PM2\] Starting /home/cabox/workspace/bk/index.js in fork\_mode (1 instance)                                                                                

\[PM2\] Done.                                                                                                                                               

┌──────────┬────┬──────┬──────┬────────┬─────────┬────────┬─────┬───────────┬──────────┐                                                                  

│ App name │ id │ mode │ pid │ status │ restart │ uptime │ cpu │ mem │ watching │                                                                  

├──────────┼────┼──────┼──────┼────────┼─────────┼────────┼─────┼───────────┼──────────┤                                                                  

│ index │ 0  │ fork │ 9660 │ online │ 0       │ 0s     │ 0%  │ 13.3 MB   │ disabled │                                                                  

└──────────┴────┴──────┴──────┴────────┴─────────┴────────┴─────┴───────────┴──────────┘                                                                  

 Use \`pm2 show \` to get more details about an app  

瞧, 有了! 這樣就開始被監控了, 然後你的app 也啟動了  
  
也是可以將App name命名, 如  

bk git:(master) pm2 start index.js --name myapp                                                                                                        

\[PM2\] Spawning PM2 daemon with pm2\_home=/home/cabox/.pm2                                                                                                  

\[PM2\] PM2 Successfully daemonized                                                                                                                         

\[PM2\] Starting /home/cabox/workspace/bk/index.js in fork\_mode (1 instance)                                                                                

\[PM2\] Done.                                                                                                                                               

┌──────────┬────┬──────┬───────┬────────┬─────────┬────────┬─────┬───────────┬──────────┐                                                                 

│ App name │ id │ mode │ pid │ status │ restart │ uptime │ cpu │ mem │ watching │                                                                 

├──────────┼────┼──────┼───────┼────────┼─────────┼────────┼─────┼───────────┼──────────┤                                                                 

│ myapp │ 0  │ fork │ 10014 │ online │ 0       │ 0s     │ 0%  │ 13.4 MB   │ disabled │                                                                 

└──────────┴────┴──────┴───────┴────────┴─────────┴────────┴─────┴───────────┴──────────┘                                                                 

 Use \`pm2 show \` to get more details about an app 

瞧, 有了! 己變成myapp, 然後你的app 也啟動了, 去看看吧  
(app啟動無圖) XD  
  
接下來看看監控的dashboard  
bk git:(master) pm2 monit   
會出現下列  

Process list ─────────────────────────────┐┌─ Global Logs ───────────────────────────────────────────────────────────────────────────────────────────┐ 

│\[ 0\] myapp     Mem:  44 MB    CPU:  0 % on ││ myapp > Executing (default): SELECT \`id\`, \`title\`, \`body\`, \`noteday\`, \`createdAt\`, \`updatedAt\`,         │ 

│ ││ \`ProfileId\` FROM \`Notes\` AS \`Note\`;                                                                     │ 

│ ││ myapp > Executing (default): SELECT \`id\`, \`email\`, \`password\`, \`createdAt\`, \`updatedAt\` FROM            │ 

│ ││ \`Accounts\` AS \`Account\`;                                                                                │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

│ ││                                                                                                         │ 

└────────────────────────────────────────────┘└─────────────────────────────────────────────────────────────────────────────────────────────────────────┘ 

┌─ Custom metrics (http://bit.ly/code-metric─┐┌─ Metadata ──────────────────────────────────────────────────────────────────────────────────────────────┐ 

│ Loop delay                         0.47ms  ││ App Name myapp   │ 

│                                            ││ Restarts              0                                                                                 │ 

│                                            ││ Uptime                14m                                                                               │ 

│                                            ││ Script path           /home/cabox/workspace/bk/index.js                                                 │ 

│                                            ││ Script args           N/A                                                                               │ 

│                                            ││ Interpreter           node                                                                              │ 

│                                            ││ Interpreter args      N/A                                                                               │ 

│                                            ││ Exec mode fork │ 

│                                            ││ Node.js version       5.2.0                                                                             │ 

│                                            ││ watch & reload ? │ 

└────────────────────────────────────────────┘└─────────────────────────────────────────────────────────────────────────────────────────────────────────┘ 

瞧, 是不是, 監控畫面開啟了  
  
如何停止它  

workspace pm2 stop myapp                                                                                                                               

\[PM2\] Applying action stopProcessId on app \[myapp\](ids: 0)                                                                                                

\[PM2\] \[myapp\](0) ✓                                                                                                                                        

┌──────────┬────┬──────┬───────┬─────────┬─────────┬────────┬─────┬───────────┬──────────┐                                                                

│ App name │ id │ mode │ pid │ status │ restart │ uptime │ cpu │ mem │ watching │                                                                

├──────────┼────┼──────┼───────┼─────────┼─────────┼────────┼─────┼───────────┼──────────┤                                                                

│ myapp │ 0  │ fork │ 0     │ stopped │ 0       │ 0      │ 0%  │ 0 B       │ disabled │                                                                

│ myapp2 │ 1  │ fork │ 10826 │ online  │ 0       │ 2m     │ 0%  │ 24.2 MB   │ disabled │                                                                

└──────────┴────┴──────┴───────┴─────────┴─────────┴────────┴─────┴───────────┴──────────┘                                                                

 Use \`pm2 show \` to get more details about an app                                 

瞧, myapp己停止了  
  
如何刪除它  

workspace pm2 delete myapp                                                                                                                             

\[PM2\] Applying action deleteProcessId on app \[myapp\](ids: 0)                                                                                              

\[PM2\] \[myapp\](0) ✓                                                                                                                                        

┌──────────┬────┬──────┬───────┬────────┬─────────┬────────┬─────┬───────────┬──────────┐                                                                 

│ App name │ id │ mode │ pid │ status │ restart │ uptime │ cpu │ mem │ watching │                                                                 

├──────────┼────┼──────┼───────┼────────┼─────────┼────────┼─────┼───────────┼──────────┤                                                                 

│ myapp2 │ 1  │ fork │ 10826 │ online │ 0       │ 11m    │ 0%  │ 22.7 MB   │ disabled │                                                                 

└──────────┴────┴──────┴───────┴────────┴─────────┴────────┴─────┴───────────┴──────────┘                                                                 

 Use \`pm2 show \` to get more details about an app       

瞧, myapp己被刪了  
  
不再用它時  
  
好了, 關閉pm2的監控吧  

bk git:(master) pm2 kill                                                                                                                               

\[PM2\] Stopping PM2...                                                                                                                                     

\[PM2\] Applying action deleteProcessId on app \[all\](ids: 0)                                                                                                

\[PM2\] \[myapp\](0) ✓                                                                                                                                        

\[PM2\] All processes have been stopped and deleted                                                                                                         

\[PM2\] PM2 stopped                                                 

  

workspace pm2 list                                                                                                                                     

\[PM2\] Spawning PM2 daemon with pm2\_home=/home/cabox/.pm2                                                                                                  

\[PM2\] PM2 Successfully daemonized                                                                                                                         

┌──────────┬────┬──────┬─────┬────────┬─────────┬────────┬─────┬─────┬──────────┐                                                                         

│ App name │ id │ mode │ pid │ status │ restart │ uptime │ cpu │ mem │ watching │                                                                         

└──────────┴────┴──────┴─────┴────────┴─────────┴────────┴─────┴─────┴──────────┘                                                                         

 Use \`pm2 show \` to get more details about an app              

瞧, 己經沒有app被監控了  
  
收工, 今天就介紹到這兒吧, 下次再做進階的應用, 881~  
  
  
  
  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
