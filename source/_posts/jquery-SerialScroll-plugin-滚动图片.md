---
title: jquery.SerialScroll plugin 滚动图片
tags: []
excerpt: >-
  Demo : <a
  href="http://demos.flesler.com/jquery/serialScroll/">http://demos.flesler.com/jquery/serialScroll/</a><br
  /><br />Example code here :<br /><br /><div class="postbody"><p><%@ Page
  Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
  Inherits="ScrollJquery._Default" %> <p><!DOCTYPE html PUBLIC "-//W3C//DTD
  XHTML 1.0 Transitional//EN" "<a
  href="http://www.blogger.com/">http://www.blogger.com/</a>><br /><html
  xmlns="<a href="http://www.blogger.com/">http://www.blogger.com/</a>><br
  /><head runat="server"><br /><title>Jquery Scroll</title> <p><script
  type='text/javascript' src='jquery-1.2.6.min.js'></script> <p><script
  type="text/javascript" src="jquery.scrollTo-min.js"></script> <p><script
  type="text/javascript" src="jquery.serialScroll-min.js"></script> <p><script
  type="text/javascript"><br />jQuery.easing.easeOutQuart = function (x, t, b,
  c, d) {<br />return -c * ((t=t/d-1)*t*t*t - 1) + b;<br />};<br
  />jQuery(function(){<br />$('#slideshow').serialScroll({<br />items:'li',<br
  />prev:'#screen2 a.prev',<br />next:'#screen2 a.next',<br />start:0, //as we
  are centering it, start at the 2nd<br />duration:2000, //auto timer , changed
  the image it to next image<br />force:true,<br />interval:1,<br />cycle:true,
  //don't pull back once you reach the end<br />jump:true,<br />interval:5000<br
  />});<br />}<br />);<br /></script> <p><style type="text/css"><br
  />#screen2<br />{<br />position: relative;<br />width: 300px;<br />margin:
  20px;<br />}<br />#screen2 #buttons<br />{<br />border: 1px solid #777;<br
  />margin-bottom: 5px;<br />width: 300px;<br />}<br />#screen2 #buttons a<br
  />{<br />margin: 10px 10px;<br />color: #69C;<br />}<br />#screen2 .prev<br
  />{<br />float: left;<br />}<br />#screen2 .next<br />{<br />float: right;<br
  />}<br />#slideshow<br />{<br />overflow: hidden;<br />width: 300px;<br
  />border: 1px solid #777;<br />}<br />#slideshow ul<br />{<br />width:
  900px;<br />padding-left: 0px;<br />margin: 0px;<br />}<br />#slideshow li<br
  />{<br />float: left;<br />cursor: pointer;<br />}<br /></style><br
  /></head><br /><body><br /><form id="form1" runat="server"><br /><div
  id="screen2"><br /><div id="buttons"><br /><a class="prev"
  href="#">Previous</a> <a class="next" href="#">Next</a><br /></div><br /><div
  id="slideshow"><br /><ul><br /><li><br /><img width="300" height="500"
  src="abstract_colors_Galeor.jpg" /><br /></li><br /><li><br /><img width="300"
  height="500" src="Palawan Island Philippines.jpg" /><br /></li><br /><li><br
  /><img width="300" height="500" src="Peaceful Getaway Maldives.jpg" /><br
  /></li><br /></ul><br /></div><br /></div><br /></form><br /></body><br
  /></html></p></div><div class="blogger-post-footer">Copyright © Bruce Huang
  All rights reserved.</div>
date: 2009-02-10 14:54:00
---

Demo : [http://demos.flesler.com/jquery/serialScroll/](http://demos.flesler.com/jquery/serialScroll/)  
  
Example code here :  
  

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ScrollJquery.\_Default" %>

http://www.blogger.com/>  
http://www.blogger.com/>  
  
Jquery Scroll

<br />jQuery.easing.easeOutQuart = function (x, t, b, c, d) {<br />return -c \* ((t=t/d-1)\*t\*t\*t - 1) + b;<br />};<br />jQuery(function(){<br />$('#slideshow').serialScroll({<br />items:'li',<br />prev:'#screen2 a.prev',<br />next:'#screen2 a.next',<br />start:0, //as we are centering it, start at the 2nd<br />duration:2000, //auto timer , changed the image it to next image<br />force:true,<br />interval:1,<br />cycle:true, //don't pull back once you reach the end<br />jump:true,<br />interval:5000<br />});<br />}<br />);<br />

<br />#screen2<br />{<br />position: relative;<br />width: 300px;<br />margin: 20px;<br />}<br />#screen2 #buttons<br />{<br />border: 1px solid #777;<br />margin-bottom: 5px;<br />width: 300px;<br />}<br />#screen2 #buttons a<br />{<br />margin: 10px 10px;<br />color: #69C;<br />}<br />#screen2 .prev<br />{<br />float: left;<br />}<br />#screen2 .next<br />{<br />float: right;<br />}<br />#slideshow<br />{<br />overflow: hidden;<br />width: 300px;<br />border: 1px solid #777;<br />}<br />#slideshow ul<br />{<br />width: 900px;<br />padding-left: 0px;<br />margin: 0px;<br />}<br />#slideshow li<br />{<br />float: left;<br />cursor: pointer;<br />}<br />  
  
  

  

  

  
[Previous](#) [Next](#)  

  

  

  
*     
    ![](abstract_colors_Galeor.jpg)  
    
  
*     
    ![](Palawan Island Philippines.jpg)  
    
  
*     
    ![](Peaceful Getaway Maldives.jpg)  
    
  

  

  

  

  
  

Copyright © Bruce Huang All rights reserved.
<!-- more -->
