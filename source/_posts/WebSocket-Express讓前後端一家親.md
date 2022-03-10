---
title: WebSocket+Express讓前後端一家親
tags:
  - Express
  - Nodejs
  - WebSocket
excerpt: >-
  <p>因為不想廢話，這裡就不解釋什麼是WebSocket了XD，進入正題</p><p>這裡直接使用Github上的websockets/ws項目，它直接使用了express做為項目，所以我們也一起跟著用吧XD</p><p>連結在這
  https://github.com/websockets/ws</p><p>這裡我只寫我做的結果，所有的內容會放到github上，也會給上連接</p><p>Server的code</p><div
  style="background-color: #272822; color: #f8f8f2; font-family: "Fira Code";
  font-size: 12px; line-height: 16px; white-space: pre;"><div><span
  style="color: #66d9ef; font-style: italic;">const</span> wss<span
  style="color: #f92672;"> =</span> <span style="color: #f92672;">new</span>
  WebSocket.<span style="color: #a6e22e; text-decoration-line:
  underline;">Server</span>({</div><div><span style="color: #ae81ff;">   
  </span><span style="color: #e6db74;">port</span><span style="color:
  #ae81ff;">:</span> WSS_PORT</div><div>});</div><br /><div>wss<span
  style="color: #f92672;">.</span><span style="color: #a6e22e;">on</span>(<span
  style="color: #e6db74;">'connection'</span>, <span style="color: #66d9ef;
  font-style: italic;">function</span> <span style="color:
  #a6e22e;">connection</span>(ws) {</div><div>    ws<span style="color:
  #f92672;">.</span><span style="color: #a6e22e;">on</span>(<span style="color:
  #e6db74;">'message'</span>, <span style="color: #66d9ef; font-style:
  italic;">function</span> <span style="color:
  #a6e22e;">incoming</span>(message) {</div><div>        <span style="color:
  #66d9ef; font-style: italic;">console</span><span style="color:
  #f92672;">.</span><span style="color: #66d9ef;">log</span>(<span style="color:
  #e6db74;">'client send: %s'</span>, message)</div><div>    });</div><div>   
  <span style="color: #a6e22e;">setInterval</span>(() <span style="color:
  #66d9ef; font-style: italic;">=></span> {</div><div><span style="color:
  #66d9ef; font-style: italic;">        var</span> uuid<span style="color:
  #f92672;"> =</span> <span style="color:
  #a6e22e;">uuidv4</span>()</div><div>        ws<span style="color:
  #f92672;">.</span><span style="color:
  #a6e22e;">send</span>(uuid);</div><div>        <span style="color: #66d9ef;
  font-style: italic;">console</span><span style="color: #f92672;">.</span><span
  style="color: #66d9ef;">log</span>(<span style="color: #e6db74;">'server send:
  %s'</span>, uuid)</div><div>    }, <span style="color:
  #ae81ff;">1000</span>)</div><div>});</div></div><p>假裝Server有一直在傳輸信息所以使用<span
  style="background-color: #272822; color: #a6e22e; font-family: "Fira Code";
  font-size: 12px; white-space: pre;">setInterval</span>&nbsp;代替&nbsp;</p><p><br
  /></p><p>Client的code</p><div style="background-color: #272822; color: #f8f8f2;
  font-family: "Fira Code"; font-size: 12px; line-height: 16px; white-space:
  pre;"><br /><div><<span style="color: #f92672;">body</span> <span
  style="color: #a6e22e;">onload</span>=<span style="color:
  #e6db74;">"onload()"</span>></div><br /><div>    <<span style="color:
  #f92672;">h1</span>>Hello WebSockets</<span style="color:
  #f92672;">h1</span>></div><br /><div></<span style="color:
  #f92672;">body</span>></div><br /><div><<span style="color:
  #f92672;">style</span>></div><div>    <span style="color:
  #f92672;">body</span> {</div><div>        <span style="color: #66d9ef;
  font-style: italic;">background-color</span>: <span style="color:
  #66d9ef;">lightblue</span>;</div><div>        <span style="color: #66d9ef;
  font-style: italic;">overflow</span>: <span style="color:
  #66d9ef;">auto</span>;</div><div>    }</div><div></<span style="color:
  #f92672;">style</span>></div><br /><div><<span style="color:
  #f92672;">script</span>></div><div>    <span style="color: #66d9ef;
  font-style: italic;">function</span> <span style="color:
  #a6e22e;">onload</span>() {</div><br /><div>        <span style="color:
  #66d9ef; font-style: italic;">let</span> ws <span style="color:
  #f92672;">=</span> <span style="color: #f92672;">new</span> <span
  style="color: #a6e22e; text-decoration-line:
  underline;">WebSocket</span>(<span style="color:
  #e6db74;">'ws://localhost:8080'</span>)</div><div>        ws.<span
  style="color: #a6e22e;">onopen</span> <span style="color: #f92672;">=</span>
  () <span style="color: #66d9ef; font-style: italic;">=></span>
  {</div><div>            <span style="color: #66d9ef; font-style:
  italic;">console</span>.<span style="color: #66d9ef;">log</span>(<span
  style="color: #e6db74;">'open connection'</span>)</div><div>       
  }</div><div>        ws.<span style="color: #a6e22e;">onclose</span> <span
  style="color: #f92672;">=</span> () <span style="color: #66d9ef; font-style:
  italic;">=></span> {</div><div>            <span style="color: #66d9ef;
  font-style: italic;">console</span>.<span style="color:
  #66d9ef;">log</span>(<span style="color: #e6db74;">'close
  connection'</span>)</div><div>        }</div><div>        ws.<span
  style="color: #a6e22e;">onmessage</span> <span style="color:
  #f92672;">=</span> <span style="color: #fd971f; font-style:
  italic;">event</span> <span style="color: #66d9ef; font-style:
  italic;">=></span> {</div><div>            <span style="color: #66d9ef;
  font-style: italic;">console</span>.<span style="color:
  #66d9ef;">log</span>(<span style="color:
  #e6db74;">'client收到server信息'</span>)</div><div>            <span style="color:
  #66d9ef; font-style: italic;">console</span>.<span style="color:
  #66d9ef;">log</span>(event.data)</div><div>            <span style="color:
  #66d9ef; font-style: italic;">var</span> msg <span style="color:
  #f92672;">=</span> document.<span style="color:
  #66d9ef;">createElement</span>(<span style="color:
  #e6db74;">'div'</span>)</div><div>            msg.innerHTML <span
  style="color: #f92672;">=</span> event.data;</div><div>           
  document.<span style="color: #66d9ef;">querySelector</span>(<span
  style="color: #e6db74;">'body'</span>).<span style="color:
  #66d9ef;">append</span>(msg);</div><div>            msg.<span style="color:
  #66d9ef;">focus</span>();</div><br /><div>        }</div><br /><div>   
  }</div><div></<span style="color: #f92672;">script</span>></div><br
  /></div><p><span style="font-size: large;">執行server.js查看效果</span></p><p>Server
  console</p><p><img border="0" data-original-height="580"
  data-original-width="798" height="465"
  src="https://1.bp.blogspot.com/-R-ODjpVYAf4/X3FE9dw5jcI/AAAAAAAA6hw/D0kXK3sltOMDihpH9PbaG8F6VnrtuqCSwCNcBGAsYHQ/w640-h465/express-ws-Server%2Bconsole.jpg"
  width="640" /></p><p>Client page</p><p><a
  href="https://1.bp.blogspot.com/-mk9aUrEm3OY/X3FFD0b23KI/AAAAAAAA6h0/0tbzfr0L3gwWRmJ5f9yZ3XZaIJCQzq8UwCNcBGAsYHQ/s806/express-ws-Client%2Bpage.jpg"
  style="margin-left: 1em; margin-right: 1em; text-align: center;"><img
  border="0" data-original-height="536" data-original-width="806" height="426"
  src="https://1.bp.blogspot.com/-mk9aUrEm3OY/X3FFD0b23KI/AAAAAAAA6h0/0tbzfr0L3gwWRmJ5f9yZ3XZaIJCQzq8UwCNcBGAsYHQ/w640-h426/express-ws-Client%2Bpage.jpg"
  width="640" /></a></p><p>Client console</p><p><a
  href="https://1.bp.blogspot.com/-GGujAIpqfuU/X3FFKDbKUsI/AAAAAAAA6h4/iQtjLGU8ukU6_RM6YmtpB5VOVzfoSdmzwCNcBGAsYHQ/s1108/express-ws-Client%2Bconsole.jpg"
  style="margin-left: 1em; margin-right: 1em; text-align: center;"><img
  border="0" data-original-height="755" data-original-width="1108" height="436"
  src="https://1.bp.blogspot.com/-GGujAIpqfuU/X3FFKDbKUsI/AAAAAAAA6h4/iQtjLGU8ukU6_RM6YmtpB5VOVzfoSdmzwCNcBGAsYHQ/w640-h436/express-ws-Client%2Bconsole.jpg"
  width="640"
  /></a></p><p>完整的項目在這</p><p>https://github.com/cn27529/express-ws</p><p>收工</p><p><br
  /></p><p>參考自</p><p>https://letswrite.tw/websocket/</p><p>https://medium.com/enjoy-life-enjoy-coding/javaScript-websocket-讓前後端沒有距離</p><p><br
  /></p><div class="blogger-post-footer">Copyright © Bruce Huang All rights
  reserved.</div>
date: 2020-09-28 10:16:00
---

因為不想廢話，這裡就不解釋什麼是WebSocket了XD，進入正題

這裡直接使用Github上的websockets/ws項目，它直接使用了express做為項目，所以我們也一起跟著用吧XD

連結在這 https://github.com/websockets/ws

這裡我只寫我做的結果，所有的內容會放到github上，也會給上連接

Server的code

const wss = new WebSocket.Server({

port: WSS\_PORT

});

  

wss.on('connection', function connection(ws) {

ws.on('message', function incoming(message) {

console.log('client send: %s', message)

});

setInterval(() \=> {

var uuid = uuidv4()

ws.send(uuid);

console.log('server send: %s', uuid)

}, 1000)

});

假裝Server有一直在傳輸信息所以使用setInterval 代替 

  

Client的code

  

<body onload\="onload()"\>

  

<h1\>Hello WebSocketsh1>

  

body>

  

<style\>

body {

background-color: lightblue;

overflow: auto;

}

style>

  

<script\>

function onload() {

  

let ws \= new WebSocket('ws://localhost:8080')

ws.onopen \= () \=> {

console.log('open connection')

}

ws.onclose \= () \=> {

console.log('close connection')

}

ws.onmessage \= event \=> {

console.log('client收到server信息')

console.log(event.data)

var msg \= document.createElement('div')

msg.innerHTML \= event.data;

document.querySelector('body').append(msg);

msg.focus();

  

}

  

}

script>

  

執行server.js查看效果

Server console

![](https://1.bp.blogspot.com/-R-ODjpVYAf4/X3FE9dw5jcI/AAAAAAAA6hw/D0kXK3sltOMDihpH9PbaG8F6VnrtuqCSwCNcBGAsYHQ/w640-h465/express-ws-Server%2Bconsole.jpg)

Client page

[![](https://1.bp.blogspot.com/-mk9aUrEm3OY/X3FFD0b23KI/AAAAAAAA6h0/0tbzfr0L3gwWRmJ5f9yZ3XZaIJCQzq8UwCNcBGAsYHQ/w640-h426/express-ws-Client%2Bpage.jpg)](https://1.bp.blogspot.com/-mk9aUrEm3OY/X3FFD0b23KI/AAAAAAAA6h0/0tbzfr0L3gwWRmJ5f9yZ3XZaIJCQzq8UwCNcBGAsYHQ/s806/express-ws-Client%2Bpage.jpg)

Client console

[![](https://1.bp.blogspot.com/-GGujAIpqfuU/X3FFKDbKUsI/AAAAAAAA6h4/iQtjLGU8ukU6_RM6YmtpB5VOVzfoSdmzwCNcBGAsYHQ/w640-h436/express-ws-Client%2Bconsole.jpg)](https://1.bp.blogspot.com/-GGujAIpqfuU/X3FFKDbKUsI/AAAAAAAA6h4/iQtjLGU8ukU6_RM6YmtpB5VOVzfoSdmzwCNcBGAsYHQ/s1108/express-ws-Client%2Bconsole.jpg)

完整的項目在這

https://github.com/cn27529/express-ws

收工

  

參考自

https://letswrite.tw/websocket/

https://medium.com/enjoy-life-enjoy-coding/javaScript-websocket-讓前後端沒有距離

  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
