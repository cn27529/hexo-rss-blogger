---
title: '你所意想不到的 Javascript , 打開 javascript 黑盒子'
tags:
  - javascript
excerpt: >-
  讓你明瞭看似簡單的 JavaScript，其實其核心語法功能強大。我將在這篇文章中說明 JavaScript
  物件導向的特性，並說明如何透過這些特性，達到傳統程式語言 (C++/Java) 所難以完成的功能。<br /><br /><b>Everything is
  Object in JavaScript</b><br />開宗明義：在 JavaScript
  中任何東西都是物件：變數是物件、函式是物件，常數也是物件。證明方式：<br /><br /><pre class="brush: js;">alert
  (typeof('abc'));<br />alert (typeof(123));<br />var ary = [123, "abc"];<br
  />alert (typeof(ary)); <br /><br /></pre><br />上面的 typeof 會顯示物件資料型態。得到結果分別是
  string, number, object。<br /><br /><br /><b>Create Objects in
  JavaScript</b><br />既然任何東西都是物件，那建立物件的方法就多了。直接看個例子：<br /><br /><pre
  class="brush: js;">var main = new Object; // 建立新物件 <br />main.x = 123; //
  設定物件成員變數(屬性)之一 <br />main["y"] = "XYZ"; // 設定物件成員變數(屬性)之二<br
  />alert(main["x"]); // 取得物件屬性並輸出<br />alert(main.y); <br /><br /></pre><br
  />可以看到在 JavaScript 中，main.x 與 main["x"]
  這兩種語法是通用的。其實在其他語言中，這兩種表示法的語意並不相同。稍後再作說明。<br /><br /><br /><b>List All Members
  in an Object</b><br />這是 JavaScript 的必殺技，使用 JavaScript
  的人務必要學會這個技巧。底下函式可以傳回一個物件的所有成員的字串表達式，包括物件中的屬性及方法。在物件導向程式設計中，這種技術叫
  reflection。<br /><br /><pre class="brush: js;">function listMember(main) { <br
  />var s = "";<br />for( key in main ) // 使用 in 運算子列舉所有成員 <br />s += key + ": "
  + main[key] + "n"; <br />return s;<br />} <br /><br /></pre><br />範例碼中的 key
  會對應到物件中的屬性名稱，如 "x" 或 "y"，而 main[key] 則對應到屬性值。<br /><br
  />說這項技巧是必殺技的原因是，你可以透過這項技巧，將物件封裝的黑箱打開來，看看裡面藏有什麼東西。我常用這項技巧來看看 <br /><br />IE 與
  Mozilla 的 Dom 物件模型有何不同。試試看下面呼叫範例，就可以知道這項技巧的強大了：<br /><br /><pre class="brush:
  js;">var ary = [123, "abc"];<br />alert (listMember(ary));<br />alert
  (listMember(document.location)); <br /><br /></pre><br /><b>Construct Object
  with Initial Value</b><br />在建立物件的同時指定物件初始值，必須先透過 function
  建立一個「原型物件」(或稱為constructor)，再透過 new
  運算子建立新物件。例如以下程式碼會建立一個二維陣列的原型，再產生一個新的二維物件。<br /><br /><pre class="brush:
  js;">function Array2DVar(x,y) { // 定義二維陣列原型 <br />this.length = x; <br
  />this.x = x; // x 維度長度<br />this.y = y; // y 維度長度 <br />for(var i = 0; i <
  this.length; i++) // 初始各元素值為 null <br />this[i] = new Array(y); // this 代表物件本身
  } <br />var a2dv = new Array2DVar(10, 10); // 建立新的 10*10 的二維陣列 <br
  />a2dv[1][3] = "ABC"; // 設定二維陣列元素值 <br />a2dv[2][6] = "XYZ"; <br />a2dv[9][9]
  = 1000; <br />alert( a2dv[1][3]); // 取得二維陣列元素值，並顯示出來 <br />alert( a2dv[2][6]);
  <br />alert( a2dv[9][9]); <br /><br /></pre><br /><br /><b>Initial Array
  Object</b> 在 JavaScript 中陣列也是物件 (其實近代多數語言中陣列也都是物件，只有像 C 或 Assembly
  這類古老的語言才不把陣列看成物件)，因此也可以用 constructor 的語法來建構。當然 JavaScript 還提供了 []
  語法，以更方便建構陣列，範例如下：<br /><pre class="brush: js;">var a = new Array("abc", "xyz",
  1000); <br />// constructor 語法，陣列標準語法 <br /><br /></pre><br
  />陣列的元素可以是簡單的資料、其他物件，或是函數。舉個例子來在陣列裡面放函式：<br /><br /><pre class="brush: js;">//
  使用函式作為陣列元素<br />b = [ <br />function () { alert("這個好玩!") }, <br />function ()
  { alert("再按一次離開!") }, <br />function () { alert("再來一次!") }, <br />function ()
  { alert("最後一次!") } <br />]; <br /><br />for (var i = 0; i < b.length ; i++)
  b[i](); <br /><br /></pre><br />最後一個 for 迴圈是個有趣的應用。由於 b
  陣列中現在存放的所有元素都是函式，因此我們可以對 b 的每個元素進行呼叫。 <br /><br /><br /><b>Object as
  Association Array</b><br />關連陣列 (Assocation Array) 又稱作 Map 或
  Dictionary，是一種物件容器，其中可以放置許多的 key-value pair，以存取子物件。<br />在JavaScript
  中，物件本身就可以作為關連陣列。以關連陣列的方式初始化物件的範例如下：<br /><br /><pre class="brush: js;">// 顯示
  Athens<br />var obj1 = {"a" : "Athens" , "b" : "Belgrade", "c" : "Cairo"};<br
  />alert(obj1["a"]);<br /><br />// 使用函式作為物件屬性<br />var obj2 = { name: "Edward",
  showName: function() { alert(this.name); } }<br />// 顯示 Edward obj2.age = 23;
  屬性可以動態加入<br />obj2.showName(); <br /><br /></pre><br />其中 obj1 儲存了三個子元素，其鍵
  (key) 為 "a", "b" 與 "c"，而值 (value) "Athens", "Belgrade" 與 "Cairo"。 <br />obj2 中
  showName 鍵所對應的值為 function，因此 obj2.showName() 即為函式呼叫。<br /><br /><br
  /><b>Object as Return Value</b><br />雖然 Javascript
  的函式只能傳回一個變數，但您卻可以將傳回值設定為物件，達到傳回 1個以上變數值的效果<br /><br /><pre class="brush:
  js;">function a () { return [32, 17]; } <br />b = a();<br />alert( b ); // 或
  alert(a()); <br /><br />function pixel () { return {"x": 32, "y":17}; } <br
  />point = pixel ();<br />alert (point.x + "n" + point.y); // 或 alert
  (pixel().x + "n" + pixel().y); <br /><br /></pre><br /><b>Delegation Function
  Object</b><br />函式也是物件，只是其中包含的是程式的邏輯。這項特性可拿來作為委任式的程式設計，亦即使用委任函式當作另一函式的參數：<br
  /><br /><pre class="brush: js;">function doloop(begin, end, func) { <br />  //
  這個函式是個 iterator<br />  for (var i = begin; i < end; i++) { <br />  func(i);
  <br />  } <br />} <br /><br />function func1(i) { <br />  // 印出 ** n ** <br
  />  document.writeln("** " + i + " ** "); <br />} <br /><br />doloop(1, 10,
  func1); // 印出 1o 行 ** n ** <br /><br />doloop(20, 29, function(i) {<br /> 
  document.writeln("## " + i + " ## "); <br /> }<br />);<br /><br /></pre><br
  /><b>Properties + Behaviors</b><br />古有明訓：程式 = 資料結構 +
  演算法。而物件是建構程式的基本單位，自然的具有相同的性質。<br />物件除了有屬性 (property)，也可具有操作
  (behavior)，也就是函式。<br />假如我們要使用一維陣列來模擬二維陣列，那麼就無法使用 ary[x][y]
  這種表示法來設定或取得陣列成員。<br />不過我可以定義一個 set 方法來設定成員變數，而以 get方法來取得成員變數值。原型函式定義如下：<br
  /><br /><pre class="brush: js;">function Array2D(x,y)<br />{ <br /> //
  以一維陣列模擬二維陣列的原型物件<br /> this.length = x * y; // 陣列總長<br /> this.x = x; // x
  維度長度<br /> this.y = y; // y 維度長度<br /> for(var i = 0; i < this.length; i++) //
  初始各元素值為 null <br /> this[i] = null; <br /> this.get = function(x,y)<br /> {
  <br />  // 成員函式：取得陣列第 [x,y]個元素值 <br />  return this[x*this.x + y]; <br /> }
  <br /> this.set = function(x,y,value)<br /> { <br />  // 成員函式：設定陣列第 [x,y] 個元素值
  <br />  this[x*this.x + y] = value; <br /> } <br />} <br /><br />//我們接著來使用它：
  <br />var a2d = new Array2D(10, 10); // 建立新的「二維」陣列 <br />a2d.set(1, 3, "ABC");
  // 設定「二維」陣列元素值 <br />a2d.set(2, 6, "XYZ"); <br />a2d.set(9, 9, 1000); <br
  />alert( a2d.get(1,3) ); // 取得「二維」陣列元素值，並顯示出來 <br />alert( a2d.get(2,6) ); <br
  />alert( a2d.get(9,9) ); <br /><br /></pre><br /><b>Member Function Outside of
  Constructor</b><br />我們也可以將物件成員函式寫於原型物件之外。<br />以下的Array2D物件與上一個範例中的
  Array2物件有相同的作用，只不過這次是寫在原型物件之外。<br /><br /><pre class="brush: js;">function
  Array2D(x,y)<br />{ <br /> // 以一維陣列模擬二維陣列的原型物件 <br /> this.length = x * y; //
  陣列總長<br /> this.x = x; // x 維度長度<br /> this.y = y; // y 維度長度<br /> for(var i =
  0; i < this.length; i++) // 初始各元素值為 null <br /> this[i] = null; <br />
  this.get = Array2DGet; <br /> // 用這種方式把成員函式掛進來 <br /> this.set = Array2DSet;
  <br />} <br /><br />function Array2DGet(x,y)<br />{ <br /> // 成員函式：取得陣列第 [x,y]
  個元素值 <br /> return this[x*this.x + y]; <br />} <br /><br />function
  Array2DSet(x,y,value)<br />{ <br /> // 成員函式：設定陣列第 [x,y] 個元素值 <br />
  this[x*this.x + y] = value; <br />} <br /><br /></pre><br /><b>Dynamic Object
  Function</b><br />這裡說明如何為一個已定義物件，動態的加上其他操作的方法。<br /><br
  />如果一物件已定義完成，而您也使用它來建立了新的物件，這時候您想為原型物件增加新的操作 (而不修改原型物件的原始碼)，<br
  />讓所有該物件的複本都能使用該操作，該如何達成呢？<br /><br />方法是使用物件的 prototype 屬性。以下這個例子，為 Array 這類
  Object 在執行期加入一個 max 方法，<br />以取得陣列元素之最大值 (修改自微軟 jscript.chm之範例)：<br /><br
  /><pre class="brush: js;">function array_max()<br />{ <br />  // 定義求取 Array
  最大值之函式<br />  var i, max = this[0];<br />  for (i = 1; i < this.length; i++) 
  {    if (max < this[i]) max = this[i];   } <br />  return max; <br />} <br
  /><br />Array.prototype.max = array_max; <br />// 在 Array 原型中加入 max 函式
  上面的程式碼，首先建立一個 array_max 方法，以求取陣列之最大元素。<br />// 接著將這個方法設定給 Array 原型物件。 <br
  /><br />var x = new Array(1, 2, 3, 4, 5, 6); <br />// 透過 Array 建構子建立一陣列 <br
  /><br />//想求取 x 中某一元素之最大值 <br /><br />var y = x.max( ); // 取得 x 之最大元素 <br
  /><br /></pre><br /><b>Dynamic Mix in</b><br />假如物件 dynamic 有 mathod1, method2
  兩個函式；而另一物件 main 有 methodA 及 methodB 兩個函式。<br />現在我想把 dynamic 的所有特性 (feature)
  匯入到 main 中，我們可以在 main 中加上一個 imports 函式：<br /><br /><pre class="brush:
  js;">function main()<br />{  // main 之建構子 <br /> // ...<br /> this.imports =
  function (object) <br /> {<br />  if( typeof object =="object")<br />  for(
  value in object ) this[value] = object[value];<br /> }<br /> // ...<br />}<br
  /><br />var obj = new main();<br />main.imports(new dynamic()); // 匯入 dynamic
  物件之所有功能 <br /><br /></pre><br />這個 imports 函式可以動態的為 main 加上另一物件的所有操作。<br />這種
  Mix in 的功能可是 C++/Java 的 static type 語言所望塵莫及的。<br /><br /><br />原文自:
  http://crazyrushstar.blogspot.com/2008/08/java-script.html<div
  class="blogger-post-footer">Copyright © Bruce Huang All rights reserved.</div>
date: 2010-06-07 00:03:00
---

讓你明瞭看似簡單的 JavaScript，其實其核心語法功能強大。我將在這篇文章中說明 JavaScript 物件導向的特性，並說明如何透過這些特性，達到傳統程式語言 (C++/Java) 所難以完成的功能。  
  
**Everything is Object in JavaScript**  
開宗明義：在 JavaScript 中任何東西都是物件：變數是物件、函式是物件，常數也是物件。證明方式：  
  

alert (typeof('abc'));  
alert (typeof(123));  
var ary = \[123, "abc"\];  
alert (typeof(ary));   
  

  
上面的 typeof 會顯示物件資料型態。得到結果分別是 string, number, object。  
  
  
**Create Objects in JavaScript**  
既然任何東西都是物件，那建立物件的方法就多了。直接看個例子：  
  

var main = new Object; // 建立新物件   
main.x = 123; // 設定物件成員變數(屬性)之一   
main\["y"\] = "XYZ"; // 設定物件成員變數(屬性)之二  
alert(main\["x"\]); // 取得物件屬性並輸出  
alert(main.y);   
  

  
可以看到在 JavaScript 中，main.x 與 main\["x"\] 這兩種語法是通用的。其實在其他語言中，這兩種表示法的語意並不相同。稍後再作說明。  
  
  
**List All Members in an Object**  
這是 JavaScript 的必殺技，使用 JavaScript 的人務必要學會這個技巧。底下函式可以傳回一個物件的所有成員的字串表達式，包括物件中的屬性及方法。在物件導向程式設計中，這種技術叫 reflection。  
  

function listMember(main) {   
var s = "";  
for( key in main ) // 使用 in 運算子列舉所有成員   
s += key + ": " + main\[key\] + "n";   
return s;  
}   
  

  
範例碼中的 key 會對應到物件中的屬性名稱，如 "x" 或 "y"，而 main\[key\] 則對應到屬性值。  
  
說這項技巧是必殺技的原因是，你可以透過這項技巧，將物件封裝的黑箱打開來，看看裡面藏有什麼東西。我常用這項技巧來看看  
  
IE 與 Mozilla 的 Dom 物件模型有何不同。試試看下面呼叫範例，就可以知道這項技巧的強大了：  
  

var ary = \[123, "abc"\];  
alert (listMember(ary));  
alert (listMember(document.location));   
  

  
**Construct Object with Initial Value**  
在建立物件的同時指定物件初始值，必須先透過 function 建立一個「原型物件」(或稱為constructor)，再透過 new 運算子建立新物件。例如以下程式碼會建立一個二維陣列的原型，再產生一個新的二維物件。  
  

function Array2DVar(x,y) { // 定義二維陣列原型   
this.length = x;   
this.x = x; // x 維度長度  
this.y = y; // y 維度長度   
for(var i = 0; i < this.length; i++) // 初始各元素值為 null   
this\[i\] = new Array(y); // this 代表物件本身 }   
var a2dv = new Array2DVar(10, 10); // 建立新的 10\*10 的二維陣列   
a2dv\[1\]\[3\] = "ABC"; // 設定二維陣列元素值   
a2dv\[2\]\[6\] = "XYZ";   
a2dv\[9\]\[9\] = 1000;   
alert( a2dv\[1\]\[3\]); // 取得二維陣列元素值，並顯示出來   
alert( a2dv\[2\]\[6\]);   
alert( a2dv\[9\]\[9\]);   
  

  
  
**Initial Array Object** 在 JavaScript 中陣列也是物件 (其實近代多數語言中陣列也都是物件，只有像 C 或 Assembly 這類古老的語言才不把陣列看成物件)，因此也可以用 constructor 的語法來建構。當然 JavaScript 還提供了 \[\] 語法，以更方便建構陣列，範例如下：  

var a = new Array("abc", "xyz", 1000);   
// constructor 語法，陣列標準語法   
  

  
陣列的元素可以是簡單的資料、其他物件，或是函數。舉個例子來在陣列裡面放函式：  
  

// 使用函式作為陣列元素  
b = \[   
function () { alert("這個好玩!") },   
function () { alert("再按一次離開!") },   
function () { alert("再來一次!") },   
function () { alert("最後一次!") }   
\];   
  
for (var i = 0; i < b.length ; i++) b\[i\]();   
  

  
最後一個 for 迴圈是個有趣的應用。由於 b 陣列中現在存放的所有元素都是函式，因此我們可以對 b 的每個元素進行呼叫。  
  
  
**Object as Association Array**  
關連陣列 (Assocation Array) 又稱作 Map 或 Dictionary，是一種物件容器，其中可以放置許多的 key-value pair，以存取子物件。  
在JavaScript 中，物件本身就可以作為關連陣列。以關連陣列的方式初始化物件的範例如下：  
  

// 顯示 Athens  
var obj1 = {"a" : "Athens" , "b" : "Belgrade", "c" : "Cairo"};  
alert(obj1\["a"\]);  
  
// 使用函式作為物件屬性  
var obj2 = { name: "Edward", showName: function() { alert(this.name); } }  
// 顯示 Edward obj2.age = 23; 屬性可以動態加入  
obj2.showName();   
  

  
其中 obj1 儲存了三個子元素，其鍵 (key) 為 "a", "b" 與 "c"，而值 (value) "Athens", "Belgrade" 與 "Cairo"。  
obj2 中 showName 鍵所對應的值為 function，因此 obj2.showName() 即為函式呼叫。  
  
  
**Object as Return Value**  
雖然 Javascript 的函式只能傳回一個變數，但您卻可以將傳回值設定為物件，達到傳回 1個以上變數值的效果  
  

function a () { return \[32, 17\]; }   
b = a();  
alert( b ); // 或 alert(a());   
  
function pixel () { return {"x": 32, "y":17}; }   
point = pixel ();  
alert (point.x + "n" + point.y); // 或 alert (pixel().x + "n" + pixel().y);   
  

  
**Delegation Function Object**  
函式也是物件，只是其中包含的是程式的邏輯。這項特性可拿來作為委任式的程式設計，亦即使用委任函式當作另一函式的參數：  
  

function doloop(begin, end, func) {   
  // 這個函式是個 iterator  
  for (var i = begin; i < end; i++) {   
  func(i);   
  }   
}   
  
function func1(i) {   
  // 印出 \*\* n \*\*   
  document.writeln("\*\* " + i + " \*\* ");   
}   
  
doloop(1, 10, func1); // 印出 1o 行 \*\* n \*\*   
  
doloop(20, 29, function(i) {  
  document.writeln("## " + i + " ## ");   
 }  
);  
  

  
**Properties + Behaviors**  
古有明訓：程式 = 資料結構 + 演算法。而物件是建構程式的基本單位，自然的具有相同的性質。  
物件除了有屬性 (property)，也可具有操作 (behavior)，也就是函式。  
假如我們要使用一維陣列來模擬二維陣列，那麼就無法使用 ary\[x\]\[y\] 這種表示法來設定或取得陣列成員。  
不過我可以定義一個 set 方法來設定成員變數，而以 get方法來取得成員變數值。原型函式定義如下：  
  

function Array2D(x,y)  
{   
 // 以一維陣列模擬二維陣列的原型物件  
 this.length = x \* y; // 陣列總長  
 this.x = x; // x 維度長度  
 this.y = y; // y 維度長度  
 for(var i = 0; i < this.length; i++) // 初始各元素值為 null   
 this\[i\] = null;   
 this.get = function(x,y)  
 {   
  // 成員函式：取得陣列第 \[x,y\]個元素值   
  return this\[x\*this.x + y\];   
 }   
 this.set = function(x,y,value)  
 {   
  // 成員函式：設定陣列第 \[x,y\] 個元素值   
  this\[x\*this.x + y\] = value;   
 }   
}   
  
//我們接著來使用它：   
var a2d = new Array2D(10, 10); // 建立新的「二維」陣列   
a2d.set(1, 3, "ABC"); // 設定「二維」陣列元素值   
a2d.set(2, 6, "XYZ");   
a2d.set(9, 9, 1000);   
alert( a2d.get(1,3) ); // 取得「二維」陣列元素值，並顯示出來   
alert( a2d.get(2,6) );   
alert( a2d.get(9,9) );   
  

  
**Member Function Outside of Constructor**  
我們也可以將物件成員函式寫於原型物件之外。  
以下的Array2D物件與上一個範例中的 Array2物件有相同的作用，只不過這次是寫在原型物件之外。  
  

function Array2D(x,y)  
{   
 // 以一維陣列模擬二維陣列的原型物件   
 this.length = x \* y; // 陣列總長  
 this.x = x; // x 維度長度  
 this.y = y; // y 維度長度  
 for(var i = 0; i < this.length; i++) // 初始各元素值為 null   
 this\[i\] = null;   
 this.get = Array2DGet;   
 // 用這種方式把成員函式掛進來   
 this.set = Array2DSet;   
}   
  
function Array2DGet(x,y)  
{   
 // 成員函式：取得陣列第 \[x,y\] 個元素值   
 return this\[x\*this.x + y\];   
}   
  
function Array2DSet(x,y,value)  
{   
 // 成員函式：設定陣列第 \[x,y\] 個元素值   
 this\[x\*this.x + y\] = value;   
}   
  

  
**Dynamic Object Function**  
這裡說明如何為一個已定義物件，動態的加上其他操作的方法。  
  
如果一物件已定義完成，而您也使用它來建立了新的物件，這時候您想為原型物件增加新的操作 (而不修改原型物件的原始碼)，  
讓所有該物件的複本都能使用該操作，該如何達成呢？  
  
方法是使用物件的 prototype 屬性。以下這個例子，為 Array 這類 Object 在執行期加入一個 max 方法，  
以取得陣列元素之最大值 (修改自微軟 jscript.chm之範例)：  
  

function array\_max()  
{   
  // 定義求取 Array 最大值之函式  
  var i, max = this\[0\];  
  for (i = 1; i < this.length; i++)  {    if (max < this\[i\]) max = this\[i\];   }   
  return max;   
}   
  
Array.prototype.max = array\_max;   
// 在 Array 原型中加入 max 函式 上面的程式碼，首先建立一個 array\_max 方法，以求取陣列之最大元素。  
// 接著將這個方法設定給 Array 原型物件。   
  
var x = new Array(1, 2, 3, 4, 5, 6);   
// 透過 Array 建構子建立一陣列   
  
//想求取 x 中某一元素之最大值   
  
var y = x.max( ); // 取得 x 之最大元素   
  

  
**Dynamic Mix in**  
假如物件 dynamic 有 mathod1, method2 兩個函式；而另一物件 main 有 methodA 及 methodB 兩個函式。  
現在我想把 dynamic 的所有特性 (feature) 匯入到 main 中，我們可以在 main 中加上一個 imports 函式：  
  

function main()  
{  // main 之建構子   
 // ...  
 this.imports = function (object)   
 {  
  if( typeof object =="object")  
  for( value in object ) this\[value\] = object\[value\];  
 }  
 // ...  
}  
  
var obj = new main();  
main.imports(new dynamic()); // 匯入 dynamic 物件之所有功能   
  

  
這個 imports 函式可以動態的為 main 加上另一物件的所有操作。  
這種 Mix in 的功能可是 C++/Java 的 static type 語言所望塵莫及的。  
  
  
原文自: http://crazyrushstar.blogspot.com/2008/08/java-script.html

Copyright © Bruce Huang All rights reserved.
<!-- more -->
