---
title: EJS常用標簽
tags:
  - ejs
  - Nodejs
  - vscode
excerpt: >-
  <span style="color: #2f2f2f; font-family: , "sf ui text" , "arial" , "pingfang
  sc" , "hiragino sans gb" , "microsoft yahei" , "wenquanyi micro hei" ,
  sans-serif;"><span style="background-color: white;">常用</span></span><span
  style="background-color: white; color: #2f2f2f;">的</span><span
  style="background-color: white; color: #2f2f2f;">EJS</span><span
  style="background-color: white; color: #2f2f2f;">標簽XD</span><br /><!-- HTML
  generated using hilite.me --><br /><div style="background: #272822;
  border-width: 0.1em 0.1em 0.1em 0.8em; border: solid gray; overflow: auto;
  padding: 0.2em 0.6em; width: auto;"><pre style="line-height: 125%; margin:
  0;"><span style="color: #f92672;"><%</span> <span style="color:
  #f92672;">%></span><span style="background-color: #1e0010; color:
  #960050;">流程控制標簽</span><br /><span style="color: #75715e;">//例</span><br
  /><span style="color: #f92672;"><%</span> <span style="color:
  #66d9ef;">var</span> <span style="color: #a6e22e;">user</span><span
  style="color: #f8f8f2;">.</span><span style="color: #a6e22e;">name</span>
  <span style="color: #f92672;">=</span> <span style="color: #e6db74;">'bruce -
  huang'</span> <span style="color: #f92672;">%></span><br /><span style="color:
  #f92672;"><%</span> <span style="color: #66d9ef;">if</span><span style="color:
  #f8f8f2;">(</span><span style="color: #a6e22e;">user</span><span style="color:
  #f8f8f2;">.</span><span style="color: #a6e22e;">name</span> <span
  style="color: #f92672;">!==</span> <span style="color:
  #66d9ef;">null</span><span style="color: #f8f8f2;">)</span> <span
  style="color: #f8f8f2;">{</span> <span style="color: #f92672;">%></span><br
  /><span style="color: #f92672;"><</span><span style="color:
  #a6e22e;">div</span><span style="color: #f92672;">></span><span style="color:
  #a6e22e;">hi</span> <span style="color: #f92672;"><%=</span> <span
  style="color: #a6e22e;">user</span><span style="color: #f8f8f2;">.</span><span
  style="color: #a6e22e;">name</span> <span style="color:
  #f92672;">%><</span><span style="background-color: #1e0010; color:
  #960050;">/div></span><br /><span style="color: #f92672;"><%</span> <span
  style="color: #f8f8f2;">}</span> <span style="color: #66d9ef;">else</span>
  <span style="color: #f8f8f2;">{</span> <span style="color:
  #f92672;">%></span><br /><span style="color: #f92672;"><</span><span
  style="color: #a6e22e;">div</span><span style="color: #f92672;">></span><span
  style="color: #a6e22e;">no</span> <span style="color: #a6e22e;">user</span>
  <span style="color: #a6e22e;">name</span><span style="color:
  #f92672;"><</span><span style="background-color: #1e0010; color:
  #960050;">/div></span><br /><span style="color: #f92672;"><%</span> <span
  style="color: #f8f8f2;">}</span> <span style="color: #f92672;">%></span><br
  /><br /><span style="color: #f92672;"><%=</span> <span style="color:
  #f92672;">%></span><span style="background-color: #1e0010; color:
  #960050;">输出標簽（原文输出</span><span style="color: #a6e22e;">HTML</span><span
  style="background-color: #1e0010; color: #960050;">標簽）</span><br /><span
  style="color: #75715e;">//例</span><br /><span style="color:
  #f92672;"><%</span> <span style="color: #66d9ef;">var</span> <span
  style="color: #a6e22e;">user</span><span style="color: #f8f8f2;">.</span><span
  style="color: #a6e22e;">name</span> <span style="color: #f92672;">=</span>
  <span style="color: #e6db74;">'bruce - huang'</span> <span style="color:
  #f92672;">%></span><br /><span style="color: #f92672;"><%=</span> <span
  style="color: #a6e22e;">user</span><span style="color: #f8f8f2;">.</span><span
  style="color: #a6e22e;">name</span> <span style="color: #f92672;">%></span><br
  /><br /><span style="color: #f92672;"><%-</span> <span style="color:
  #f92672;">%></span><span style="background-color: #1e0010; color:
  #960050;">输出標簽（</span><span style="color: #a6e22e;">HTML</span><span
  style="background-color: #1e0010; color: #960050;">会被浏览器解析）</span><br /><span
  style="color: #75715e;">//例</span><br /><span style="color:
  #f92672;"><%-</span> <span style="color: #a6e22e;">data</span><span
  style="color: #f8f8f2;">.</span><span style="color:
  #a6e22e;">htmlContent</span> <span style="color: #f92672;">%></span><br /><br
  /><br /><span style="color: #f92672;"><%</span><span style="background-color:
  #1e0010; color: #960050;">#</span> <span style="color:
  #f92672;">%></span><span style="background-color: #1e0010; color:
  #960050;">注释標簽</span><br /><span style="color: #75715e;">//例</span><br /><span
  style="color: #f92672;"><%</span><span style="background-color: #1e0010;
  color: #960050;">#</span> <span style="background-color: #1e0010; color:
  #960050;">我是注解，我不會被秀在源始碼上</span> <span style="color: #f92672;">%></span><br
  /><br /><span style="color: #f92672;">-%></span><span style="background-color:
  #1e0010; color: #960050;">去掉沒用的空格</span><br /><span style="color:
  #75715e;">//例</span><br /><span style="color: #f92672;"><%</span> <span
  style="color: #66d9ef;">var</span> <span style="color:
  #a6e22e;">user</span><span style="color: #f8f8f2;">.</span><span style="color:
  #a6e22e;">name</span> <span style="color: #f92672;">=</span> <span
  style="color: #e6db74;">'bruce - huang 看己去試吧, 我是不知道他怎知道什麼叫沒用的空格XD'</span>
  <span style="color: #f92672;">%></span><br /><span style="color:
  #f92672;"><%=</span> <span style="color: #a6e22e;">user</span><span
  style="color: #f8f8f2;">.</span><span style="color: #a6e22e;">name</span>
  <span style="color: #f92672;">-%></span><br /><br /><span style="color:
  #a6e22e;">ejs</span><span style="background-color: #1e0010; color:
  #960050;">中的邏輯代碼全部用</span><span style="color: #a6e22e;">JavaScript</span><br
  /></pre></div><br />好了, 收工!!<div class="blogger-post-footer">Copyright © Bruce
  Huang All rights reserved.</div>
date: 2018-06-13 16:52:00
---

常用的EJS標簽XD  
  

<% %>流程控制標簽  
//例  
<% var user.name \= 'bruce - huang' %>  
<% if(user.name !== null) { %>  
<div\>hi <%= user.name %></div>  
<% } else { %>  
<div\>no user name</div>  
<% } %>  
  
<%= %>输出標簽（原文输出HTML標簽）  
//例  
<% var user.name \= 'bruce - huang' %>  
<%= user.name %>  
  
<%- %>输出標簽（HTML会被浏览器解析）  
//例  
<%- data.htmlContent %>  
  
  
<%# %>注释標簽  
//例  
<%# 我是注解，我不會被秀在源始碼上 %>  
  
\-%>去掉沒用的空格  
//例  
<% var user.name \= 'bruce - huang 看己去試吧, 我是不知道他怎知道什麼叫沒用的空格XD' %>  
<%= user.name \-%>  
  
ejs中的邏輯代碼全部用JavaScript  

  
好了, 收工!!

Copyright © Bruce Huang All rights reserved.
<!-- more -->
