---
title: 什麼是DOM (Document Object Model)
tags:
  - HTML
  - javascript
excerpt: >-
  <p>通过 JavaScript，您可以重構整个 HTML 文档。您可以添加、移除、改变或重排页 面上的项目。要改变页面的某个东西，JavaScript
  就需要对 HTML 文档中所有元素进行访问的入口。 这个入口，连同对 HTML 元素进行添加、移动、改变或移除的方法和属性，都是通过文档对象模型来获
  得的（DOM）。</p><p>在 1998 年，W3C 发布了第一级的 DOM 规範。这个规範允许访问和操作 HTML
  页面中的每一个单独的元素。</p><p>所有的浏览器都执行了这个标准，因此，DOM 的相容性问题也幾乎难觅踪影了。</p><p>DOM 可被
  JavaScript 用来读取、改变 HTML、XHTML 以及 XML 文 档。</p><br /><h3>DOM
  被分为不同的部分（核心、XML及HTML）和级别（DOM Level 1/2/3）：</h3><br /><dl class="define"><br
  /><dt>Core DOM 定义了一套标准的针对任何结構化文档的对象 </dt><dt><a title="XML DOM 教程"
  href="http://www.w3school.com.cn/xmldom/index.asp">XML DOM</a> 定义了一套标准的针对 XML
  文档的对象 </dt><dt>HTML DOM 定义了一套标准的针对 HTML 文档的对象。<br
  /><strong></strong></dt><dt><strong>HTML
  文档中的每个成分都是一个节点。</strong></dt></dl><h2>节点</h2><br /><p>根據 DOM，HTML
  文档中的每个成分都是一个节点。</p><br /><p>DOM 是这样规定的：</p><ul><li>整个文档是一个文档节点 </li><li>每个
  HTML 标签是一个元素节点 </li><li>包含在 HTML 元素中的文本是文本节点 </li><li>每一个 HTML 属性是一个属性节点
  </li><li>注释属於注释节点<br /></li></ul><br /><h2><span style="color:#ff0000;">Node
  层次</span></h2><br /><p>节点彼此都有等级关系。</p><br /><p>HTML
  文档中的所有节点组成了一个文档树（或节点树）。HTML 文档中的每个元素、
  属性、文本等都代表着树中的一个节点。树起始于文档节点，並由此继续伸出枝条，直到处於这棵树<br />最低级别的所有文本节点为止。</p><br
  /><p>下麵这个图片表示一个文档树（节点树）：</p><br /><img alt="HTML树结構"
  src="http://www.w3school.com.cn/i/ct_htmltree.gif" /><br /><br /><br
  /><strong>一棵节点树中的所有节点彼此都是有关系的。</strong><br /><br /><br /><h2>文档树（节点数）</h2><br
  /><p>请看下麵这个HTML文档：</p><br /><pre><html><br />  <head><br />    <title>DOM
  Tutorial</title><br />  </head><br />  <body><br />    <h1>DOM Lesson
  one</h1><br />    <p>Hello world!</p><br />  </body><br /></html></pre><br
  /><p>上面所有的节点彼此间都存在<em>关系</em>。</p><br
  /><p>除文档节点之外的每个节点都有<em>父节点</em>。举例，<head> 和 <body> 的父节点是 <html> 节点，文本节点
  "Hello<br />world!" 的父节点是 <p> 节点。</p><br /><p>大部分元素节点都有<em>子节点</em>。比方说，<head>
  节点有一个子节点 ：<title> 节点。<title> 节点也有一个子节点：文本节点<br />"DOM Tutorial"。</p><br
  /><p>当节点分享同一个父节点时，它们就是<em>同辈（同级节点）</em>。比方说，<h1> 和 <p>是同辈，因为它们的父节点均是 <body>
  节点。</p><br /><p>节点也可以拥有<em>後代</em>，後代指某个节点的所有子节点，或者这些子节点的子
  节点，以此类推。比方说，所有的文本节点都是 <html>节点的後代，而第一个文本节点是<br /><head> 节点的後代。</p><br
  /><p>节点也可以拥有<em>先辈</em>。先辈是某个节点的父节点，或者父节点的父节点，以此 类推。比方说，所有的文本节点都可把 <html>
  节点作为先辈节点。</p><br /><p><strong><span style="font-size:180%;color:#ff0000;">下麵
  来看幾个简单的例子 我想一下子就明白了!</span></strong></p><br /><strong>通过 DOM，您可访问 HTML
  文档中的每个节点。</strong><br /><br /><br
  /><h2>查找並访问节点</h2><p>你可通过若干種方法来查找您希望操作的元素：</p><ul><li>通过使用 getElementById() 和
  getElementsByTagName() 方法 </li><li>通过使用一个元素节点的 parentNode、firstChild 以及
  lastChild 属性 </li></ul><p><span style="color:#800000;">getElementById() 和
  getElementsByTagName()</span></p><p>getElementById() 和 getElementsByTagName()
  这两種方法，可查找整个 HTML 文档中的任何 HTML 元素。</p><p>这两種方法会忽略文档的结構。假如您希望查找文档中所有的 <p>
  元素，getElementsByTagName() 会把它们全部找到，不管 <p><br
  />元素处于文档中的哪个层次。同时，getElementById()
  方法也会返回正確的元素，不论它被隐藏在文档结構中的什麼位置。</p><p>这两種方法会像您提供任何你所需要的 HTML
  元素，不论它们在文档中所处的位置！</p><p>getElementById() 可通过指定的 ID 来返回元素：</p><br /><h3><span
  style="font-size:130%;color:#800080;">getElementById()
  语法</span></h3><pre>document.getElementById("ID");</pre><pre>注释：getElementById()
  无法工作在 XML 中。在 XML 文档中，您必须通过拥有类型 id 的属性来进行搜索，而此类型必须在<br />XML DTD
  中进行声明。</pre><br /><p>getElementsByTagName() 方法会使用指定的标签名返回所有的元素（作
  为一个节点列表），这些元素是您在使用此方法时所处的元素的後代。</p><br /><p>getElementsByTagName() 可被用於任何的
  HTML 元素：</p><br /><h3><span
  style="font-size:130%;color:#800080;">getElementsByTagName()
  语法</span></h3><pre>document.getElementsByTagName("标签名称");</pre><pre>或者：</pre><pre>document.getElementById('ID').getElementsByTagName("标签名称");</pre><br
  /><h3>實例1</h3><p>下麵这个例子会返回文档中所有 <p>
  元素的一个节点列表：</p><p>document.getElementsByTagName("p");</p><h3>實例2</h3><p>下麵这个例子会返回所有
  <p> 元素的一个节点列表，且这些 <p> 元素必须是 id 为 "maindiv"
  的元素的後代：</p><p>document.getElementById('maindiv').getElementsByTagName("p");</p><br
  /><h3>节点列表（nodeList）</h3><p>当我们使用节点列表时，通常要把此列表保存在一个变量中，就像这样：</p><pre>var
  x=document.getElementsByTagName("p");</pre><p>现在，变量 x 包含着页面中所有 <p>
  元素的一个列表，並且我们可以通过它们的索引 号来访问这些 <p> 元素。</p><p class="note">注释：索引号从 0
  开始。</p><p>您可以通过使用 length 属性来循环遍历节点列表：</p><pre>var
  x=document.getElementsByTagName("p");<br />for (var i=0;i<x.length;i++)<br /> 
  {<br />  // do something with each paragraph<br /> 
  }</pre><p>您也可以通过索引号来访问某个具體的元素。</p><p>要访问第三个 <p> 元素，您可以这麼写：</p><pre>var
  y=x[2];</pre><br /><h2><span
  style="color:#800080;">parentNode、firstChild以及lastChild</span></h2><p>这三个属性
  parentNode、firstChild 以及 lastChild 可遵循文档的结構，在文档中进行“短距離的旅行”。</p><p>请看下麵这个 HTML
  片段：</p><br /><pre><table><br />  <tr><br />    <td>John</td><br />   
  <td>Doe</td><br />    <td>Alaska</td><br />  </tr><br /></table></pre><br
  /><p>在上面的HTML代码中，第一个 <td> 是 <tr> 元素的首个子元素（firstChild），而最後一 个 <td> 是
  <tr>元素的最後一个子元素（lastChild）。</p><p>此外，<tr> 是每个 <td>元 素的父节点（parentNode）。</p><p>对
  firstChild 最普遍的用法是访问某个元素的文本：</p><pre>var x=[a paragraph];<br />var
  text=x.firstChild.nodeValue;</pre><pre>parentNode 属性常被用来改变文档的结構。假设您希望从文档中删除带有
  id 为 "maindiv" 的节点：</pre><pre>var x=document.getElementById("maindiv");<br
  />x.parentNode.removeChild(x);</pre><p>首先，您需要找到带有指定 id 的节点，然後移至其父节点並执行
  removeChild() 方法。</p><br />Link from : <a
  href="http://hi.baidu.com/haomao/blog/item/4b8639c753bb3ad8d10060b0.html">http://hi.baidu.com/haomao/blog/item/4b8639c753bb3ad8d10060b0.html</a><div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2009-02-14 22:50:00
---

通过 JavaScript，您可以重構整个 HTML 文档。您可以添加、移除、改变或重排页 面上的项目。要改变页面的某个东西，JavaScript 就需要对 HTML 文档中所有元素进行访问的入口。 这个入口，连同对 HTML 元素进行添加、移动、改变或移除的方法和属性，都是通过文档对象模型来获 得的（DOM）。

在 1998 年，W3C 发布了第一级的 DOM 规範。这个规範允许访问和操作 HTML 页面中的每一个单独的元素。

所有的浏览器都执行了这个标准，因此，DOM 的相容性问题也幾乎难觅踪影了。

DOM 可被 JavaScript 用来读取、改变 HTML、XHTML 以及 XML 文 档。

  

### DOM 被分为不同的部分（核心、XML及HTML）和级别（DOM Level 1/2/3）：

  

  

Core DOM 定义了一套标准的针对任何结構化文档的对象

[XML DOM](http://www.w3school.com.cn/xmldom/index.asp "XML DOM 教程") 定义了一套标准的针对 XML 文档的对象

HTML DOM 定义了一套标准的针对 HTML 文档的对象。  

**HTML 文档中的每个成分都是一个节点。**

## 节点

  

根據 DOM，HTML 文档中的每个成分都是一个节点。

  

DOM 是这样规定的：

*   整个文档是一个文档节点
*   每个 HTML 标签是一个元素节点
*   包含在 HTML 元素中的文本是文本节点
*   每一个 HTML 属性是一个属性节点
*   注释属於注释节点  
    

  

## Node 层次

  

节点彼此都有等级关系。

  

HTML 文档中的所有节点组成了一个文档树（或节点树）。HTML 文档中的每个元素、 属性、文本等都代表着树中的一个节点。树起始于文档节点，並由此继续伸出枝条，直到处於这棵树  
最低级别的所有文本节点为止。

  

下麵这个图片表示一个文档树（节点树）：

  
![HTML树结構](http://www.w3school.com.cn/i/ct_htmltree.gif)  
  
  
**一棵节点树中的所有节点彼此都是有关系的。**  
  
  

## 文档树（节点数）

  

请看下麵这个HTML文档：

  

  
    
    DOM Tutorial  
    
    
    

# DOM Lesson one

  
    

Hello world!

  
    

  

上面所有的节点彼此间都存在_关系_。

  

除文档节点之外的每个节点都有_父节点_。举例， 和 的父节点是 节点，文本节点 "Hello  
world!" 的父节点是

节点。

  

大部分元素节点都有_子节点_。比方说， 节点有一个子节点 ： 节点。<title> 节点也有一个子节点：文本节点<br />"DOM Tutorial"。</p><br /><p>当节点分享同一个父节点时，它们就是<em>同辈（同级节点）</em>。比方说，<h1> 和 <p>是同辈，因为它们的父节点均是 <body> 节点。</p><br /><p>节点也可以拥有<em>後代</em>，後代指某个节点的所有子节点，或者这些子节点的子 节点，以此类推。比方说，所有的文本节点都是 <html>节点的後代，而第一个文本节点是<br /><head> 节点的後代。</p><br /><p>节点也可以拥有<em>先辈</em>。先辈是某个节点的父节点，或者父节点的父节点，以此 类推。比方说，所有的文本节点都可把 <html> 节点作为先辈节点。</p><br /><p><strong><span style="font-size:180%;color:#ff0000;">下麵 来看幾个简单的例子 我想一下子就明白了!</span></strong></p><br /><strong>通过 DOM，您可访问 HTML 文档中的每个节点。</strong><br /><br /><br /><h2>查找並访问节点</h2><p>你可通过若干種方法来查找您希望操作的元素：</p><ul><li>通过使用 getElementById() 和 getElementsByTagName() 方法 </li><li>通过使用一个元素节点的 parentNode、firstChild 以及 lastChild 属性 </li></ul><p><span style="color:#800000;">getElementById() 和 getElementsByTagName()</span></p><p>getElementById() 和 getElementsByTagName() 这两種方法，可查找整个 HTML 文档中的任何 HTML 元素。</p><p>这两種方法会忽略文档的结構。假如您希望查找文档中所有的 <p> 元素，getElementsByTagName() 会把它们全部找到，不管 <p><br />元素处于文档中的哪个层次。同时，getElementById() 方法也会返回正確的元素，不论它被隐藏在文档结構中的什麼位置。</p><p>这两種方法会像您提供任何你所需要的 HTML 元素，不论它们在文档中所处的位置！</p><p>getElementById() 可通过指定的 ID 来返回元素：</p><br /><h3><span style="font-size:130%;color:#800080;">getElementById() 语法</span></h3><pre>document.getElementById("ID");</pre><pre>注释：getElementById() 无法工作在 XML 中。在 XML 文档中，您必须通过拥有类型 id 的属性来进行搜索，而此类型必须在<br />XML DTD 中进行声明。</pre><br /><p>getElementsByTagName() 方法会使用指定的标签名返回所有的元素（作 为一个节点列表），这些元素是您在使用此方法时所处的元素的後代。</p><br /><p>getElementsByTagName() 可被用於任何的 HTML 元素：</p><br /><h3><span style="font-size:130%;color:#800080;">getElementsByTagName() 语法</span></h3><pre>document.getElementsByTagName("标签名称");</pre><pre>或者：</pre><pre>document.getElementById('ID').getElementsByTagName("标签名称");</pre><br /><h3>實例1</h3><p>下麵这个例子会返回文档中所有 <p> 元素的一个节点列表：</p><p>document.getElementsByTagName("p");</p><h3>實例2</h3><p>下麵这个例子会返回所有 <p> 元素的一个节点列表，且这些 <p> 元素必须是 id 为 "maindiv" 的元素的後代：</p><p>document.getElementById('maindiv').getElementsByTagName("p");</p><br /><h3>节点列表（nodeList）</h3><p>当我们使用节点列表时，通常要把此列表保存在一个变量中，就像这样：</p><pre>var x=document.getElementsByTagName("p");</pre><p>现在，变量 x 包含着页面中所有 <p> 元素的一个列表，並且我们可以通过它们的索引 号来访问这些 <p> 元素。</p><p class="note">注释：索引号从 0 开始。</p><p>您可以通过使用 length 属性来循环遍历节点列表：</p><pre>var x=document.getElementsByTagName("p");<br />for (var i=0;i<x.length;i++)<br /> {<br /> // do something with each paragraph<br /> }</pre><p>您也可以通过索引号来访问某个具體的元素。</p><p>要访问第三个 <p> 元素，您可以这麼写：</p><pre>var y=x\[2\];</pre><br /><h2><span style="color:#800080;">parentNode、firstChild以及lastChild</span></h2><p>这三个属性 parentNode、firstChild 以及 lastChild 可遵循文档的结構，在文档中进行“短距離的旅行”。</p><p>请看下麵这个 HTML 片段：</p><br /><pre><table><br /> <tr><br /> <td>John</td><br /> <td>Doe</td><br /> <td>Alaska</td><br /> </tr><br /></table></pre><br /><p>在上面的HTML代码中，第一个 <td> 是 <tr> 元素的首个子元素（firstChild），而最後一 个 <td> 是 <tr>元素的最後一个子元素（lastChild）。</p><p>此外，<tr> 是每个 <td>元 素的父节点（parentNode）。</p><p>对 firstChild 最普遍的用法是访问某个元素的文本：</p><pre>var x=\[a paragraph\];<br />var text=x.firstChild.nodeValue;</pre><pre>parentNode 属性常被用来改变文档的结構。假设您希望从文档中删除带有 id 为 "maindiv" 的节点：</pre><pre>var x=document.getElementById("maindiv");<br />x.parentNode.removeChild(x);</pre><p>首先，您需要找到带有指定 id 的节点，然後移至其父节点並执行 removeChild() 方法。</p><br />Link from : <a href="http://hi.baidu.com/haomao/blog/item/4b8639c753bb3ad8d10060b0.html">http://hi.baidu.com/haomao/blog/item/4b8639c753bb3ad8d10060b0.html</a><div class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div></x-turndown>
<!-- more -->
