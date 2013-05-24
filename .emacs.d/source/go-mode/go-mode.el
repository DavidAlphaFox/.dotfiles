



<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" >
 
 <meta name="ROBOTS" content="NOARCHIVE">
 
 <link rel="icon" type="image/vnd.microsoft.icon" href="https://ssl.gstatic.com/codesite/ph/images/phosting.ico">
 
 
 <script type="text/javascript">
 
 
 
 
 var codesite_token = null;
 
 
 var CS_env = {"domainName":null,"assetHostPath":"https://ssl.gstatic.com/codesite/ph","projectName":"go","token":null,"profileUrl":null,"loggedInUserEmail":null,"relativeBaseUrl":"","projectHomeUrl":"/p/go","assetVersionPath":"https://ssl.gstatic.com/codesite/ph/13105533463844027904"};
 var _gaq = _gaq || [];
 _gaq.push(
 ['siteTracker._setAccount', 'UA-18071-1'],
 ['siteTracker._trackPageview']);
 
 _gaq.push(
 ['projectTracker._setAccount', 'UA-11222381-1'],
 ['projectTracker._trackPageview']);
 
 (function() {
 var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
 ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
 (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
 })();
 
 </script>
 
 
 <title>go-mode.el - 
 go -
 
 
 The Go Programming Language - Google Project Hosting
 </title>
 <link type="text/css" rel="stylesheet" href="https://ssl.gstatic.com/codesite/ph/13105533463844027904/css/core.css">
 
 <link type="text/css" rel="stylesheet" href="https://ssl.gstatic.com/codesite/ph/13105533463844027904/css/ph_detail.css" >
 
 
 <link type="text/css" rel="stylesheet" href="https://ssl.gstatic.com/codesite/ph/13105533463844027904/css/d_sb.css" >
 
 
 
<!--[if IE]>
 <link type="text/css" rel="stylesheet" href="https://ssl.gstatic.com/codesite/ph/13105533463844027904/css/d_ie.css" >
<![endif]-->
 <style type="text/css">
 .menuIcon.off { background: no-repeat url(https://ssl.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -42px }
 .menuIcon.on { background: no-repeat url(https://ssl.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -28px }
 .menuIcon.down { background: no-repeat url(https://ssl.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 0; }
 
 
 
  tr.inline_comment {
 background: #fff;
 vertical-align: top;
 }
 div.draft, div.published {
 padding: .3em;
 border: 1px solid #999; 
 margin-bottom: .1em;
 font-family: arial, sans-serif;
 max-width: 60em;
 }
 div.draft {
 background: #ffa;
 } 
 div.published {
 background: #e5ecf9;
 }
 div.published .body, div.draft .body {
 padding: .5em .1em .1em .1em;
 max-width: 60em;
 white-space: pre-wrap;
 white-space: -moz-pre-wrap;
 white-space: -pre-wrap;
 white-space: -o-pre-wrap;
 word-wrap: break-word;
 font-size: 1em;
 }
 div.draft .actions {
 margin-left: 1em;
 font-size: 90%;
 }
 div.draft form {
 padding: .5em .5em .5em 0;
 }
 div.draft textarea, div.published textarea {
 width: 95%;
 height: 10em;
 font-family: arial, sans-serif;
 margin-bottom: .5em;
 }

 
 .nocursor, .nocursor td, .cursor_hidden, .cursor_hidden td {
 background-color: white;
 height: 2px;
 }
 .cursor, .cursor td {
 background-color: darkblue;
 height: 2px;
 display: '';
 }
 
 
.list {
 border: 1px solid white;
 border-bottom: 0;
}

 
 </style>
</head>
<body class="t4">
<script type="text/javascript">
 window.___gcfg = {lang: 'en'};
 (function() 
 {var po = document.createElement("script");
 po.type = "text/javascript"; po.async = true;po.src = "https://apis.google.com/js/plusone.js";
 var s = document.getElementsByTagName("script")[0];
 s.parentNode.insertBefore(po, s);
 })();
</script>
<div class="headbg">

 <div id="gaia">
 

 <span>
 
 
 <a href="#" id="projects-dropdown" onclick="return false;"><u>My favorites</u> <small>&#9660;</small></a>
 | <a href="https://www.google.com/accounts/ServiceLogin?service=code&amp;ltmpl=phosting&amp;continue=https%3A%2F%2Fcode.google.com%2Fp%2Fgo%2Fsource%2Fbrowse%2Fmisc%2Femacs%2Fgo-mode.el&amp;followup=https%3A%2F%2Fcode.google.com%2Fp%2Fgo%2Fsource%2Fbrowse%2Fmisc%2Femacs%2Fgo-mode.el" onclick="_CS_click('/gb/ph/signin');"><u>Sign in</u></a>
 
 </span>

 </div>

 <div class="gbh" style="left: 0pt;"></div>
 <div class="gbh" style="right: 0pt;"></div>
 
 
 <div style="height: 1px"></div>
<!--[if lte IE 7]>
<div style="text-align:center;">
Your version of Internet Explorer is not supported. Try a browser that
contributes to open source, such as <a href="http://www.firefox.com">Firefox</a>,
<a href="http://www.google.com/chrome">Google Chrome</a>, or
<a href="http://code.google.com/chrome/chromeframe/">Google Chrome Frame</a>.
</div>
<![endif]-->



 <table style="padding:0px; margin: 0px 0px 10px 0px; width:100%" cellpadding="0" cellspacing="0"
 itemscope itemtype="http://schema.org/CreativeWork">
 <tr style="height: 58px;">
 
 
 
 <td id="plogo">
 <link itemprop="url" href="/p/go">
 <a href="/p/go/">
 
 
 <img src="/p/go/logo?cct=1368889320"
 alt="Logo" itemprop="image">
 
 </a>
 </td>
 
 <td style="padding-left: 0.5em">
 
 <div id="pname">
 <a href="/p/go/"><span itemprop="name">go</span></a>
 </div>
 
 <div id="psum">
 <a id="project_summary_link"
 href="/p/go/"><span itemprop="description">The Go Programming Language</span></a>
 
 </div>
 
 
 </td>
 <td style="white-space:nowrap;text-align:right; vertical-align:bottom;">
 
 <form action="/hosting/search">
 <input size="30" name="q" value="" type="text">
 
 <input type="submit" name="projectsearch" value="Search projects" >
 </form>
 
 </tr>
 </table>

</div>

 
<div id="mt" class="gtb"> 
 <a href="/p/go/" class="tab ">Project&nbsp;Home</a>
 
 
 
 
 <a href="/p/go/downloads/list" class="tab ">Downloads</a>
 
 
 
 
 
 <a href="/p/go/wiki/WikiIndex?tm=6" class="tab ">Wiki</a>
 
 
 
 
 
 <a href="/p/go/issues/list"
 class="tab ">Issues</a>
 
 
 
 
 
 <a href="/p/go/wiki/Source?tm=4"
 class="tab active">Source</a>
 
 
 
 <a href="/p/go/codesearch" class="tab">Code Search</a>
 
 
 
 
 
 <div class=gtbc></div>
</div>
<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" class="st">
 <tr>
 
 
 
 
 
 
 <td class="subt">
 <div class="st2">
 <div class="isf">
 
 <form action="/p/go/source/browse" style="display: inline">
 
 Repository:
 <select name="repo" id="repo" style="font-size: 92%" onchange="submit()">
 <option value="default">default</option><option value="wiki">wiki</option><option value="example">example</option><option value="empty">empty</option><option value="crypto">crypto</option><option value="net">net</option><option value="codereview">codereview</option><option value="image">image</option><option value="talks">talks</option><option value="blog">blog</option><option value="exp">exp</option><option value="text">text</option><option value="tools">tools</option>
 </select>
 </form>
 
 


 <span class="inst1"><a href="/p/go/source/checkout">Checkout</a></span> &nbsp;
 <span class="inst2"><a href="/p/go/source/browse/">Browse</a></span> &nbsp;
 <span class="inst3"><a href="/p/go/source/list">Changes</a></span> &nbsp;
 <span class="inst4"><a href="/p/go/source/clones">Clones</a></span> &nbsp; 
 
 
 </form>
 <script type="text/javascript">
 
 function codesearchQuery(form) {
 var query = document.getElementById('q').value;
 if (query) { form.action += '%20' + query; }
 }
 </script>
 </div>
</div>

 </td>
 
 
 
 <td align="right" valign="top" class="bevel-right"></td>
 </tr>
</table>


<script type="text/javascript">
 var cancelBubble = false;
 function _go(url) { document.location = url; }
</script>
<div id="maincol"
 
>

 




<div class="expand">
<div id="colcontrol">
<style type="text/css">
 #file_flipper { white-space: nowrap; padding-right: 2em; }
 #file_flipper.hidden { display: none; }
 #file_flipper .pagelink { color: #0000CC; text-decoration: underline; }
 #file_flipper #visiblefiles { padding-left: 0.5em; padding-right: 0.5em; }
</style>
<table id="nav_and_rev" class="list"
 cellpadding="0" cellspacing="0" width="100%">
 <tr>
 
 <td nowrap="nowrap" class="src_crumbs src_nav" width="33%">
 <strong class="src_nav">Source path:&nbsp;</strong>
 <span id="crumb_root">
 
 <a href="/p/go/source/browse/">hg</a>/&nbsp;</span>
 <span id="crumb_links" class="ifClosed"><a href="/p/go/source/browse/misc/">misc</a><span class="sp">/&nbsp;</span><a href="/p/go/source/browse/misc/emacs/">emacs</a><span class="sp">/&nbsp;</span>go-mode.el</span>
 
 
 
 
 
 <form class="src_nav">
 
 <span class="sourcelabel"><strong>Branch:</strong>
 <select id="branch_select" name="name" onchange="submit()">
 
 <option value="default"
 selected>
 default
 </option>
 
 <option value="release-branch.go1"
 >
 release-branch.go1
 </option>
 
 <option value="release-branch.go1.1"
 >
 release-branch.go1.1
 </option>
 
 <option value="release-branch.r57"
 >
 release-branch.r57
 </option>
 
 <option value="release-branch.r58"
 >
 release-branch.r58
 </option>
 
 <option value="release-branch.r59"
 >
 release-branch.r59
 </option>
 
 <option value="release-branch.r60"
 >
 release-branch.r60
 </option>
 
 
 </select>
 </span>
 </form>
 
 
 
 
 <form class="src_nav">
 
 <span class="sourcelabel">
 <strong>Tag:</strong>
 <select id="tag_select" name="name" onchange="submit()">
 <option value="">&lt;none&gt;</option>
 
 <option value="go1" >go1</option>
 
 <option value="go1.0.1" >go1.0.1</option>
 
 <option value="go1.0.2" >go1.0.2</option>
 
 <option value="go1.0.3" >go1.0.3</option>
 
 <option value="go1.1" >go1.1</option>
 
 <option value="go1.1rc2" >go1.1rc2</option>
 
 <option value="go1.1rc3" >go1.1rc3</option>
 
 <option value="release" >release</option>
 
 <option value="release.r56" >release.r56</option>
 
 <option value="release.r57" >release.r57</option>
 
 <option value="release.r57.1" >release.r57.1</option>
 
 <option value="release.r57.2" >release.r57.2</option>
 
 <option value="release.r58" >release.r58</option>
 
 <option value="release.r58.1" >release.r58.1</option>
 
 <option value="release.r58.2" >release.r58.2</option>
 
 <option value="release.r59" >release.r59</option>
 
 <option value="release.r60" >release.r60</option>
 
 <option value="release.r60.1" >release.r60.1</option>
 
 <option value="release.r60.2" >release.r60.2</option>
 
 <option value="release.r60.3" >release.r60.3</option>
 
 <option value="weekly" >weekly</option>
 
 <option value="weekly.2009-11-06" >weekly.2009-11-06</option>
 
 <option value="weekly.2009-11-10" >weekly.2009-11-10</option>
 
 <option value="weekly.2009-11-10.1" >weekly.2009-11-10.1</option>
 
 <option value="weekly.2009-11-12" >weekly.2009-11-12</option>
 
 <option value="weekly.2009-11-17" >weekly.2009-11-17</option>
 
 <option value="weekly.2009-12-07" >weekly.2009-12-07</option>
 
 <option value="weekly.2009-12-09" >weekly.2009-12-09</option>
 
 <option value="weekly.2009-12-22" >weekly.2009-12-22</option>
 
 <option value="weekly.2010-01-05" >weekly.2010-01-05</option>
 
 <option value="weekly.2010-01-13" >weekly.2010-01-13</option>
 
 <option value="weekly.2010-01-27" >weekly.2010-01-27</option>
 
 <option value="weekly.2010-02-04" >weekly.2010-02-04</option>
 
 <option value="weekly.2010-02-17" >weekly.2010-02-17</option>
 
 <option value="weekly.2010-02-23" >weekly.2010-02-23</option>
 
 <option value="weekly.2010-03-04" >weekly.2010-03-04</option>
 
 <option value="weekly.2010-03-15" >weekly.2010-03-15</option>
 
 <option value="weekly.2010-03-22" >weekly.2010-03-22</option>
 
 <option value="weekly.2010-03-30" >weekly.2010-03-30</option>
 
 <option value="weekly.2010-04-13" >weekly.2010-04-13</option>
 
 <option value="weekly.2010-04-27" >weekly.2010-04-27</option>
 
 <option value="weekly.2010-05-04" >weekly.2010-05-04</option>
 
 <option value="weekly.2010-05-27" >weekly.2010-05-27</option>
 
 <option value="weekly.2010-06-09" >weekly.2010-06-09</option>
 
 <option value="weekly.2010-06-21" >weekly.2010-06-21</option>
 
 <option value="weekly.2010-07-01" >weekly.2010-07-01</option>
 
 <option value="weekly.2010-07-14" >weekly.2010-07-14</option>
 
 <option value="weekly.2010-07-29" >weekly.2010-07-29</option>
 
 <option value="weekly.2010-08-04" >weekly.2010-08-04</option>
 
 <option value="weekly.2010-08-11" >weekly.2010-08-11</option>
 
 <option value="weekly.2010-08-25" >weekly.2010-08-25</option>
 
 <option value="weekly.2010-09-06" >weekly.2010-09-06</option>
 
 <option value="weekly.2010-09-15" >weekly.2010-09-15</option>
 
 <option value="weekly.2010-09-22" >weekly.2010-09-22</option>
 
 <option value="weekly.2010-09-29" >weekly.2010-09-29</option>
 
 <option value="weekly.2010-10-13" >weekly.2010-10-13</option>
 
 <option value="weekly.2010-10-13.1" >weekly.2010-10-13.1</option>
 
 <option value="weekly.2010-10-20" >weekly.2010-10-20</option>
 
 <option value="weekly.2010-10-27" >weekly.2010-10-27</option>
 
 <option value="weekly.2010-11-02" >weekly.2010-11-02</option>
 
 <option value="weekly.2010-11-10" >weekly.2010-11-10</option>
 
 <option value="weekly.2010-11-23" >weekly.2010-11-23</option>
 
 <option value="weekly.2010-12-02" >weekly.2010-12-02</option>
 
 <option value="weekly.2010-12-08" >weekly.2010-12-08</option>
 
 <option value="weekly.2010-12-15" >weekly.2010-12-15</option>
 
 <option value="weekly.2010-12-15.1" >weekly.2010-12-15.1</option>
 
 <option value="weekly.2010-12-22" >weekly.2010-12-22</option>
 
 <option value="weekly.2011-01-06" >weekly.2011-01-06</option>
 
 <option value="weekly.2011-01-12" >weekly.2011-01-12</option>
 
 <option value="weekly.2011-01-19" >weekly.2011-01-19</option>
 
 <option value="weekly.2011-01-20" >weekly.2011-01-20</option>
 
 <option value="weekly.2011-02-01" >weekly.2011-02-01</option>
 
 <option value="weekly.2011-02-01.1" >weekly.2011-02-01.1</option>
 
 <option value="weekly.2011-02-15" >weekly.2011-02-15</option>
 
 <option value="weekly.2011-02-24" >weekly.2011-02-24</option>
 
 <option value="weekly.2011-03-07" >weekly.2011-03-07</option>
 
 <option value="weekly.2011-03-07.1" >weekly.2011-03-07.1</option>
 
 <option value="weekly.2011-03-15" >weekly.2011-03-15</option>
 
 <option value="weekly.2011-03-28" >weekly.2011-03-28</option>
 
 <option value="weekly.2011-04-04" >weekly.2011-04-04</option>
 
 <option value="weekly.2011-04-13" >weekly.2011-04-13</option>
 
 <option value="weekly.2011-04-27" >weekly.2011-04-27</option>
 
 <option value="weekly.2011-05-22" >weekly.2011-05-22</option>
 
 <option value="weekly.2011-06-02" >weekly.2011-06-02</option>
 
 <option value="weekly.2011-06-09" >weekly.2011-06-09</option>
 
 <option value="weekly.2011-06-16" >weekly.2011-06-16</option>
 
 <option value="weekly.2011-06-23" >weekly.2011-06-23</option>
 
 <option value="weekly.2011-07-07" >weekly.2011-07-07</option>
 
 <option value="weekly.2011-07-19" >weekly.2011-07-19</option>
 
 <option value="weekly.2011-07-29" >weekly.2011-07-29</option>
 
 <option value="weekly.2011-08-10" >weekly.2011-08-10</option>
 
 <option value="weekly.2011-08-17" >weekly.2011-08-17</option>
 
 <option value="weekly.2011-09-01" >weekly.2011-09-01</option>
 
 <option value="weekly.2011-09-07" >weekly.2011-09-07</option>
 
 <option value="weekly.2011-09-16" >weekly.2011-09-16</option>
 
 <option value="weekly.2011-09-21" >weekly.2011-09-21</option>
 
 <option value="weekly.2011-10-06" >weekly.2011-10-06</option>
 
 <option value="weekly.2011-10-18" >weekly.2011-10-18</option>
 
 <option value="weekly.2011-10-25" >weekly.2011-10-25</option>
 
 <option value="weekly.2011-10-26" >weekly.2011-10-26</option>
 
 <option value="weekly.2011-11-01" >weekly.2011-11-01</option>
 
 <option value="weekly.2011-11-02" >weekly.2011-11-02</option>
 
 <option value="weekly.2011-11-08" >weekly.2011-11-08</option>
 
 <option value="weekly.2011-11-09" >weekly.2011-11-09</option>
 
 <option value="weekly.2011-11-18" >weekly.2011-11-18</option>
 
 <option value="weekly.2011-12-01" >weekly.2011-12-01</option>
 
 <option value="weekly.2011-12-02" >weekly.2011-12-02</option>
 
 <option value="weekly.2011-12-06" >weekly.2011-12-06</option>
 
 <option value="weekly.2011-12-14" >weekly.2011-12-14</option>
 
 <option value="weekly.2011-12-22" >weekly.2011-12-22</option>
 
 <option value="weekly.2012-01-15" >weekly.2012-01-15</option>
 
 <option value="weekly.2012-01-20" >weekly.2012-01-20</option>
 
 <option value="weekly.2012-01-27" >weekly.2012-01-27</option>
 
 <option value="weekly.2012-02-07" >weekly.2012-02-07</option>
 
 <option value="weekly.2012-02-14" >weekly.2012-02-14</option>
 
 <option value="weekly.2012-02-22" >weekly.2012-02-22</option>
 
 <option value="weekly.2012-03-04" >weekly.2012-03-04</option>
 
 <option value="weekly.2012-03-13" >weekly.2012-03-13</option>
 
 <option value="weekly.2012-03-22" >weekly.2012-03-22</option>
 
 <option value="weekly.2012-03-27" >weekly.2012-03-27</option>
 
 </select>
 </span>
 </form>
 
 



 </td>
 
 
 <td nowrap="nowrap" width="33%" align="right">
 <table cellpadding="0" cellspacing="0" style="font-size: 100%"><tr>
 
 
 <td class="flipper">
 <ul class="leftside">
 
 <li><a href="/p/go/source/browse/misc/emacs/go-mode.el?r=d547ac53a013c7c40c6ede700e3bad950896abe1" title="Previous">&lsaquo;d547ac53a013</a></li>
 
 </ul>
 </td>
 
 <td class="flipper"><b>79a1fec35802</b></td>
 
 </tr></table>
 </td> 
 </tr>
</table>

<div class="fc">
 
 
 
<style type="text/css">
.undermouse span {
 background-image: url(https://ssl.gstatic.com/codesite/ph/images/comments.gif); }
</style>
<table class="opened" id="review_comment_area"
><tr>
<td id="nums">
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
<pre><table width="100%" id="nums_table_0"><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_1"

><td id="1"><a href="#1">1</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_2"

><td id="2"><a href="#2">2</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_3"

><td id="3"><a href="#3">3</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_4"

><td id="4"><a href="#4">4</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_5"

><td id="5"><a href="#5">5</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_6"

><td id="6"><a href="#6">6</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_7"

><td id="7"><a href="#7">7</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_8"

><td id="8"><a href="#8">8</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_9"

><td id="9"><a href="#9">9</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_10"

><td id="10"><a href="#10">10</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_11"

><td id="11"><a href="#11">11</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_12"

><td id="12"><a href="#12">12</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_13"

><td id="13"><a href="#13">13</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_14"

><td id="14"><a href="#14">14</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_15"

><td id="15"><a href="#15">15</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_16"

><td id="16"><a href="#16">16</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_17"

><td id="17"><a href="#17">17</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_18"

><td id="18"><a href="#18">18</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_19"

><td id="19"><a href="#19">19</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_20"

><td id="20"><a href="#20">20</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_21"

><td id="21"><a href="#21">21</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_22"

><td id="22"><a href="#22">22</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_23"

><td id="23"><a href="#23">23</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_24"

><td id="24"><a href="#24">24</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_25"

><td id="25"><a href="#25">25</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_26"

><td id="26"><a href="#26">26</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_27"

><td id="27"><a href="#27">27</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_28"

><td id="28"><a href="#28">28</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_29"

><td id="29"><a href="#29">29</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_30"

><td id="30"><a href="#30">30</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_31"

><td id="31"><a href="#31">31</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_32"

><td id="32"><a href="#32">32</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_33"

><td id="33"><a href="#33">33</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_34"

><td id="34"><a href="#34">34</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_35"

><td id="35"><a href="#35">35</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_36"

><td id="36"><a href="#36">36</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_37"

><td id="37"><a href="#37">37</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_38"

><td id="38"><a href="#38">38</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_39"

><td id="39"><a href="#39">39</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_40"

><td id="40"><a href="#40">40</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_41"

><td id="41"><a href="#41">41</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_42"

><td id="42"><a href="#42">42</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_43"

><td id="43"><a href="#43">43</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_44"

><td id="44"><a href="#44">44</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_45"

><td id="45"><a href="#45">45</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_46"

><td id="46"><a href="#46">46</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_47"

><td id="47"><a href="#47">47</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_48"

><td id="48"><a href="#48">48</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_49"

><td id="49"><a href="#49">49</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_50"

><td id="50"><a href="#50">50</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_51"

><td id="51"><a href="#51">51</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_52"

><td id="52"><a href="#52">52</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_53"

><td id="53"><a href="#53">53</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_54"

><td id="54"><a href="#54">54</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_55"

><td id="55"><a href="#55">55</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_56"

><td id="56"><a href="#56">56</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_57"

><td id="57"><a href="#57">57</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_58"

><td id="58"><a href="#58">58</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_59"

><td id="59"><a href="#59">59</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_60"

><td id="60"><a href="#60">60</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_61"

><td id="61"><a href="#61">61</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_62"

><td id="62"><a href="#62">62</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_63"

><td id="63"><a href="#63">63</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_64"

><td id="64"><a href="#64">64</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_65"

><td id="65"><a href="#65">65</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_66"

><td id="66"><a href="#66">66</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_67"

><td id="67"><a href="#67">67</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_68"

><td id="68"><a href="#68">68</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_69"

><td id="69"><a href="#69">69</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_70"

><td id="70"><a href="#70">70</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_71"

><td id="71"><a href="#71">71</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_72"

><td id="72"><a href="#72">72</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_73"

><td id="73"><a href="#73">73</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_74"

><td id="74"><a href="#74">74</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_75"

><td id="75"><a href="#75">75</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_76"

><td id="76"><a href="#76">76</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_77"

><td id="77"><a href="#77">77</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_78"

><td id="78"><a href="#78">78</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_79"

><td id="79"><a href="#79">79</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_80"

><td id="80"><a href="#80">80</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_81"

><td id="81"><a href="#81">81</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_82"

><td id="82"><a href="#82">82</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_83"

><td id="83"><a href="#83">83</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_84"

><td id="84"><a href="#84">84</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_85"

><td id="85"><a href="#85">85</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_86"

><td id="86"><a href="#86">86</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_87"

><td id="87"><a href="#87">87</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_88"

><td id="88"><a href="#88">88</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_89"

><td id="89"><a href="#89">89</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_90"

><td id="90"><a href="#90">90</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_91"

><td id="91"><a href="#91">91</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_92"

><td id="92"><a href="#92">92</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_93"

><td id="93"><a href="#93">93</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_94"

><td id="94"><a href="#94">94</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_95"

><td id="95"><a href="#95">95</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_96"

><td id="96"><a href="#96">96</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_97"

><td id="97"><a href="#97">97</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_98"

><td id="98"><a href="#98">98</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_99"

><td id="99"><a href="#99">99</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_100"

><td id="100"><a href="#100">100</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_101"

><td id="101"><a href="#101">101</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_102"

><td id="102"><a href="#102">102</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_103"

><td id="103"><a href="#103">103</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_104"

><td id="104"><a href="#104">104</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_105"

><td id="105"><a href="#105">105</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_106"

><td id="106"><a href="#106">106</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_107"

><td id="107"><a href="#107">107</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_108"

><td id="108"><a href="#108">108</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_109"

><td id="109"><a href="#109">109</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_110"

><td id="110"><a href="#110">110</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_111"

><td id="111"><a href="#111">111</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_112"

><td id="112"><a href="#112">112</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_113"

><td id="113"><a href="#113">113</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_114"

><td id="114"><a href="#114">114</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_115"

><td id="115"><a href="#115">115</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_116"

><td id="116"><a href="#116">116</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_117"

><td id="117"><a href="#117">117</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_118"

><td id="118"><a href="#118">118</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_119"

><td id="119"><a href="#119">119</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_120"

><td id="120"><a href="#120">120</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_121"

><td id="121"><a href="#121">121</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_122"

><td id="122"><a href="#122">122</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_123"

><td id="123"><a href="#123">123</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_124"

><td id="124"><a href="#124">124</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_125"

><td id="125"><a href="#125">125</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_126"

><td id="126"><a href="#126">126</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_127"

><td id="127"><a href="#127">127</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_128"

><td id="128"><a href="#128">128</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_129"

><td id="129"><a href="#129">129</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_130"

><td id="130"><a href="#130">130</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_131"

><td id="131"><a href="#131">131</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_132"

><td id="132"><a href="#132">132</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_133"

><td id="133"><a href="#133">133</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_134"

><td id="134"><a href="#134">134</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_135"

><td id="135"><a href="#135">135</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_136"

><td id="136"><a href="#136">136</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_137"

><td id="137"><a href="#137">137</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_138"

><td id="138"><a href="#138">138</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_139"

><td id="139"><a href="#139">139</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_140"

><td id="140"><a href="#140">140</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_141"

><td id="141"><a href="#141">141</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_142"

><td id="142"><a href="#142">142</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_143"

><td id="143"><a href="#143">143</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_144"

><td id="144"><a href="#144">144</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_145"

><td id="145"><a href="#145">145</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_146"

><td id="146"><a href="#146">146</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_147"

><td id="147"><a href="#147">147</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_148"

><td id="148"><a href="#148">148</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_149"

><td id="149"><a href="#149">149</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_150"

><td id="150"><a href="#150">150</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_151"

><td id="151"><a href="#151">151</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_152"

><td id="152"><a href="#152">152</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_153"

><td id="153"><a href="#153">153</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_154"

><td id="154"><a href="#154">154</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_155"

><td id="155"><a href="#155">155</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_156"

><td id="156"><a href="#156">156</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_157"

><td id="157"><a href="#157">157</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_158"

><td id="158"><a href="#158">158</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_159"

><td id="159"><a href="#159">159</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_160"

><td id="160"><a href="#160">160</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_161"

><td id="161"><a href="#161">161</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_162"

><td id="162"><a href="#162">162</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_163"

><td id="163"><a href="#163">163</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_164"

><td id="164"><a href="#164">164</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_165"

><td id="165"><a href="#165">165</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_166"

><td id="166"><a href="#166">166</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_167"

><td id="167"><a href="#167">167</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_168"

><td id="168"><a href="#168">168</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_169"

><td id="169"><a href="#169">169</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_170"

><td id="170"><a href="#170">170</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_171"

><td id="171"><a href="#171">171</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_172"

><td id="172"><a href="#172">172</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_173"

><td id="173"><a href="#173">173</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_174"

><td id="174"><a href="#174">174</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_175"

><td id="175"><a href="#175">175</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_176"

><td id="176"><a href="#176">176</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_177"

><td id="177"><a href="#177">177</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_178"

><td id="178"><a href="#178">178</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_179"

><td id="179"><a href="#179">179</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_180"

><td id="180"><a href="#180">180</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_181"

><td id="181"><a href="#181">181</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_182"

><td id="182"><a href="#182">182</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_183"

><td id="183"><a href="#183">183</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_184"

><td id="184"><a href="#184">184</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_185"

><td id="185"><a href="#185">185</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_186"

><td id="186"><a href="#186">186</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_187"

><td id="187"><a href="#187">187</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_188"

><td id="188"><a href="#188">188</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_189"

><td id="189"><a href="#189">189</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_190"

><td id="190"><a href="#190">190</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_191"

><td id="191"><a href="#191">191</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_192"

><td id="192"><a href="#192">192</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_193"

><td id="193"><a href="#193">193</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_194"

><td id="194"><a href="#194">194</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_195"

><td id="195"><a href="#195">195</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_196"

><td id="196"><a href="#196">196</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_197"

><td id="197"><a href="#197">197</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_198"

><td id="198"><a href="#198">198</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_199"

><td id="199"><a href="#199">199</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_200"

><td id="200"><a href="#200">200</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_201"

><td id="201"><a href="#201">201</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_202"

><td id="202"><a href="#202">202</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_203"

><td id="203"><a href="#203">203</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_204"

><td id="204"><a href="#204">204</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_205"

><td id="205"><a href="#205">205</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_206"

><td id="206"><a href="#206">206</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_207"

><td id="207"><a href="#207">207</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_208"

><td id="208"><a href="#208">208</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_209"

><td id="209"><a href="#209">209</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_210"

><td id="210"><a href="#210">210</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_211"

><td id="211"><a href="#211">211</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_212"

><td id="212"><a href="#212">212</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_213"

><td id="213"><a href="#213">213</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_214"

><td id="214"><a href="#214">214</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_215"

><td id="215"><a href="#215">215</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_216"

><td id="216"><a href="#216">216</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_217"

><td id="217"><a href="#217">217</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_218"

><td id="218"><a href="#218">218</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_219"

><td id="219"><a href="#219">219</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_220"

><td id="220"><a href="#220">220</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_221"

><td id="221"><a href="#221">221</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_222"

><td id="222"><a href="#222">222</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_223"

><td id="223"><a href="#223">223</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_224"

><td id="224"><a href="#224">224</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_225"

><td id="225"><a href="#225">225</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_226"

><td id="226"><a href="#226">226</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_227"

><td id="227"><a href="#227">227</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_228"

><td id="228"><a href="#228">228</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_229"

><td id="229"><a href="#229">229</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_230"

><td id="230"><a href="#230">230</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_231"

><td id="231"><a href="#231">231</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_232"

><td id="232"><a href="#232">232</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_233"

><td id="233"><a href="#233">233</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_234"

><td id="234"><a href="#234">234</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_235"

><td id="235"><a href="#235">235</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_236"

><td id="236"><a href="#236">236</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_237"

><td id="237"><a href="#237">237</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_238"

><td id="238"><a href="#238">238</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_239"

><td id="239"><a href="#239">239</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_240"

><td id="240"><a href="#240">240</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_241"

><td id="241"><a href="#241">241</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_242"

><td id="242"><a href="#242">242</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_243"

><td id="243"><a href="#243">243</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_244"

><td id="244"><a href="#244">244</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_245"

><td id="245"><a href="#245">245</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_246"

><td id="246"><a href="#246">246</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_247"

><td id="247"><a href="#247">247</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_248"

><td id="248"><a href="#248">248</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_249"

><td id="249"><a href="#249">249</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_250"

><td id="250"><a href="#250">250</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_251"

><td id="251"><a href="#251">251</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_252"

><td id="252"><a href="#252">252</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_253"

><td id="253"><a href="#253">253</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_254"

><td id="254"><a href="#254">254</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_255"

><td id="255"><a href="#255">255</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_256"

><td id="256"><a href="#256">256</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_257"

><td id="257"><a href="#257">257</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_258"

><td id="258"><a href="#258">258</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_259"

><td id="259"><a href="#259">259</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_260"

><td id="260"><a href="#260">260</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_261"

><td id="261"><a href="#261">261</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_262"

><td id="262"><a href="#262">262</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_263"

><td id="263"><a href="#263">263</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_264"

><td id="264"><a href="#264">264</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_265"

><td id="265"><a href="#265">265</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_266"

><td id="266"><a href="#266">266</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_267"

><td id="267"><a href="#267">267</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_268"

><td id="268"><a href="#268">268</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_269"

><td id="269"><a href="#269">269</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_270"

><td id="270"><a href="#270">270</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_271"

><td id="271"><a href="#271">271</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_272"

><td id="272"><a href="#272">272</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_273"

><td id="273"><a href="#273">273</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_274"

><td id="274"><a href="#274">274</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_275"

><td id="275"><a href="#275">275</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_276"

><td id="276"><a href="#276">276</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_277"

><td id="277"><a href="#277">277</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_278"

><td id="278"><a href="#278">278</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_279"

><td id="279"><a href="#279">279</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_280"

><td id="280"><a href="#280">280</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_281"

><td id="281"><a href="#281">281</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_282"

><td id="282"><a href="#282">282</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_283"

><td id="283"><a href="#283">283</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_284"

><td id="284"><a href="#284">284</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_285"

><td id="285"><a href="#285">285</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_286"

><td id="286"><a href="#286">286</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_287"

><td id="287"><a href="#287">287</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_288"

><td id="288"><a href="#288">288</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_289"

><td id="289"><a href="#289">289</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_290"

><td id="290"><a href="#290">290</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_291"

><td id="291"><a href="#291">291</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_292"

><td id="292"><a href="#292">292</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_293"

><td id="293"><a href="#293">293</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_294"

><td id="294"><a href="#294">294</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_295"

><td id="295"><a href="#295">295</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_296"

><td id="296"><a href="#296">296</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_297"

><td id="297"><a href="#297">297</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_298"

><td id="298"><a href="#298">298</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_299"

><td id="299"><a href="#299">299</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_300"

><td id="300"><a href="#300">300</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_301"

><td id="301"><a href="#301">301</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_302"

><td id="302"><a href="#302">302</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_303"

><td id="303"><a href="#303">303</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_304"

><td id="304"><a href="#304">304</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_305"

><td id="305"><a href="#305">305</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_306"

><td id="306"><a href="#306">306</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_307"

><td id="307"><a href="#307">307</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_308"

><td id="308"><a href="#308">308</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_309"

><td id="309"><a href="#309">309</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_310"

><td id="310"><a href="#310">310</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_311"

><td id="311"><a href="#311">311</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_312"

><td id="312"><a href="#312">312</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_313"

><td id="313"><a href="#313">313</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_314"

><td id="314"><a href="#314">314</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_315"

><td id="315"><a href="#315">315</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_316"

><td id="316"><a href="#316">316</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_317"

><td id="317"><a href="#317">317</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_318"

><td id="318"><a href="#318">318</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_319"

><td id="319"><a href="#319">319</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_320"

><td id="320"><a href="#320">320</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_321"

><td id="321"><a href="#321">321</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_322"

><td id="322"><a href="#322">322</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_323"

><td id="323"><a href="#323">323</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_324"

><td id="324"><a href="#324">324</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_325"

><td id="325"><a href="#325">325</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_326"

><td id="326"><a href="#326">326</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_327"

><td id="327"><a href="#327">327</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_328"

><td id="328"><a href="#328">328</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_329"

><td id="329"><a href="#329">329</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_330"

><td id="330"><a href="#330">330</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_331"

><td id="331"><a href="#331">331</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_332"

><td id="332"><a href="#332">332</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_333"

><td id="333"><a href="#333">333</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_334"

><td id="334"><a href="#334">334</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_335"

><td id="335"><a href="#335">335</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_336"

><td id="336"><a href="#336">336</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_337"

><td id="337"><a href="#337">337</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_338"

><td id="338"><a href="#338">338</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_339"

><td id="339"><a href="#339">339</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_340"

><td id="340"><a href="#340">340</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_341"

><td id="341"><a href="#341">341</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_342"

><td id="342"><a href="#342">342</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_343"

><td id="343"><a href="#343">343</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_344"

><td id="344"><a href="#344">344</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_345"

><td id="345"><a href="#345">345</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_346"

><td id="346"><a href="#346">346</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_347"

><td id="347"><a href="#347">347</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_348"

><td id="348"><a href="#348">348</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_349"

><td id="349"><a href="#349">349</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_350"

><td id="350"><a href="#350">350</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_351"

><td id="351"><a href="#351">351</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_352"

><td id="352"><a href="#352">352</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_353"

><td id="353"><a href="#353">353</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_354"

><td id="354"><a href="#354">354</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_355"

><td id="355"><a href="#355">355</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_356"

><td id="356"><a href="#356">356</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_357"

><td id="357"><a href="#357">357</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_358"

><td id="358"><a href="#358">358</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_359"

><td id="359"><a href="#359">359</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_360"

><td id="360"><a href="#360">360</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_361"

><td id="361"><a href="#361">361</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_362"

><td id="362"><a href="#362">362</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_363"

><td id="363"><a href="#363">363</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_364"

><td id="364"><a href="#364">364</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_365"

><td id="365"><a href="#365">365</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_366"

><td id="366"><a href="#366">366</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_367"

><td id="367"><a href="#367">367</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_368"

><td id="368"><a href="#368">368</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_369"

><td id="369"><a href="#369">369</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_370"

><td id="370"><a href="#370">370</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_371"

><td id="371"><a href="#371">371</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_372"

><td id="372"><a href="#372">372</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_373"

><td id="373"><a href="#373">373</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_374"

><td id="374"><a href="#374">374</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_375"

><td id="375"><a href="#375">375</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_376"

><td id="376"><a href="#376">376</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_377"

><td id="377"><a href="#377">377</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_378"

><td id="378"><a href="#378">378</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_379"

><td id="379"><a href="#379">379</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_380"

><td id="380"><a href="#380">380</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_381"

><td id="381"><a href="#381">381</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_382"

><td id="382"><a href="#382">382</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_383"

><td id="383"><a href="#383">383</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_384"

><td id="384"><a href="#384">384</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_385"

><td id="385"><a href="#385">385</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_386"

><td id="386"><a href="#386">386</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_387"

><td id="387"><a href="#387">387</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_388"

><td id="388"><a href="#388">388</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_389"

><td id="389"><a href="#389">389</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_390"

><td id="390"><a href="#390">390</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_391"

><td id="391"><a href="#391">391</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_392"

><td id="392"><a href="#392">392</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_393"

><td id="393"><a href="#393">393</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_394"

><td id="394"><a href="#394">394</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_395"

><td id="395"><a href="#395">395</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_396"

><td id="396"><a href="#396">396</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_397"

><td id="397"><a href="#397">397</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_398"

><td id="398"><a href="#398">398</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_399"

><td id="399"><a href="#399">399</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_400"

><td id="400"><a href="#400">400</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_401"

><td id="401"><a href="#401">401</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_402"

><td id="402"><a href="#402">402</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_403"

><td id="403"><a href="#403">403</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_404"

><td id="404"><a href="#404">404</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_405"

><td id="405"><a href="#405">405</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_406"

><td id="406"><a href="#406">406</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_407"

><td id="407"><a href="#407">407</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_408"

><td id="408"><a href="#408">408</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_409"

><td id="409"><a href="#409">409</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_410"

><td id="410"><a href="#410">410</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_411"

><td id="411"><a href="#411">411</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_412"

><td id="412"><a href="#412">412</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_413"

><td id="413"><a href="#413">413</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_414"

><td id="414"><a href="#414">414</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_415"

><td id="415"><a href="#415">415</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_416"

><td id="416"><a href="#416">416</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_417"

><td id="417"><a href="#417">417</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_418"

><td id="418"><a href="#418">418</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_419"

><td id="419"><a href="#419">419</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_420"

><td id="420"><a href="#420">420</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_421"

><td id="421"><a href="#421">421</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_422"

><td id="422"><a href="#422">422</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_423"

><td id="423"><a href="#423">423</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_424"

><td id="424"><a href="#424">424</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_425"

><td id="425"><a href="#425">425</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_426"

><td id="426"><a href="#426">426</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_427"

><td id="427"><a href="#427">427</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_428"

><td id="428"><a href="#428">428</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_429"

><td id="429"><a href="#429">429</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_430"

><td id="430"><a href="#430">430</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_431"

><td id="431"><a href="#431">431</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_432"

><td id="432"><a href="#432">432</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_433"

><td id="433"><a href="#433">433</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_434"

><td id="434"><a href="#434">434</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_435"

><td id="435"><a href="#435">435</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_436"

><td id="436"><a href="#436">436</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_437"

><td id="437"><a href="#437">437</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_438"

><td id="438"><a href="#438">438</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_439"

><td id="439"><a href="#439">439</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_440"

><td id="440"><a href="#440">440</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_441"

><td id="441"><a href="#441">441</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_442"

><td id="442"><a href="#442">442</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_443"

><td id="443"><a href="#443">443</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_444"

><td id="444"><a href="#444">444</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_445"

><td id="445"><a href="#445">445</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_446"

><td id="446"><a href="#446">446</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_447"

><td id="447"><a href="#447">447</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_448"

><td id="448"><a href="#448">448</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_449"

><td id="449"><a href="#449">449</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_450"

><td id="450"><a href="#450">450</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_451"

><td id="451"><a href="#451">451</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_452"

><td id="452"><a href="#452">452</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_453"

><td id="453"><a href="#453">453</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_454"

><td id="454"><a href="#454">454</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_455"

><td id="455"><a href="#455">455</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_456"

><td id="456"><a href="#456">456</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_457"

><td id="457"><a href="#457">457</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_458"

><td id="458"><a href="#458">458</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_459"

><td id="459"><a href="#459">459</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_460"

><td id="460"><a href="#460">460</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_461"

><td id="461"><a href="#461">461</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_462"

><td id="462"><a href="#462">462</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_463"

><td id="463"><a href="#463">463</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_464"

><td id="464"><a href="#464">464</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_465"

><td id="465"><a href="#465">465</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_466"

><td id="466"><a href="#466">466</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_467"

><td id="467"><a href="#467">467</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_468"

><td id="468"><a href="#468">468</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_469"

><td id="469"><a href="#469">469</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_470"

><td id="470"><a href="#470">470</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_471"

><td id="471"><a href="#471">471</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_472"

><td id="472"><a href="#472">472</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_473"

><td id="473"><a href="#473">473</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_474"

><td id="474"><a href="#474">474</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_475"

><td id="475"><a href="#475">475</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_476"

><td id="476"><a href="#476">476</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_477"

><td id="477"><a href="#477">477</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_478"

><td id="478"><a href="#478">478</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_479"

><td id="479"><a href="#479">479</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_480"

><td id="480"><a href="#480">480</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_481"

><td id="481"><a href="#481">481</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_482"

><td id="482"><a href="#482">482</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_483"

><td id="483"><a href="#483">483</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_484"

><td id="484"><a href="#484">484</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_485"

><td id="485"><a href="#485">485</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_486"

><td id="486"><a href="#486">486</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_487"

><td id="487"><a href="#487">487</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_488"

><td id="488"><a href="#488">488</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_489"

><td id="489"><a href="#489">489</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_490"

><td id="490"><a href="#490">490</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_491"

><td id="491"><a href="#491">491</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_492"

><td id="492"><a href="#492">492</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_493"

><td id="493"><a href="#493">493</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_494"

><td id="494"><a href="#494">494</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_495"

><td id="495"><a href="#495">495</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_496"

><td id="496"><a href="#496">496</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_497"

><td id="497"><a href="#497">497</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_498"

><td id="498"><a href="#498">498</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_499"

><td id="499"><a href="#499">499</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_500"

><td id="500"><a href="#500">500</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_501"

><td id="501"><a href="#501">501</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_502"

><td id="502"><a href="#502">502</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_503"

><td id="503"><a href="#503">503</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_504"

><td id="504"><a href="#504">504</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_505"

><td id="505"><a href="#505">505</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_506"

><td id="506"><a href="#506">506</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_507"

><td id="507"><a href="#507">507</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_508"

><td id="508"><a href="#508">508</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_509"

><td id="509"><a href="#509">509</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_510"

><td id="510"><a href="#510">510</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_511"

><td id="511"><a href="#511">511</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_512"

><td id="512"><a href="#512">512</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_513"

><td id="513"><a href="#513">513</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_514"

><td id="514"><a href="#514">514</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_515"

><td id="515"><a href="#515">515</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_516"

><td id="516"><a href="#516">516</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_517"

><td id="517"><a href="#517">517</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_518"

><td id="518"><a href="#518">518</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_519"

><td id="519"><a href="#519">519</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_520"

><td id="520"><a href="#520">520</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_521"

><td id="521"><a href="#521">521</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_522"

><td id="522"><a href="#522">522</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_523"

><td id="523"><a href="#523">523</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_524"

><td id="524"><a href="#524">524</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_525"

><td id="525"><a href="#525">525</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_526"

><td id="526"><a href="#526">526</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_527"

><td id="527"><a href="#527">527</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_528"

><td id="528"><a href="#528">528</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_529"

><td id="529"><a href="#529">529</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_530"

><td id="530"><a href="#530">530</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_531"

><td id="531"><a href="#531">531</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_532"

><td id="532"><a href="#532">532</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_533"

><td id="533"><a href="#533">533</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_534"

><td id="534"><a href="#534">534</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_535"

><td id="535"><a href="#535">535</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_536"

><td id="536"><a href="#536">536</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_537"

><td id="537"><a href="#537">537</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_538"

><td id="538"><a href="#538">538</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_539"

><td id="539"><a href="#539">539</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_540"

><td id="540"><a href="#540">540</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_541"

><td id="541"><a href="#541">541</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_542"

><td id="542"><a href="#542">542</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_543"

><td id="543"><a href="#543">543</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_544"

><td id="544"><a href="#544">544</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_545"

><td id="545"><a href="#545">545</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_546"

><td id="546"><a href="#546">546</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_547"

><td id="547"><a href="#547">547</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_548"

><td id="548"><a href="#548">548</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_549"

><td id="549"><a href="#549">549</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_550"

><td id="550"><a href="#550">550</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_551"

><td id="551"><a href="#551">551</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_552"

><td id="552"><a href="#552">552</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_553"

><td id="553"><a href="#553">553</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_554"

><td id="554"><a href="#554">554</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_555"

><td id="555"><a href="#555">555</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_556"

><td id="556"><a href="#556">556</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_557"

><td id="557"><a href="#557">557</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_558"

><td id="558"><a href="#558">558</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_559"

><td id="559"><a href="#559">559</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_560"

><td id="560"><a href="#560">560</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_561"

><td id="561"><a href="#561">561</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_562"

><td id="562"><a href="#562">562</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_563"

><td id="563"><a href="#563">563</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_564"

><td id="564"><a href="#564">564</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_565"

><td id="565"><a href="#565">565</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_566"

><td id="566"><a href="#566">566</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_567"

><td id="567"><a href="#567">567</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_568"

><td id="568"><a href="#568">568</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_569"

><td id="569"><a href="#569">569</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_570"

><td id="570"><a href="#570">570</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_571"

><td id="571"><a href="#571">571</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_572"

><td id="572"><a href="#572">572</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_573"

><td id="573"><a href="#573">573</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_574"

><td id="574"><a href="#574">574</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_575"

><td id="575"><a href="#575">575</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_576"

><td id="576"><a href="#576">576</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_577"

><td id="577"><a href="#577">577</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_578"

><td id="578"><a href="#578">578</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_579"

><td id="579"><a href="#579">579</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_580"

><td id="580"><a href="#580">580</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_581"

><td id="581"><a href="#581">581</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_582"

><td id="582"><a href="#582">582</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_583"

><td id="583"><a href="#583">583</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_584"

><td id="584"><a href="#584">584</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_585"

><td id="585"><a href="#585">585</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_586"

><td id="586"><a href="#586">586</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_587"

><td id="587"><a href="#587">587</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_588"

><td id="588"><a href="#588">588</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_589"

><td id="589"><a href="#589">589</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_590"

><td id="590"><a href="#590">590</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_591"

><td id="591"><a href="#591">591</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_592"

><td id="592"><a href="#592">592</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_593"

><td id="593"><a href="#593">593</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_594"

><td id="594"><a href="#594">594</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_595"

><td id="595"><a href="#595">595</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_596"

><td id="596"><a href="#596">596</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_597"

><td id="597"><a href="#597">597</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_598"

><td id="598"><a href="#598">598</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_599"

><td id="599"><a href="#599">599</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_600"

><td id="600"><a href="#600">600</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_601"

><td id="601"><a href="#601">601</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_602"

><td id="602"><a href="#602">602</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_603"

><td id="603"><a href="#603">603</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_604"

><td id="604"><a href="#604">604</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_605"

><td id="605"><a href="#605">605</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_606"

><td id="606"><a href="#606">606</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_607"

><td id="607"><a href="#607">607</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_608"

><td id="608"><a href="#608">608</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_609"

><td id="609"><a href="#609">609</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_610"

><td id="610"><a href="#610">610</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_611"

><td id="611"><a href="#611">611</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_612"

><td id="612"><a href="#612">612</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_613"

><td id="613"><a href="#613">613</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_614"

><td id="614"><a href="#614">614</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_615"

><td id="615"><a href="#615">615</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_616"

><td id="616"><a href="#616">616</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_617"

><td id="617"><a href="#617">617</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_618"

><td id="618"><a href="#618">618</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_619"

><td id="619"><a href="#619">619</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_620"

><td id="620"><a href="#620">620</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_621"

><td id="621"><a href="#621">621</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_622"

><td id="622"><a href="#622">622</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_623"

><td id="623"><a href="#623">623</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_624"

><td id="624"><a href="#624">624</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_625"

><td id="625"><a href="#625">625</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_626"

><td id="626"><a href="#626">626</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_627"

><td id="627"><a href="#627">627</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_628"

><td id="628"><a href="#628">628</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_629"

><td id="629"><a href="#629">629</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_630"

><td id="630"><a href="#630">630</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_631"

><td id="631"><a href="#631">631</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_632"

><td id="632"><a href="#632">632</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_633"

><td id="633"><a href="#633">633</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_634"

><td id="634"><a href="#634">634</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_635"

><td id="635"><a href="#635">635</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_636"

><td id="636"><a href="#636">636</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_637"

><td id="637"><a href="#637">637</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_638"

><td id="638"><a href="#638">638</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_639"

><td id="639"><a href="#639">639</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_640"

><td id="640"><a href="#640">640</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_641"

><td id="641"><a href="#641">641</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_642"

><td id="642"><a href="#642">642</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_643"

><td id="643"><a href="#643">643</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_644"

><td id="644"><a href="#644">644</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_645"

><td id="645"><a href="#645">645</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_646"

><td id="646"><a href="#646">646</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_647"

><td id="647"><a href="#647">647</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_648"

><td id="648"><a href="#648">648</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_649"

><td id="649"><a href="#649">649</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_650"

><td id="650"><a href="#650">650</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_651"

><td id="651"><a href="#651">651</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_652"

><td id="652"><a href="#652">652</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_653"

><td id="653"><a href="#653">653</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_654"

><td id="654"><a href="#654">654</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_655"

><td id="655"><a href="#655">655</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_656"

><td id="656"><a href="#656">656</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_657"

><td id="657"><a href="#657">657</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_658"

><td id="658"><a href="#658">658</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_659"

><td id="659"><a href="#659">659</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_660"

><td id="660"><a href="#660">660</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_661"

><td id="661"><a href="#661">661</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_662"

><td id="662"><a href="#662">662</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_663"

><td id="663"><a href="#663">663</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_664"

><td id="664"><a href="#664">664</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_665"

><td id="665"><a href="#665">665</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_666"

><td id="666"><a href="#666">666</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_667"

><td id="667"><a href="#667">667</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_668"

><td id="668"><a href="#668">668</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_669"

><td id="669"><a href="#669">669</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_670"

><td id="670"><a href="#670">670</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_671"

><td id="671"><a href="#671">671</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_672"

><td id="672"><a href="#672">672</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_673"

><td id="673"><a href="#673">673</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_674"

><td id="674"><a href="#674">674</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_675"

><td id="675"><a href="#675">675</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_676"

><td id="676"><a href="#676">676</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_677"

><td id="677"><a href="#677">677</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_678"

><td id="678"><a href="#678">678</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_679"

><td id="679"><a href="#679">679</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_680"

><td id="680"><a href="#680">680</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_681"

><td id="681"><a href="#681">681</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_682"

><td id="682"><a href="#682">682</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_683"

><td id="683"><a href="#683">683</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_684"

><td id="684"><a href="#684">684</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_685"

><td id="685"><a href="#685">685</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_686"

><td id="686"><a href="#686">686</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_687"

><td id="687"><a href="#687">687</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_688"

><td id="688"><a href="#688">688</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_689"

><td id="689"><a href="#689">689</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_690"

><td id="690"><a href="#690">690</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_691"

><td id="691"><a href="#691">691</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_692"

><td id="692"><a href="#692">692</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_693"

><td id="693"><a href="#693">693</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_694"

><td id="694"><a href="#694">694</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_695"

><td id="695"><a href="#695">695</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_696"

><td id="696"><a href="#696">696</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_697"

><td id="697"><a href="#697">697</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_698"

><td id="698"><a href="#698">698</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_699"

><td id="699"><a href="#699">699</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_700"

><td id="700"><a href="#700">700</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_701"

><td id="701"><a href="#701">701</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_702"

><td id="702"><a href="#702">702</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_703"

><td id="703"><a href="#703">703</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_704"

><td id="704"><a href="#704">704</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_705"

><td id="705"><a href="#705">705</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_706"

><td id="706"><a href="#706">706</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_707"

><td id="707"><a href="#707">707</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_708"

><td id="708"><a href="#708">708</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_709"

><td id="709"><a href="#709">709</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_710"

><td id="710"><a href="#710">710</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_711"

><td id="711"><a href="#711">711</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_712"

><td id="712"><a href="#712">712</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_713"

><td id="713"><a href="#713">713</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_714"

><td id="714"><a href="#714">714</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_715"

><td id="715"><a href="#715">715</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_716"

><td id="716"><a href="#716">716</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_717"

><td id="717"><a href="#717">717</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_718"

><td id="718"><a href="#718">718</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_719"

><td id="719"><a href="#719">719</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_720"

><td id="720"><a href="#720">720</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_721"

><td id="721"><a href="#721">721</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_722"

><td id="722"><a href="#722">722</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_723"

><td id="723"><a href="#723">723</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_724"

><td id="724"><a href="#724">724</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_725"

><td id="725"><a href="#725">725</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_726"

><td id="726"><a href="#726">726</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_727"

><td id="727"><a href="#727">727</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_728"

><td id="728"><a href="#728">728</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_729"

><td id="729"><a href="#729">729</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_730"

><td id="730"><a href="#730">730</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_731"

><td id="731"><a href="#731">731</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_732"

><td id="732"><a href="#732">732</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_733"

><td id="733"><a href="#733">733</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_734"

><td id="734"><a href="#734">734</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_735"

><td id="735"><a href="#735">735</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_736"

><td id="736"><a href="#736">736</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_737"

><td id="737"><a href="#737">737</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_738"

><td id="738"><a href="#738">738</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_739"

><td id="739"><a href="#739">739</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_740"

><td id="740"><a href="#740">740</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_741"

><td id="741"><a href="#741">741</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_742"

><td id="742"><a href="#742">742</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_743"

><td id="743"><a href="#743">743</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_744"

><td id="744"><a href="#744">744</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_745"

><td id="745"><a href="#745">745</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_746"

><td id="746"><a href="#746">746</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_747"

><td id="747"><a href="#747">747</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_748"

><td id="748"><a href="#748">748</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_749"

><td id="749"><a href="#749">749</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_750"

><td id="750"><a href="#750">750</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_751"

><td id="751"><a href="#751">751</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_752"

><td id="752"><a href="#752">752</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_753"

><td id="753"><a href="#753">753</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_754"

><td id="754"><a href="#754">754</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_755"

><td id="755"><a href="#755">755</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_756"

><td id="756"><a href="#756">756</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_757"

><td id="757"><a href="#757">757</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_758"

><td id="758"><a href="#758">758</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_759"

><td id="759"><a href="#759">759</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_760"

><td id="760"><a href="#760">760</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_761"

><td id="761"><a href="#761">761</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_762"

><td id="762"><a href="#762">762</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_763"

><td id="763"><a href="#763">763</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_764"

><td id="764"><a href="#764">764</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_765"

><td id="765"><a href="#765">765</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_766"

><td id="766"><a href="#766">766</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_767"

><td id="767"><a href="#767">767</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_768"

><td id="768"><a href="#768">768</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_769"

><td id="769"><a href="#769">769</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_770"

><td id="770"><a href="#770">770</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_771"

><td id="771"><a href="#771">771</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_772"

><td id="772"><a href="#772">772</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_773"

><td id="773"><a href="#773">773</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_774"

><td id="774"><a href="#774">774</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_775"

><td id="775"><a href="#775">775</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_776"

><td id="776"><a href="#776">776</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_777"

><td id="777"><a href="#777">777</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_778"

><td id="778"><a href="#778">778</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_779"

><td id="779"><a href="#779">779</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_780"

><td id="780"><a href="#780">780</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_781"

><td id="781"><a href="#781">781</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_782"

><td id="782"><a href="#782">782</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_783"

><td id="783"><a href="#783">783</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_784"

><td id="784"><a href="#784">784</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_785"

><td id="785"><a href="#785">785</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_786"

><td id="786"><a href="#786">786</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_787"

><td id="787"><a href="#787">787</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_788"

><td id="788"><a href="#788">788</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_789"

><td id="789"><a href="#789">789</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_790"

><td id="790"><a href="#790">790</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_791"

><td id="791"><a href="#791">791</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_792"

><td id="792"><a href="#792">792</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_793"

><td id="793"><a href="#793">793</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_794"

><td id="794"><a href="#794">794</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_795"

><td id="795"><a href="#795">795</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_796"

><td id="796"><a href="#796">796</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_797"

><td id="797"><a href="#797">797</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_798"

><td id="798"><a href="#798">798</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_799"

><td id="799"><a href="#799">799</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_800"

><td id="800"><a href="#800">800</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_801"

><td id="801"><a href="#801">801</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_802"

><td id="802"><a href="#802">802</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_803"

><td id="803"><a href="#803">803</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_804"

><td id="804"><a href="#804">804</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_805"

><td id="805"><a href="#805">805</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_806"

><td id="806"><a href="#806">806</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_807"

><td id="807"><a href="#807">807</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_808"

><td id="808"><a href="#808">808</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_809"

><td id="809"><a href="#809">809</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_810"

><td id="810"><a href="#810">810</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_811"

><td id="811"><a href="#811">811</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_812"

><td id="812"><a href="#812">812</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_813"

><td id="813"><a href="#813">813</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_814"

><td id="814"><a href="#814">814</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_815"

><td id="815"><a href="#815">815</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_816"

><td id="816"><a href="#816">816</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_817"

><td id="817"><a href="#817">817</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_818"

><td id="818"><a href="#818">818</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_819"

><td id="819"><a href="#819">819</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_820"

><td id="820"><a href="#820">820</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_821"

><td id="821"><a href="#821">821</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_822"

><td id="822"><a href="#822">822</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_823"

><td id="823"><a href="#823">823</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_824"

><td id="824"><a href="#824">824</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_825"

><td id="825"><a href="#825">825</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_826"

><td id="826"><a href="#826">826</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_827"

><td id="827"><a href="#827">827</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_828"

><td id="828"><a href="#828">828</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_829"

><td id="829"><a href="#829">829</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_830"

><td id="830"><a href="#830">830</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_831"

><td id="831"><a href="#831">831</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_832"

><td id="832"><a href="#832">832</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_833"

><td id="833"><a href="#833">833</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_834"

><td id="834"><a href="#834">834</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_835"

><td id="835"><a href="#835">835</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_836"

><td id="836"><a href="#836">836</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_837"

><td id="837"><a href="#837">837</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_838"

><td id="838"><a href="#838">838</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_839"

><td id="839"><a href="#839">839</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_840"

><td id="840"><a href="#840">840</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_841"

><td id="841"><a href="#841">841</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_842"

><td id="842"><a href="#842">842</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_843"

><td id="843"><a href="#843">843</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_844"

><td id="844"><a href="#844">844</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_845"

><td id="845"><a href="#845">845</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_846"

><td id="846"><a href="#846">846</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_847"

><td id="847"><a href="#847">847</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_848"

><td id="848"><a href="#848">848</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_849"

><td id="849"><a href="#849">849</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_850"

><td id="850"><a href="#850">850</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_851"

><td id="851"><a href="#851">851</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_852"

><td id="852"><a href="#852">852</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_853"

><td id="853"><a href="#853">853</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_854"

><td id="854"><a href="#854">854</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_855"

><td id="855"><a href="#855">855</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_856"

><td id="856"><a href="#856">856</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_857"

><td id="857"><a href="#857">857</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_858"

><td id="858"><a href="#858">858</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_859"

><td id="859"><a href="#859">859</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_860"

><td id="860"><a href="#860">860</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_861"

><td id="861"><a href="#861">861</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_862"

><td id="862"><a href="#862">862</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_863"

><td id="863"><a href="#863">863</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_864"

><td id="864"><a href="#864">864</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_865"

><td id="865"><a href="#865">865</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_866"

><td id="866"><a href="#866">866</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_867"

><td id="867"><a href="#867">867</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_868"

><td id="868"><a href="#868">868</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_869"

><td id="869"><a href="#869">869</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_870"

><td id="870"><a href="#870">870</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_871"

><td id="871"><a href="#871">871</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_872"

><td id="872"><a href="#872">872</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_873"

><td id="873"><a href="#873">873</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_874"

><td id="874"><a href="#874">874</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_875"

><td id="875"><a href="#875">875</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_876"

><td id="876"><a href="#876">876</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_877"

><td id="877"><a href="#877">877</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_878"

><td id="878"><a href="#878">878</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_879"

><td id="879"><a href="#879">879</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_880"

><td id="880"><a href="#880">880</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_881"

><td id="881"><a href="#881">881</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_882"

><td id="882"><a href="#882">882</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_883"

><td id="883"><a href="#883">883</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_884"

><td id="884"><a href="#884">884</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_885"

><td id="885"><a href="#885">885</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_886"

><td id="886"><a href="#886">886</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_887"

><td id="887"><a href="#887">887</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_888"

><td id="888"><a href="#888">888</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_889"

><td id="889"><a href="#889">889</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_890"

><td id="890"><a href="#890">890</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_891"

><td id="891"><a href="#891">891</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_892"

><td id="892"><a href="#892">892</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_893"

><td id="893"><a href="#893">893</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_894"

><td id="894"><a href="#894">894</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_895"

><td id="895"><a href="#895">895</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_896"

><td id="896"><a href="#896">896</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_897"

><td id="897"><a href="#897">897</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_898"

><td id="898"><a href="#898">898</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_899"

><td id="899"><a href="#899">899</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_900"

><td id="900"><a href="#900">900</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_901"

><td id="901"><a href="#901">901</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_902"

><td id="902"><a href="#902">902</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_903"

><td id="903"><a href="#903">903</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_904"

><td id="904"><a href="#904">904</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_905"

><td id="905"><a href="#905">905</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_906"

><td id="906"><a href="#906">906</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_907"

><td id="907"><a href="#907">907</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_908"

><td id="908"><a href="#908">908</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_909"

><td id="909"><a href="#909">909</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_910"

><td id="910"><a href="#910">910</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_911"

><td id="911"><a href="#911">911</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_912"

><td id="912"><a href="#912">912</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_913"

><td id="913"><a href="#913">913</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_914"

><td id="914"><a href="#914">914</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_915"

><td id="915"><a href="#915">915</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_916"

><td id="916"><a href="#916">916</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_917"

><td id="917"><a href="#917">917</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_918"

><td id="918"><a href="#918">918</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_919"

><td id="919"><a href="#919">919</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_920"

><td id="920"><a href="#920">920</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_921"

><td id="921"><a href="#921">921</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_922"

><td id="922"><a href="#922">922</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_923"

><td id="923"><a href="#923">923</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_924"

><td id="924"><a href="#924">924</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_925"

><td id="925"><a href="#925">925</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_926"

><td id="926"><a href="#926">926</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_927"

><td id="927"><a href="#927">927</a></td></tr
><tr id="gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_928"

><td id="928"><a href="#928">928</a></td></tr
></table></pre>
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
</td>
<td id="lines">
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
<pre class="prettyprint lang-el"><table id="src_table_0"><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_1

><td class="source">;;; go-mode.el --- Major mode for the Go programming language<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_2

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_3

><td class="source">;; Copyright 2013 The Go Authors. All rights reserved.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_4

><td class="source">;; Use of this source code is governed by a BSD-style<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_5

><td class="source">;; license that can be found in the LICENSE file.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_6

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_7

><td class="source">(require &#39;cl)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_8

><td class="source">(require &#39;ffap)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_9

><td class="source">(require &#39;url)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_10

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_11

><td class="source">;; XEmacs compatibility guidelines<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_12

><td class="source">;; - Minimum required version of XEmacs: 21.5.32<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_13

><td class="source">;;   - Feature that cannot be backported: POSIX character classes in<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_14

><td class="source">;;     regular expressions<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_15

><td class="source">;;   - Functions that could be backported but won&#39;t because 21.5.32<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_16

><td class="source">;;     covers them: plenty.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_17

><td class="source">;;   - Features that are still partly broken:<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_18

><td class="source">;;     - godef will not work correctly if multibyte characters are<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_19

><td class="source">;;       being used<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_20

><td class="source">;;     - Fontification will not handle unicode correctly<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_21

><td class="source">;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_22

><td class="source">;; - Do not use \_&lt; and \_&gt; regexp delimiters directly; use<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_23

><td class="source">;;   go--regexp-enclose-in-symbol<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_24

><td class="source">;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_25

><td class="source">;; - The character `_` must not be a symbol constituent but a<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_26

><td class="source">;;   character constituent<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_27

><td class="source">;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_28

><td class="source">;; - Do not use process-lines<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_29

><td class="source">;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_30

><td class="source">;; - Use go--old-completion-list-style when using a plain list as the<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_31

><td class="source">;;   collection for completing-read<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_32

><td class="source">;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_33

><td class="source">;; - Use go--kill-whole-line instead of kill-whole-line (called<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_34

><td class="source">;;   kill-entire-line in XEmacs)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_35

><td class="source">;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_36

><td class="source">;; - Use go--position-bytes instead of position-bytes<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_37

><td class="source">(defmacro go--xemacs-p ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_38

><td class="source">  `(featurep &#39;xemacs))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_39

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_40

><td class="source">(defalias &#39;go--kill-whole-line<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_41

><td class="source">  (if (fboundp &#39;kill-whole-line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_42

><td class="source">      &#39;kill-whole-line<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_43

><td class="source">    &#39;kill-entire-line))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_44

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_45

><td class="source">;; Delete the current line without putting it in the kill-ring.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_46

><td class="source">(defun go--delete-whole-line (&amp;optional arg)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_47

><td class="source">  ;; Emacs uses both kill-region and kill-new, Xemacs only uses<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_48

><td class="source">  ;; kill-region. In both cases we turn them into operations that do<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_49

><td class="source">  ;; not modify the kill ring. This solution does depend on the<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_50

><td class="source">  ;; implementation of kill-line, but it&#39;s the only viable solution<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_51

><td class="source">  ;; that does not require to write kill-line from scratch.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_52

><td class="source">  (flet ((kill-region (beg end)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_53

><td class="source">                      (delete-region beg end))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_54

><td class="source">         (kill-new (s) ()))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_55

><td class="source">    (go--kill-whole-line arg)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_56

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_57

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_58

><td class="source">;; XEmacs unfortunately does not offer position-bytes. We can fall<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_59

><td class="source">;; back to just using (point), but it will be incorrect as soon as<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_60

><td class="source">;; multibyte characters are being used.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_61

><td class="source">(if (fboundp &#39;position-bytes)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_62

><td class="source">    (defalias &#39;go--position-bytes &#39;position-bytes)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_63

><td class="source">  (defun go--position-bytes (point) point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_64

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_65

><td class="source">(defun go--old-completion-list-style (list)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_66

><td class="source">  (mapcar (lambda (x) (cons x nil)) list))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_67

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_68

><td class="source">;; GNU Emacs 24 has prog-mode, older GNU Emacs and XEmacs do not.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_69

><td class="source">;; Ideally we&#39;d use defalias instead, but that breaks in XEmacs.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_70

><td class="source">;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_71

><td class="source">;; TODO: If XEmacs decides to add prog-mode, change this to use<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_72

><td class="source">;; defalias to alias prog-mode or fundamental-mode to go--prog-mode<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_73

><td class="source">;; and use that in define-derived-mode.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_74

><td class="source">(if (not (fboundp &#39;prog-mode))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_75

><td class="source">    (define-derived-mode prog-mode fundamental-mode &quot;&quot; &quot;&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_76

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_77

><td class="source">(defun go--regexp-enclose-in-symbol (s)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_78

><td class="source">  ;; XEmacs does not support \_&lt;, GNU Emacs does. In GNU Emacs we make<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_79

><td class="source">  ;; extensive use of \_&lt; to support unicode in identifiers. Until we<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_80

><td class="source">  ;; come up with a better solution for XEmacs, this solution will<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_81

><td class="source">  ;; break fontification in XEmacs for identifiers such as &quot;typeµ&quot;.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_82

><td class="source">  ;; XEmacs will consider &quot;type&quot; a keyword, GNU Emacs won&#39;t.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_83

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_84

><td class="source">  (if (go--xemacs-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_85

><td class="source">      (concat &quot;\\&lt;&quot; s &quot;\\&gt;&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_86

><td class="source">    (concat &quot;\\_&lt;&quot; s &quot;\\_&gt;&quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_87

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_88

><td class="source">(defconst go-dangling-operators-regexp &quot;[^-]-\\|[^+]\\+\\|[/*&amp;&gt;&lt;.=|^]&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_89

><td class="source">(defconst go-identifier-regexp &quot;[[:word:][:multibyte:]]+&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_90

><td class="source">(defconst go-label-regexp go-identifier-regexp)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_91

><td class="source">(defconst go-type-regexp &quot;[[:word:][:multibyte:]*]+&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_92

><td class="source">(defconst go-func-regexp (concat (go--regexp-enclose-in-symbol &quot;func&quot;) &quot;\\s *\\(&quot; go-identifier-regexp &quot;\\)&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_93

><td class="source">(defconst go-func-meth-regexp (concat<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_94

><td class="source">                               (go--regexp-enclose-in-symbol &quot;func&quot;) &quot;\\s *\\(?:(\\s *&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_95

><td class="source">                               &quot;\\(&quot; go-identifier-regexp &quot;\\s +\\)?&quot; go-type-regexp<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_96

><td class="source">                               &quot;\\s *)\\s *\\)?\\(&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_97

><td class="source">                               go-identifier-regexp<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_98

><td class="source">                               &quot;\\)(&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_99

><td class="source">(defconst go-builtins<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_100

><td class="source">  &#39;(&quot;append&quot; &quot;cap&quot;   &quot;close&quot;   &quot;complex&quot; &quot;copy&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_101

><td class="source">    &quot;delete&quot; &quot;imag&quot;  &quot;len&quot;     &quot;make&quot;    &quot;new&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_102

><td class="source">    &quot;panic&quot;  &quot;print&quot; &quot;println&quot; &quot;real&quot;    &quot;recover&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_103

><td class="source">  &quot;All built-in functions in the Go language. Used for font locking.&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_104

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_105

><td class="source">(defconst go-mode-keywords<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_106

><td class="source">  &#39;(&quot;break&quot;    &quot;default&quot;     &quot;func&quot;   &quot;interface&quot; &quot;select&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_107

><td class="source">    &quot;case&quot;     &quot;defer&quot;       &quot;go&quot;     &quot;map&quot;       &quot;struct&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_108

><td class="source">    &quot;chan&quot;     &quot;else&quot;        &quot;goto&quot;   &quot;package&quot;   &quot;switch&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_109

><td class="source">    &quot;const&quot;    &quot;fallthrough&quot; &quot;if&quot;     &quot;range&quot;     &quot;type&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_110

><td class="source">    &quot;continue&quot; &quot;for&quot;         &quot;import&quot; &quot;return&quot;    &quot;var&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_111

><td class="source">  &quot;All keywords in the Go language.  Used for font locking.&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_112

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_113

><td class="source">(defconst go-constants &#39;(&quot;nil&quot; &quot;true&quot; &quot;false&quot; &quot;iota&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_114

><td class="source">(defconst go-type-name-regexp (concat &quot;\\(?:[*(]\\)*\\(?:&quot; go-identifier-regexp &quot;\\.\\)?\\(&quot; go-identifier-regexp &quot;\\)&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_115

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_116

><td class="source">(defvar go-dangling-cache)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_117

><td class="source">(defvar go-godoc-history nil)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_118

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_119

><td class="source">(defgroup go nil<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_120

><td class="source">  &quot;Major mode for editing Go code&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_121

><td class="source">  :group &#39;languages)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_122

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_123

><td class="source">(defcustom go-fontify-function-calls t<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_124

><td class="source">  &quot;Fontify function and method calls if this is non-nil.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_125

><td class="source">  :type &#39;boolean<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_126

><td class="source">  :group &#39;go)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_127

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_128

><td class="source">(defvar go-mode-syntax-table<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_129

><td class="source">  (let ((st (make-syntax-table)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_130

><td class="source">    (modify-syntax-entry ?+  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_131

><td class="source">    (modify-syntax-entry ?-  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_132

><td class="source">    (modify-syntax-entry ?%  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_133

><td class="source">    (modify-syntax-entry ?&amp;  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_134

><td class="source">    (modify-syntax-entry ?|  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_135

><td class="source">    (modify-syntax-entry ?^  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_136

><td class="source">    (modify-syntax-entry ?!  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_137

><td class="source">    (modify-syntax-entry ?=  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_138

><td class="source">    (modify-syntax-entry ?&lt;  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_139

><td class="source">    (modify-syntax-entry ?&gt;  &quot;.&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_140

><td class="source">    (modify-syntax-entry ?/ (if (go--xemacs-p) &quot;. 1456&quot; &quot;. 124b&quot;) st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_141

><td class="source">    (modify-syntax-entry ?*  &quot;. 23&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_142

><td class="source">    (modify-syntax-entry ?\n &quot;&gt; b&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_143

><td class="source">    (modify-syntax-entry ?\&quot; &quot;\&quot;&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_144

><td class="source">    (modify-syntax-entry ?\&#39; &quot;\&quot;&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_145

><td class="source">    (modify-syntax-entry ?`  &quot;\&quot;&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_146

><td class="source">    (modify-syntax-entry ?\\ &quot;\\&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_147

><td class="source">    ;; It would be nicer to have _ as a symbol constituent, but that<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_148

><td class="source">    ;; would trip up XEmacs, which does not support the \_&lt; anchor<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_149

><td class="source">    (modify-syntax-entry ?_  &quot;w&quot; st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_150

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_151

><td class="source">    st)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_152

><td class="source">  &quot;Syntax table for Go mode.&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_153

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_154

><td class="source">(defun go--build-font-lock-keywords ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_155

><td class="source">  ;; we cannot use &#39;symbols in regexp-opt because emacs &lt;24 doesn&#39;t<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_156

><td class="source">  ;; understand that<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_157

><td class="source">  (append<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_158

><td class="source">   `((,(go--regexp-enclose-in-symbol (regexp-opt go-mode-keywords t)) . font-lock-keyword-face)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_159

><td class="source">     (,(go--regexp-enclose-in-symbol (regexp-opt go-builtins t)) . font-lock-builtin-face)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_160

><td class="source">     (,(go--regexp-enclose-in-symbol (regexp-opt go-constants t)) . font-lock-constant-face)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_161

><td class="source">     (,go-func-regexp 1 font-lock-function-name-face)) ;; function (not method) name<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_162

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_163

><td class="source">   (if go-fontify-function-calls<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_164

><td class="source">       `((,(concat &quot;\\(&quot; go-identifier-regexp &quot;\\)[[:space:]]*(&quot;) 1 font-lock-function-name-face) ;; function call/method name<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_165

><td class="source">         (,(concat &quot;(\\(&quot; go-identifier-regexp &quot;\\))[[:space:]]*(&quot;) 1 font-lock-function-name-face)) ;; bracketed function call<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_166

><td class="source">     `((,go-func-meth-regexp 1 font-lock-function-name-face))) ;; method name<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_167

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_168

><td class="source">   `(<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_169

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;type&quot;) &quot;[[:space:]]*\\([^[:space:]]+\\)&quot;) 1 font-lock-type-face) ;; types<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_170

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;type&quot;) &quot;[[:space:]]*&quot; go-identifier-regexp &quot;[[:space:]]*&quot; go-type-name-regexp) 1 font-lock-type-face) ;; types<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_171

><td class="source">     (,(concat &quot;[^[:word:][:multibyte:]]\\[\\([[:digit:]]+\\|\\.\\.\\.\\)?\\]&quot; go-type-name-regexp) 2 font-lock-type-face) ;; Arrays/slices<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_172

><td class="source">     (,(concat &quot;\\(&quot; go-identifier-regexp &quot;\\)&quot; &quot;{&quot;) 1 font-lock-type-face)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_173

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;map&quot;) &quot;\\[[^]]+\\]&quot; go-type-name-regexp) 1 font-lock-type-face) ;; map value type<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_174

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;map&quot;) &quot;\\[&quot; go-type-name-regexp) 1 font-lock-type-face) ;; map key type<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_175

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;chan&quot;) &quot;[[:space:]]*\\(?:&lt;-\\)?&quot; go-type-name-regexp) 1 font-lock-type-face) ;; channel type<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_176

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;\\(?:new\\|make\\)&quot;) &quot;\\(?:[[:space:]]\\|)\\)*(&quot; go-type-name-regexp) 1 font-lock-type-face) ;; new/make type<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_177

><td class="source">     ;; TODO do we actually need this one or isn&#39;t it just a function call?<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_178

><td class="source">     (,(concat &quot;\\.\\s *(&quot; go-type-name-regexp) 1 font-lock-type-face) ;; Type conversion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_179

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;func&quot;) &quot;[[:space:]]+(&quot; go-identifier-regexp &quot;[[:space:]]+&quot; go-type-name-regexp &quot;)&quot;) 1 font-lock-type-face) ;; Method receiver<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_180

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;func&quot;) &quot;[[:space:]]+(&quot; go-type-name-regexp &quot;)&quot;) 1 font-lock-type-face) ;; Method receiver without variable name<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_181

><td class="source">     ;; Like the original go-mode this also marks compound literal<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_182

><td class="source">     ;; fields. There, it was marked as to fix, but I grew quite<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_183

><td class="source">     ;; accustomed to it, so it&#39;ll stay for now.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_184

><td class="source">     (,(concat &quot;^[[:space:]]*\\(&quot; go-label-regexp &quot;\\)[[:space:]]*:\\(\\S.\\|$\\)&quot;) 1 font-lock-constant-face) ;; Labels and compound literal fields<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_185

><td class="source">     (,(concat (go--regexp-enclose-in-symbol &quot;\\(goto\\|break\\|continue\\)&quot;) &quot;[[:space:]]*\\(&quot; go-label-regexp &quot;\\)&quot;) 2 font-lock-constant-face)))) ;; labels in goto/break/continue<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_186

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_187

><td class="source">(defvar go-mode-map<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_188

><td class="source">  (let ((m (make-sparse-keymap)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_189

><td class="source">    (define-key m &quot;}&quot; &#39;go-mode-insert-and-indent)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_190

><td class="source">    (define-key m &quot;)&quot; &#39;go-mode-insert-and-indent)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_191

><td class="source">    (define-key m &quot;,&quot; &#39;go-mode-insert-and-indent)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_192

><td class="source">    (define-key m &quot;:&quot; &#39;go-mode-insert-and-indent)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_193

><td class="source">    (define-key m &quot;=&quot; &#39;go-mode-insert-and-indent)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_194

><td class="source">    (define-key m (kbd &quot;C-c C-a&quot;) &#39;go-import-add)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_195

><td class="source">    (define-key m (kbd &quot;C-c C-j&quot;) &#39;godef-jump)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_196

><td class="source">    (define-key m (kbd &quot;C-c C-d&quot;) &#39;godef-describe)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_197

><td class="source">    m)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_198

><td class="source">  &quot;Keymap used by Go mode to implement electric keys.&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_199

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_200

><td class="source">(defun go-mode-insert-and-indent (key)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_201

><td class="source">  &quot;Invoke the global binding of KEY, then reindent the line.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_202

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_203

><td class="source">  (interactive (list (this-command-keys)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_204

><td class="source">  (call-interactively (lookup-key (current-global-map) key))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_205

><td class="source">  (indent-according-to-mode))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_206

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_207

><td class="source">(defmacro go-paren-level ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_208

><td class="source">  `(car (syntax-ppss)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_209

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_210

><td class="source">(defmacro go-in-string-or-comment-p ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_211

><td class="source">  `(nth 8 (syntax-ppss)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_212

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_213

><td class="source">(defmacro go-in-string-p ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_214

><td class="source">  `(nth 3 (syntax-ppss)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_215

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_216

><td class="source">(defmacro go-in-comment-p ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_217

><td class="source">  `(nth 4 (syntax-ppss)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_218

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_219

><td class="source">(defmacro go-goto-beginning-of-string-or-comment ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_220

><td class="source">  `(goto-char (nth 8 (syntax-ppss))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_221

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_222

><td class="source">(defun go--backward-irrelevant (&amp;optional stop-at-string)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_223

><td class="source">  &quot;Skips backwards over any characters that are irrelevant for<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_224

><td class="source">indentation and related tasks.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_225

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_226

><td class="source">It skips over whitespace, comments, cases and labels and, if<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_227

><td class="source">STOP-AT-STRING is not true, over strings.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_228

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_229

><td class="source">  (let (pos (start-pos (point)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_230

><td class="source">    (skip-chars-backward &quot;\n\s\t&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_231

><td class="source">    (if (and (save-excursion (beginning-of-line) (go-in-string-p)) (looking-back &quot;`&quot;) (not stop-at-string))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_232

><td class="source">        (backward-char))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_233

><td class="source">    (if (and (go-in-string-p) (not stop-at-string))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_234

><td class="source">        (go-goto-beginning-of-string-or-comment))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_235

><td class="source">    (if (looking-back &quot;\\*/&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_236

><td class="source">        (backward-char))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_237

><td class="source">    (if (go-in-comment-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_238

><td class="source">        (go-goto-beginning-of-string-or-comment))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_239

><td class="source">    (setq pos (point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_240

><td class="source">    (beginning-of-line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_241

><td class="source">    (if (or (looking-at (concat &quot;^&quot; go-label-regexp &quot;:&quot;)) (looking-at &quot;^[[:space:]]*\\(case .+\\|default\\):&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_242

><td class="source">        (end-of-line 0)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_243

><td class="source">      (goto-char pos))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_244

><td class="source">    (if (/= start-pos (point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_245

><td class="source">        (go--backward-irrelevant stop-at-string))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_246

><td class="source">    (/= start-pos (point))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_247

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_248

><td class="source">(defun go--buffer-narrowed-p ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_249

><td class="source">  &quot;Return non-nil if the current buffer is narrowed.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_250

><td class="source">  (/= (buffer-size)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_251

><td class="source">      (- (point-max)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_252

><td class="source">         (point-min))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_253

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_254

><td class="source">(defun go-previous-line-has-dangling-op-p ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_255

><td class="source">  &quot;Returns non-nil if the current line is a continuation line.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_256

><td class="source">  (let* ((cur-line (line-number-at-pos))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_257

><td class="source">         (val (gethash cur-line go-dangling-cache &#39;nope)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_258

><td class="source">    (if (or (go--buffer-narrowed-p) (equal val &#39;nope))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_259

><td class="source">        (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_260

><td class="source">          (beginning-of-line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_261

><td class="source">          (go--backward-irrelevant t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_262

><td class="source">          (setq val (looking-back go-dangling-operators-regexp))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_263

><td class="source">          (if (not (go--buffer-narrowed-p))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_264

><td class="source">              (puthash cur-line val go-dangling-cache))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_265

><td class="source">    val))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_266

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_267

><td class="source">(defun go--at-function-definition ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_268

><td class="source">  &quot;Return non-nil if point is on the opening curly brace of a<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_269

><td class="source">function definition.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_270

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_271

><td class="source">We do this by first calling (beginning-of-defun), which will take<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_272

><td class="source">us to the start of *some* function. We then look for the opening<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_273

><td class="source">curly brace of that function and compare its position against the<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_274

><td class="source">curly brace we are checking. If they match, we return non-nil.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_275

><td class="source">  (if (= (char-after) ?\{)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_276

><td class="source">      (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_277

><td class="source">        (let ((old-point (point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_278

><td class="source">              start-nesting)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_279

><td class="source">          (beginning-of-defun)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_280

><td class="source">          (when (looking-at &quot;func &quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_281

><td class="source">            (setq start-nesting (go-paren-level))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_282

><td class="source">            (skip-chars-forward &quot;^{&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_283

><td class="source">            (while (&gt; (go-paren-level) start-nesting)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_284

><td class="source">              (forward-char)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_285

><td class="source">              (skip-chars-forward &quot;^{&quot;) 0)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_286

><td class="source">            (if (and (= (go-paren-level) start-nesting) (= old-point (point)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_287

><td class="source">                t))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_288

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_289

><td class="source">(defun go-goto-opening-parenthesis (&amp;optional char)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_290

><td class="source">  (let ((start-nesting (go-paren-level)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_291

><td class="source">    (while (and (not (bobp))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_292

><td class="source">                (&gt;= (go-paren-level) start-nesting))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_293

><td class="source">      (if (zerop (skip-chars-backward<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_294

><td class="source">                  (if char<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_295

><td class="source">                      (case char (?\] &quot;^[&quot;) (?\} &quot;^{&quot;) (?\) &quot;^(&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_296

><td class="source">                    &quot;^[{(&quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_297

><td class="source">          (if (go-in-string-or-comment-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_298

><td class="source">              (go-goto-beginning-of-string-or-comment)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_299

><td class="source">            (backward-char))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_300

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_301

><td class="source">(defun go--indentation-for-opening-parenthesis ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_302

><td class="source">  &quot;Return the semantic indentation for the current opening parenthesis.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_303

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_304

><td class="source">If point is on an opening curly brace and said curly brace<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_305

><td class="source">belongs to a function declaration, the indentation of the func<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_306

><td class="source">keyword will be returned. Otherwise the indentation of the<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_307

><td class="source">current line will be returned.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_308

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_309

><td class="source">    (if (go--at-function-definition)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_310

><td class="source">        (progn<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_311

><td class="source">          (beginning-of-defun)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_312

><td class="source">          (current-indentation))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_313

><td class="source">      (current-indentation))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_314

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_315

><td class="source">(defun go-indentation-at-point ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_316

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_317

><td class="source">    (let (start-nesting (outindent 0))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_318

><td class="source">      (back-to-indentation)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_319

><td class="source">      (setq start-nesting (go-paren-level))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_320

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_321

><td class="source">      (cond<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_322

><td class="source">       ((go-in-string-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_323

><td class="source">        (current-indentation))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_324

><td class="source">       ((looking-at &quot;[])}]&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_325

><td class="source">        (go-goto-opening-parenthesis (char-after))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_326

><td class="source">        (if (go-previous-line-has-dangling-op-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_327

><td class="source">            (- (current-indentation) tab-width)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_328

><td class="source">          (go--indentation-for-opening-parenthesis)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_329

><td class="source">       ((progn (go--backward-irrelevant t) (looking-back go-dangling-operators-regexp))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_330

><td class="source">        ;; only one nesting for all dangling operators in one operation<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_331

><td class="source">        (if (go-previous-line-has-dangling-op-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_332

><td class="source">            (current-indentation)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_333

><td class="source">          (+ (current-indentation) tab-width)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_334

><td class="source">       ((zerop (go-paren-level))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_335

><td class="source">        0)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_336

><td class="source">       ((progn (go-goto-opening-parenthesis) (&lt; (go-paren-level) start-nesting))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_337

><td class="source">        (if (go-previous-line-has-dangling-op-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_338

><td class="source">            (current-indentation)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_339

><td class="source">          (+ (go--indentation-for-opening-parenthesis) tab-width)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_340

><td class="source">       (t<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_341

><td class="source">        (current-indentation))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_342

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_343

><td class="source">(defun go-mode-indent-line ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_344

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_345

><td class="source">  (let (indent<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_346

><td class="source">        shift-amt<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_347

><td class="source">        end<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_348

><td class="source">        (pos (- (point-max) (point)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_349

><td class="source">        (point (point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_350

><td class="source">        (beg (line-beginning-position)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_351

><td class="source">    (back-to-indentation)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_352

><td class="source">    (if (go-in-string-or-comment-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_353

><td class="source">        (goto-char point)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_354

><td class="source">      (setq indent (go-indentation-at-point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_355

><td class="source">      (if (looking-at (concat go-label-regexp &quot;:\\([[:space:]]*/.+\\)?$\\|case .+:\\|default:&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_356

><td class="source">          (decf indent tab-width))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_357

><td class="source">      (setq shift-amt (- indent (current-column)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_358

><td class="source">      (if (zerop shift-amt)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_359

><td class="source">          nil<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_360

><td class="source">        (delete-region beg (point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_361

><td class="source">        (indent-to indent))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_362

><td class="source">      ;; If initial point was within line&#39;s indentation,<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_363

><td class="source">      ;; position after the indentation.  Else stay at same point in text.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_364

><td class="source">      (if (&gt; (- (point-max) pos) (point))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_365

><td class="source">          (goto-char (- (point-max) pos))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_366

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_367

><td class="source">(defun go-beginning-of-defun (&amp;optional count)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_368

><td class="source">  (unless count (setq count 1))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_369

><td class="source">  (let ((first t) failure)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_370

><td class="source">    (dotimes (i (abs count))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_371

><td class="source">      (while (and (not failure)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_372

><td class="source">                  (or first (go-in-string-or-comment-p)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_373

><td class="source">        (if (&gt;= count 0)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_374

><td class="source">            (progn<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_375

><td class="source">              (go--backward-irrelevant)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_376

><td class="source">              (if (not (re-search-backward go-func-meth-regexp nil t))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_377

><td class="source">                  (setq failure t)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_378

><td class="source">          (if (looking-at go-func-meth-regexp)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_379

><td class="source">              (forward-char))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_380

><td class="source">          (if (not (re-search-forward go-func-meth-regexp nil t))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_381

><td class="source">              (setq failure t)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_382

><td class="source">        (setq first nil)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_383

><td class="source">    (if (&lt; count 0)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_384

><td class="source">        (beginning-of-line))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_385

><td class="source">    (not failure)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_386

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_387

><td class="source">(defun go-end-of-defun ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_388

><td class="source">  (let (orig-level)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_389

><td class="source">    ;; It can happen that we&#39;re not placed before a function by emacs<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_390

><td class="source">    (if (not (looking-at &quot;func&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_391

><td class="source">        (go-beginning-of-defun -1))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_392

><td class="source">    (skip-chars-forward &quot;^{&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_393

><td class="source">    (forward-char)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_394

><td class="source">    (setq orig-level (go-paren-level))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_395

><td class="source">    (while (&gt;= (go-paren-level) orig-level)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_396

><td class="source">      (skip-chars-forward &quot;^}&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_397

><td class="source">      (forward-char))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_398

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_399

><td class="source">;;;###autoload<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_400

><td class="source">(define-derived-mode go-mode prog-mode &quot;Go&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_401

><td class="source">  &quot;Major mode for editing Go source text.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_402

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_403

><td class="source">This mode provides (not just) basic editing capabilities for<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_404

><td class="source">working with Go code. It offers almost complete syntax<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_405

><td class="source">highlighting, indentation that is almost identical to gofmt and<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_406

><td class="source">proper parsing of the buffer content to allow features such as<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_407

><td class="source">navigation by function, manipulation of comments or detection of<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_408

><td class="source">strings.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_409

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_410

><td class="source">In addition to these core features, it offers various features to<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_411

><td class="source">help with writing Go code. You can directly run buffer content<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_412

><td class="source">through gofmt, read godoc documentation from within Emacs, modify<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_413

><td class="source">and clean up the list of package imports or interact with the<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_414

><td class="source">Playground (uploading and downloading pastes).<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_415

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_416

><td class="source">The following extra functions are defined:<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_417

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_418

><td class="source">- `gofmt&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_419

><td class="source">- `godoc&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_420

><td class="source">- `go-import-add&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_421

><td class="source">- `go-remove-unused-imports&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_422

><td class="source">- `go-goto-imports&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_423

><td class="source">- `go-play-buffer&#39; and `go-play-region&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_424

><td class="source">- `go-download-play&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_425

><td class="source">- `godef-describe&#39; and `godef-jump&#39;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_426

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_427

><td class="source">If you want to automatically run `gofmt&#39; before saving a file,<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_428

><td class="source">add the following hook to your emacs configuration:<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_429

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_430

><td class="source">\(add-hook &#39;before-save-hook &#39;gofmt-before-save)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_431

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_432

><td class="source">If you want to use `godef-jump&#39; instead of etags (or similar),<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_433

><td class="source">consider binding godef-jump to `M-.&#39;, which is the default key<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_434

><td class="source">for `find-tag&#39;:<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_435

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_436

><td class="source">\(add-hook &#39;go-mode-hook (lambda ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_437

><td class="source">                          (local-set-key (kbd \&quot;M-.\&quot;) &#39;godef-jump)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_438

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_439

><td class="source">Please note that godef is an external dependency. You can install<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_440

><td class="source">it with<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_441

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_442

><td class="source">go get code.google.com/p/rog-go/exp/cmd/godef<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_443

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_444

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_445

><td class="source">If you&#39;re looking for even more integration with Go, namely<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_446

><td class="source">on-the-fly syntax checking, auto-completion and snippets, it is<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_447

><td class="source">recommended that you look at goflymake<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_448

><td class="source">\(https://github.com/dougm/goflymake), gocode<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_449

><td class="source">\(https://github.com/nsf/gocode) and yasnippet-go<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_450

><td class="source">\(https://github.com/dominikh/yasnippet-go)&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_451

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_452

><td class="source">  ;; Font lock<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_453

><td class="source">  (set (make-local-variable &#39;font-lock-defaults)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_454

><td class="source">       &#39;(go--build-font-lock-keywords))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_455

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_456

><td class="source">  ;; Indentation<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_457

><td class="source">  (set (make-local-variable &#39;indent-line-function) &#39;go-mode-indent-line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_458

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_459

><td class="source">  ;; Comments<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_460

><td class="source">  (set (make-local-variable &#39;comment-start) &quot;// &quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_461

><td class="source">  (set (make-local-variable &#39;comment-end)   &quot;&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_462

><td class="source">  (set (make-local-variable &#39;comment-use-syntax) t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_463

><td class="source">  (set (make-local-variable &#39;comment-start-skip) &quot;\\(//+\\|/\\*+\\)\\s *&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_464

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_465

><td class="source">  (set (make-local-variable &#39;beginning-of-defun-function) &#39;go-beginning-of-defun)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_466

><td class="source">  (set (make-local-variable &#39;end-of-defun-function) &#39;go-end-of-defun)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_467

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_468

><td class="source">  (set (make-local-variable &#39;parse-sexp-lookup-properties) t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_469

><td class="source">  (if (boundp &#39;syntax-propertize-function)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_470

><td class="source">      (set (make-local-variable &#39;syntax-propertize-function) &#39;go-propertize-syntax))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_471

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_472

><td class="source">  (set (make-local-variable &#39;go-dangling-cache) (make-hash-table :test &#39;eql))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_473

><td class="source">  (add-hook &#39;before-change-functions (lambda (x y) (setq go-dangling-cache (make-hash-table :test &#39;eql))) t t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_474

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_475

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_476

><td class="source">  (setq imenu-generic-expression<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_477

><td class="source">        &#39;((&quot;type&quot; &quot;^type *\\([^ \t\n\r\f]*\\)&quot; 1)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_478

><td class="source">          (&quot;func&quot; &quot;^func *\\(.*\\) {&quot; 1)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_479

><td class="source">  (imenu-add-to-menubar &quot;Index&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_480

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_481

><td class="source">  ;; Go style<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_482

><td class="source">  (setq indent-tabs-mode t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_483

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_484

><td class="source">  ;; Handle unit test failure output in compilation-mode<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_485

><td class="source">  ;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_486

><td class="source">  ;; Note the final t argument to add-to-list for append, ie put these at the<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_487

><td class="source">  ;; *ends* of compilation-error-regexp-alist[-alist]. We want go-test to be<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_488

><td class="source">  ;; handled first, otherwise other elements will match that don&#39;t work, and<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_489

><td class="source">  ;; those alists are traversed in *reverse* order:<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_490

><td class="source">  ;; http://lists.gnu.org/archive/html/bug-gnu-emacs/2001-12/msg00674.html<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_491

><td class="source">  (when (and (boundp &#39;compilation-error-regexp-alist)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_492

><td class="source">             (boundp &#39;compilation-error-regexp-alist-alist))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_493

><td class="source">    (add-to-list &#39;compilation-error-regexp-alist &#39;go-test t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_494

><td class="source">    (add-to-list &#39;compilation-error-regexp-alist-alist<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_495

><td class="source">                 &#39;(go-test . (&quot;^\t+\\([^()\t\n]+\\):\\([0-9]+\\):? .*$&quot; 1 2)) t)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_496

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_497

><td class="source">;;;###autoload<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_498

><td class="source">(add-to-list &#39;auto-mode-alist (cons &quot;\\.go\\&#39;&quot; &#39;go-mode))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_499

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_500

><td class="source">(defun go--apply-rcs-patch (patch-buffer)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_501

><td class="source">  &quot;Apply an RCS-formatted diff from PATCH-BUFFER to the current<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_502

><td class="source">buffer.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_503

><td class="source">  (let ((target-buffer (current-buffer))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_504

><td class="source">        ;; Relative offset between buffer line numbers and line numbers<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_505

><td class="source">        ;; in patch.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_506

><td class="source">        ;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_507

><td class="source">        ;; Line numbers in the patch are based on the source file, so<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_508

><td class="source">        ;; we have to keep an offset when making changes to the<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_509

><td class="source">        ;; buffer.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_510

><td class="source">        ;;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_511

><td class="source">        ;; Appending lines decrements the offset (possibly making it<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_512

><td class="source">        ;; negative), deleting lines increments it. This order<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_513

><td class="source">        ;; simplifies the forward-line invocations.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_514

><td class="source">        (line-offset 0))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_515

><td class="source">    (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_516

><td class="source">      (with-current-buffer patch-buffer<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_517

><td class="source">        (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_518

><td class="source">        (while (not (eobp))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_519

><td class="source">          (unless (looking-at &quot;^\\([ad]\\)\\([0-9]+\\) \\([0-9]+\\)&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_520

><td class="source">            (error &quot;invalid rcs patch or internal error in go--apply-rcs-patch&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_521

><td class="source">          (forward-line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_522

><td class="source">          (let ((action (match-string 1))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_523

><td class="source">                (from (string-to-number (match-string 2)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_524

><td class="source">                (len  (string-to-number (match-string 3))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_525

><td class="source">            (cond<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_526

><td class="source">             ((equal action &quot;a&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_527

><td class="source">              (let ((start (point)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_528

><td class="source">                (forward-line len)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_529

><td class="source">                (let ((text (buffer-substring start (point))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_530

><td class="source">                  (with-current-buffer target-buffer<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_531

><td class="source">                    (decf line-offset len)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_532

><td class="source">                    (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_533

><td class="source">                    (forward-line (- from len line-offset))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_534

><td class="source">                    (insert text)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_535

><td class="source">             ((equal action &quot;d&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_536

><td class="source">              (with-current-buffer target-buffer<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_537

><td class="source">                (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_538

><td class="source">                (forward-line (- from line-offset 1))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_539

><td class="source">                (incf line-offset len)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_540

><td class="source">                (go--delete-whole-line len)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_541

><td class="source">             (t<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_542

><td class="source">              (error &quot;invalid rcs patch or internal error in go--apply-rcs-patch&quot;)))))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_543

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_544

><td class="source">(defun gofmt ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_545

><td class="source">  &quot;Formats the current buffer according to the gofmt tool.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_546

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_547

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_548

><td class="source">  (let ((tmpfile (make-temp-file &quot;gofmt&quot; nil &quot;.go&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_549

><td class="source">        (patchbuf (get-buffer-create &quot;*Gofmt patch*&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_550

><td class="source">        (errbuf (get-buffer-create &quot;*Gofmt Errors*&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_551

><td class="source">        (coding-system-for-read &#39;utf-8)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_552

><td class="source">        (coding-system-for-write &#39;utf-8))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_553

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_554

><td class="source">    (with-current-buffer errbuf<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_555

><td class="source">      (setq buffer-read-only nil)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_556

><td class="source">      (erase-buffer))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_557

><td class="source">    (with-current-buffer patchbuf<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_558

><td class="source">      (erase-buffer))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_559

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_560

><td class="source">    (write-region nil nil tmpfile)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_561

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_562

><td class="source">    ;; We&#39;re using errbuf for the mixed stdout and stderr output. This<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_563

><td class="source">    ;; is not an issue because gofmt -w does not produce any stdout<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_564

><td class="source">    ;; output in case of success.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_565

><td class="source">    (if (zerop (call-process &quot;gofmt&quot; nil errbuf nil &quot;-w&quot; tmpfile))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_566

><td class="source">        (if (zerop (call-process-region (point-min) (point-max) &quot;diff&quot; nil patchbuf nil &quot;-n&quot; &quot;-&quot; tmpfile))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_567

><td class="source">            (progn<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_568

><td class="source">              (kill-buffer errbuf)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_569

><td class="source">              (message &quot;Buffer is already gofmted&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_570

><td class="source">          (go--apply-rcs-patch patchbuf)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_571

><td class="source">          (kill-buffer errbuf)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_572

><td class="source">          (message &quot;Applied gofmt&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_573

><td class="source">      (message &quot;Could not apply gofmt. Check errors for details&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_574

><td class="source">      (gofmt--process-errors (buffer-file-name) tmpfile errbuf))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_575

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_576

><td class="source">    (kill-buffer patchbuf)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_577

><td class="source">    (delete-file tmpfile)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_578

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_579

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_580

><td class="source">(defun gofmt--process-errors (filename tmpfile errbuf)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_581

><td class="source">  ;; Convert the gofmt stderr to something understood by the compilation mode.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_582

><td class="source">  (with-current-buffer errbuf<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_583

><td class="source">    (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_584

><td class="source">    (insert &quot;gofmt errors:\n&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_585

><td class="source">    (while (search-forward-regexp (concat &quot;^\\(&quot; (regexp-quote tmpfile) &quot;\\):&quot;) nil t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_586

><td class="source">      (replace-match (file-name-nondirectory filename) t t nil 1))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_587

><td class="source">    (compilation-mode)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_588

><td class="source">    (display-buffer errbuf)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_589

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_590

><td class="source">;;;###autoload<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_591

><td class="source">(defun gofmt-before-save ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_592

><td class="source">  &quot;Add this to .emacs to run gofmt on the current buffer when saving:<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_593

><td class="source"> (add-hook &#39;before-save-hook &#39;gofmt-before-save).<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_594

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_595

><td class="source">Note that this will cause go-mode to get loaded the first time<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_596

><td class="source">you save any file, kind of defeating the point of autoloading.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_597

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_598

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_599

><td class="source">  (when (eq major-mode &#39;go-mode) (gofmt)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_600

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_601

><td class="source">(defun godoc--read-query ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_602

><td class="source">  &quot;Read a godoc query from the minibuffer.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_603

><td class="source">  ;; Compute the default query as the symbol under the cursor.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_604

><td class="source">  ;; TODO: This does the wrong thing for e.g. multipart.NewReader (it only grabs<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_605

><td class="source">  ;; half) but I see no way to disambiguate that from e.g. foobar.SomeMethod.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_606

><td class="source">  (let* ((bounds (bounds-of-thing-at-point &#39;symbol))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_607

><td class="source">         (symbol (if bounds<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_608

><td class="source">                     (buffer-substring-no-properties (car bounds)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_609

><td class="source">                                                     (cdr bounds)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_610

><td class="source">    (completing-read (if symbol<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_611

><td class="source">                         (format &quot;godoc (default %s): &quot; symbol)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_612

><td class="source">                       &quot;godoc: &quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_613

><td class="source">                     (go--old-completion-list-style (go-packages)) nil nil nil &#39;go-godoc-history symbol)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_614

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_615

><td class="source">(defun godoc--get-buffer (query)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_616

><td class="source">  &quot;Get an empty buffer for a godoc query.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_617

><td class="source">  (let* ((buffer-name (concat &quot;*godoc &quot; query &quot;*&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_618

><td class="source">         (buffer (get-buffer buffer-name)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_619

><td class="source">    ;; Kill the existing buffer if it already exists.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_620

><td class="source">    (when buffer (kill-buffer buffer))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_621

><td class="source">    (get-buffer-create buffer-name)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_622

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_623

><td class="source">(defun godoc--buffer-sentinel (proc event)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_624

><td class="source">  &quot;Sentinel function run when godoc command completes.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_625

><td class="source">  (with-current-buffer (process-buffer proc)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_626

><td class="source">    (cond ((string= event &quot;finished\n&quot;)  ;; Successful exit.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_627

><td class="source">           (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_628

><td class="source">           (view-mode 1)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_629

><td class="source">           (display-buffer (current-buffer) t))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_630

><td class="source">          ((/= (process-exit-status proc) 0)  ;; Error exit.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_631

><td class="source">           (let ((output (buffer-string)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_632

><td class="source">             (kill-buffer (current-buffer))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_633

><td class="source">             (message (concat &quot;godoc: &quot; output)))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_634

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_635

><td class="source">;;;###autoload<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_636

><td class="source">(defun godoc (query)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_637

><td class="source">  &quot;Show go documentation for a query, much like M-x man.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_638

><td class="source">  (interactive (list (godoc--read-query)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_639

><td class="source">  (unless (string= query &quot;&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_640

><td class="source">    (set-process-sentinel<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_641

><td class="source">     (start-process-shell-command &quot;godoc&quot; (godoc--get-buffer query)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_642

><td class="source">                                  (concat &quot;godoc &quot; query))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_643

><td class="source">     &#39;godoc--buffer-sentinel)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_644

><td class="source">    nil))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_645

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_646

><td class="source">(defun go-goto-imports ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_647

><td class="source">  &quot;Move point to the block of imports.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_648

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_649

><td class="source">If using<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_650

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_651

><td class="source">  import (<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_652

><td class="source">    \&quot;foo\&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_653

><td class="source">    \&quot;bar\&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_654

><td class="source">  )<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_655

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_656

><td class="source">it will move point directly behind the last import.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_657

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_658

><td class="source">If using<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_659

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_660

><td class="source">  import \&quot;foo\&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_661

><td class="source">  import \&quot;bar\&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_662

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_663

><td class="source">it will move point to the next line after the last import.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_664

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_665

><td class="source">If no imports can be found, point will be moved after the package<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_666

><td class="source">declaration.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_667

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_668

><td class="source">  ;; FIXME if there&#39;s a block-commented import before the real<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_669

><td class="source">  ;; imports, we&#39;ll jump to that one.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_670

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_671

><td class="source">  ;; Generally, this function isn&#39;t very forgiving. it&#39;ll bark on<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_672

><td class="source">  ;; extra whitespace. It works well for clean code.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_673

><td class="source">  (let ((old-point (point)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_674

><td class="source">    (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_675

><td class="source">    (cond<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_676

><td class="source">     ((re-search-forward &quot;^import ([^)]+)&quot; nil t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_677

><td class="source">      (backward-char 2)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_678

><td class="source">      &#39;block)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_679

><td class="source">     ((re-search-forward &quot;\\(^import \\([^\&quot;]+ \\)?\&quot;[^\&quot;]+\&quot;\n?\\)+&quot; nil t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_680

><td class="source">      &#39;single)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_681

><td class="source">     ((re-search-forward &quot;^[[:space:]\n]*package .+?\n&quot; nil t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_682

><td class="source">      (message &quot;No imports found, moving point after package declaration&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_683

><td class="source">      &#39;none)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_684

><td class="source">     (t<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_685

><td class="source">      (goto-char old-point)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_686

><td class="source">      (message &quot;No imports or package declaration found. Is this really a Go file?&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_687

><td class="source">      &#39;fail))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_688

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_689

><td class="source">(defun go-play-buffer ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_690

><td class="source">  &quot;Like `go-play-region&#39;, but acts on the entire buffer.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_691

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_692

><td class="source">  (go-play-region (point-min) (point-max)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_693

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_694

><td class="source">(defun go-play-region (start end)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_695

><td class="source">  &quot;Send the region to the Playground and stores the resulting<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_696

><td class="source">link in the kill ring.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_697

><td class="source">  (interactive &quot;r&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_698

><td class="source">  (let* ((url-request-method &quot;POST&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_699

><td class="source">         (url-request-extra-headers<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_700

><td class="source">          &#39;((&quot;Content-Type&quot; . &quot;application/x-www-form-urlencoded&quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_701

><td class="source">         (url-request-data (buffer-substring-no-properties start end))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_702

><td class="source">         (content-buf (url-retrieve<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_703

><td class="source">                       &quot;http://play.golang.org/share&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_704

><td class="source">                       (lambda (arg)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_705

><td class="source">                         (cond<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_706

><td class="source">                          ((equal :error (car arg))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_707

><td class="source">                           (signal &#39;go-play-error (cdr arg)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_708

><td class="source">                          (t<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_709

><td class="source">                           (re-search-forward &quot;\n\n&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_710

><td class="source">                           (kill-new (format &quot;http://play.golang.org/p/%s&quot; (buffer-substring (point) (point-max))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_711

><td class="source">                           (message &quot;http://play.golang.org/p/%s&quot; (buffer-substring (point) (point-max)))))))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_712

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_713

><td class="source">;;;###autoload<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_714

><td class="source">(defun go-download-play (url)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_715

><td class="source">  &quot;Downloads a paste from the playground and inserts it in a Go<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_716

><td class="source">buffer. Tries to look for a URL at point.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_717

><td class="source">  (interactive (list (read-from-minibuffer &quot;Playground URL: &quot; (ffap-url-p (ffap-string-at-point &#39;url)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_718

><td class="source">  (with-current-buffer<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_719

><td class="source">      (let ((url-request-method &quot;GET&quot;) url-request-data url-request-extra-headers)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_720

><td class="source">        (url-retrieve-synchronously (concat url &quot;.go&quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_721

><td class="source">    (let ((buffer (generate-new-buffer (concat (car (last (split-string url &quot;/&quot;))) &quot;.go&quot;))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_722

><td class="source">      (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_723

><td class="source">      (re-search-forward &quot;\n\n&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_724

><td class="source">      (copy-to-buffer buffer (point) (point-max))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_725

><td class="source">      (kill-buffer)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_726

><td class="source">      (with-current-buffer buffer<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_727

><td class="source">        (go-mode)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_728

><td class="source">        (switch-to-buffer buffer)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_729

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_730

><td class="source">(defun go-propertize-syntax (start end)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_731

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_732

><td class="source">    (goto-char start)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_733

><td class="source">    (while (search-forward &quot;\\&quot; end t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_734

><td class="source">      (put-text-property (1- (point)) (point) &#39;syntax-table (if (= (char-after) ?`) &#39;(1) &#39;(9))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_735

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_736

><td class="source">;; ;; Commented until we actually make use of this function<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_737

><td class="source">;; (defun go--common-prefix (sequences)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_738

><td class="source">;;   ;; mismatch and reduce are cl<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_739

><td class="source">;;   (assert sequences)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_740

><td class="source">;;   (flet ((common-prefix (s1 s2)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_741

><td class="source">;;                         (let ((diff-pos (mismatch s1 s2)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_742

><td class="source">;;                           (if diff-pos (subseq s1 0 diff-pos) s1))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_743

><td class="source">;;     (reduce #&#39;common-prefix sequences)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_744

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_745

><td class="source">(defun go-import-add (arg import)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_746

><td class="source">  &quot;Add a new import to the list of imports.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_747

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_748

><td class="source">When called with a prefix argument asks for an alternative name<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_749

><td class="source">to import the package as.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_750

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_751

><td class="source">If no list exists yet, one will be created if possible.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_752

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_753

><td class="source">If an identical import has been commented, it will be<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_754

><td class="source">uncommented, otherwise a new import will be added.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_755

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_756

><td class="source">  ;; - If there&#39;s a matching `// import &quot;foo&quot;`, uncomment it<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_757

><td class="source">  ;; - If we&#39;re in an import() block and there&#39;s a matching `&quot;foo&quot;`, uncomment it<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_758

><td class="source">  ;; - Otherwise add a new import, with the appropriate syntax<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_759

><td class="source">  (interactive<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_760

><td class="source">   (list<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_761

><td class="source">    current-prefix-arg<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_762

><td class="source">    (replace-regexp-in-string &quot;^[\&quot;&#39;]\\|[\&quot;&#39;]$&quot; &quot;&quot; (completing-read &quot;Package: &quot; (go--old-completion-list-style (go-packages))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_763

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_764

><td class="source">    (let (as line import-start)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_765

><td class="source">      (if arg<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_766

><td class="source">          (setq as (read-from-minibuffer &quot;Import as: &quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_767

><td class="source">      (if as<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_768

><td class="source">          (setq line (format &quot;%s \&quot;%s\&quot;&quot; as import))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_769

><td class="source">        (setq line (format &quot;\&quot;%s\&quot;&quot; import)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_770

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_771

><td class="source">      (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_772

><td class="source">      (if (re-search-forward (concat &quot;^[[:space:]]*//[[:space:]]*import &quot; line &quot;$&quot;) nil t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_773

><td class="source">          (uncomment-region (line-beginning-position) (line-end-position))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_774

><td class="source">        (case (go-goto-imports)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_775

><td class="source">          (&#39;fail (message &quot;Could not find a place to add import.&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_776

><td class="source">          (&#39;block<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_777

><td class="source">              (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_778

><td class="source">                (re-search-backward &quot;^import (&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_779

><td class="source">                (setq import-start (point)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_780

><td class="source">            (if (re-search-backward (concat &quot;^[[:space:]]*//[[:space:]]*&quot; line &quot;$&quot;)  import-start t)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_781

><td class="source">                (uncomment-region (line-beginning-position) (line-end-position))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_782

><td class="source">              (insert &quot;\n\t&quot; line)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_783

><td class="source">          (&#39;single (insert &quot;import &quot; line &quot;\n&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_784

><td class="source">          (&#39;none (insert &quot;\nimport (\n\t&quot; line &quot;\n)\n&quot;)))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_785

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_786

><td class="source">(defun go-root-and-paths ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_787

><td class="source">  (let* ((output (split-string (shell-command-to-string &quot;go env GOROOT GOPATH&quot;) &quot;\n&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_788

><td class="source">         (root (car output))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_789

><td class="source">         (paths (split-string (cadr output) &quot;:&quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_790

><td class="source">    (append (list root) paths)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_791

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_792

><td class="source">(defun go--string-prefix-p (s1 s2 &amp;optional ignore-case)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_793

><td class="source">  &quot;Return non-nil if S1 is a prefix of S2.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_794

><td class="source">If IGNORE-CASE is non-nil, the comparison is case-insensitive.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_795

><td class="source">  (eq t (compare-strings s1 nil nil<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_796

><td class="source">                         s2 0 (length s1) ignore-case)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_797

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_798

><td class="source">(defun go--directory-dirs (dir)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_799

><td class="source">  &quot;Recursively return all subdirectories in DIR.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_800

><td class="source">  (if (file-directory-p dir)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_801

><td class="source">      (let ((dir (directory-file-name dir))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_802

><td class="source">            (dirs &#39;())<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_803

><td class="source">            (files (directory-files dir nil nil t)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_804

><td class="source">        (dolist (file files)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_805

><td class="source">          (unless (member file &#39;(&quot;.&quot; &quot;..&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_806

><td class="source">            (let ((file (concat dir &quot;/&quot; file)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_807

><td class="source">              (if (file-directory-p file)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_808

><td class="source">                  (setq dirs (append (cons file<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_809

><td class="source">                                           (go--directory-dirs file))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_810

><td class="source">                                     dirs))))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_811

><td class="source">        dirs)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_812

><td class="source">    &#39;()))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_813

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_814

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_815

><td class="source">(defun go-packages ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_816

><td class="source">  (sort<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_817

><td class="source">   (delete-dups<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_818

><td class="source">    (mapcan<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_819

><td class="source">     (lambda (topdir)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_820

><td class="source">       (let ((pkgdir (concat topdir &quot;/pkg/&quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_821

><td class="source">         (mapcan (lambda (dir)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_822

><td class="source">                   (mapcar (lambda (file)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_823

><td class="source">                             (let ((sub (substring file (length pkgdir) -2)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_824

><td class="source">                               (unless (or (go--string-prefix-p &quot;obj/&quot; sub) (go--string-prefix-p &quot;tool/&quot; sub))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_825

><td class="source">                                 (mapconcat &#39;identity (cdr (split-string sub &quot;/&quot;)) &quot;/&quot;))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_826

><td class="source">                           (if (file-directory-p dir)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_827

><td class="source">                               (directory-files dir t &quot;\\.a$&quot;))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_828

><td class="source">                 (if (file-directory-p pkgdir)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_829

><td class="source">                     (go--directory-dirs pkgdir)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_830

><td class="source">     (go-root-and-paths)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_831

><td class="source">   &#39;string&lt;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_832

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_833

><td class="source">(defun go-unused-imports-lines ()<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_834

><td class="source">  ;; FIXME Technically, -o /dev/null fails in quite some cases (on<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_835

><td class="source">  ;; Windows, when compiling from within GOPATH). Practically,<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_836

><td class="source">  ;; however, it has the same end result: There won&#39;t be a<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_837

><td class="source">  ;; compiled binary/archive, and we&#39;ll get our import errors when<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_838

><td class="source">  ;; there are any.<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_839

><td class="source">  (reverse (remove nil<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_840

><td class="source">                   (mapcar<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_841

><td class="source">                    (lambda (line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_842

><td class="source">                      (if (string-match &quot;^\\(.+\\):\\([[:digit:]]+\\): imported and not used: \&quot;.+\&quot;$&quot; line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_843

><td class="source">                          (if (string= (file-truename (match-string 1 line)) (file-truename buffer-file-name))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_844

><td class="source">                              (string-to-number (match-string 2 line)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_845

><td class="source">                    (split-string (shell-command-to-string<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_846

><td class="source">                                   (if (string-match &quot;_test\.go$&quot; buffer-file-truename)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_847

><td class="source">                                       &quot;go test -c&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_848

><td class="source">                                     &quot;go build -o /dev/null&quot;)) &quot;\n&quot;)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_849

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_850

><td class="source">(defun go-remove-unused-imports (arg)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_851

><td class="source">  &quot;Removes all unused imports. If ARG is non-nil, unused imports<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_852

><td class="source">will be commented, otherwise they will be removed completely.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_853

><td class="source">  (interactive &quot;P&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_854

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_855

><td class="source">    (let ((cur-buffer (current-buffer)) flymake-state lines)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_856

><td class="source">      (when (boundp &#39;flymake-mode)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_857

><td class="source">        (setq flymake-state flymake-mode)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_858

><td class="source">        (flymake-mode-off))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_859

><td class="source">      (save-some-buffers nil (lambda () (equal cur-buffer (current-buffer))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_860

><td class="source">      (if (buffer-modified-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_861

><td class="source">          (message &quot;Cannot operate on unsaved buffer&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_862

><td class="source">        (setq lines (go-unused-imports-lines))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_863

><td class="source">        (dolist (import lines)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_864

><td class="source">          (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_865

><td class="source">          (forward-line (1- import))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_866

><td class="source">          (beginning-of-line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_867

><td class="source">          (if arg<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_868

><td class="source">              (comment-region (line-beginning-position) (line-end-position))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_869

><td class="source">            (go--delete-whole-line)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_870

><td class="source">        (message &quot;Removed %d imports&quot; (length lines)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_871

><td class="source">      (if flymake-state (flymake-mode-on)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_872

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_873

><td class="source">(defun godef--find-file-line-column (specifier)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_874

><td class="source">  &quot;Given a file name in the format of `filename:line:column&#39;,<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_875

><td class="source">visit FILENAME and go to line LINE and column COLUMN.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_876

><td class="source">  (let* ((components (split-string specifier &quot;:&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_877

><td class="source">         (line (string-to-number (nth 1 components)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_878

><td class="source">         (column (string-to-number (nth 2 components))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_879

><td class="source">    (with-current-buffer (find-file (car components))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_880

><td class="source">      (goto-char (point-min))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_881

><td class="source">      (forward-line (1- line))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_882

><td class="source">      (beginning-of-line)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_883

><td class="source">      (forward-char (1- column))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_884

><td class="source">      (if (buffer-modified-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_885

><td class="source">          (message &quot;Buffer is modified, file position might not have been correct&quot;)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_886

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_887

><td class="source">(defun godef--call (point)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_888

><td class="source">  &quot;Call godef, acquiring definition position and expression<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_889

><td class="source">description at POINT.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_890

><td class="source">  (if (go--xemacs-p)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_891

><td class="source">      (message &quot;godef does not reliably work in XEmacs, expect bad results&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_892

><td class="source">  (if (not buffer-file-name)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_893

><td class="source">      (message &quot;Cannot use godef on a buffer without a file name&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_894

><td class="source">    (let ((outbuf (get-buffer-create &quot;*godef*&quot;)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_895

><td class="source">      (with-current-buffer outbuf<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_896

><td class="source">        (erase-buffer))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_897

><td class="source">      (call-process-region (point-min) (point-max) &quot;godef&quot; nil outbuf nil &quot;-i&quot; &quot;-t&quot; &quot;-f&quot; (file-truename buffer-file-name) &quot;-o&quot; (number-to-string (go--position-bytes (point))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_898

><td class="source">      (with-current-buffer outbuf<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_899

><td class="source">        (split-string (buffer-substring-no-properties (point-min) (point-max)) &quot;\n&quot;)))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_900

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_901

><td class="source">(defun godef-describe (point)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_902

><td class="source">  &quot;Describe the expression at POINT.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_903

><td class="source">  (interactive &quot;d&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_904

><td class="source">  (condition-case nil<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_905

><td class="source">      (let ((description (nth 1 (godef--call point))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_906

><td class="source">        (if (string= &quot;&quot; description)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_907

><td class="source">            (message &quot;No description found for expression at point&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_908

><td class="source">          (message &quot;%s&quot; description)))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_909

><td class="source">    (file-error (message &quot;Could not run godef binary&quot;))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_910

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_911

><td class="source">(defun godef-jump (point)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_912

><td class="source">  &quot;Jump to the definition of the expression at POINT.&quot;<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_913

><td class="source">  (interactive &quot;d&quot;)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_914

><td class="source">  (condition-case nil<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_915

><td class="source">      (let ((file (car (godef--call point))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_916

><td class="source">        (cond<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_917

><td class="source">         ((string= &quot;-&quot; file)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_918

><td class="source">          (message &quot;godef: expression is not defined anywhere&quot;))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_919

><td class="source">         ((string= &quot;godef: no identifier found&quot; file)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_920

><td class="source">          (message &quot;%s&quot; file))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_921

><td class="source">         ((go--string-prefix-p &quot;godef: no declaration found for &quot; file)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_922

><td class="source">          (message &quot;%s&quot; file))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_923

><td class="source">         (t<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_924

><td class="source">          (push-mark)<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_925

><td class="source">          (godef--find-file-line-column file))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_926

><td class="source">    (file-error (message &quot;Could not run godef binary&quot;))))<br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_927

><td class="source"><br></td></tr
><tr
id=sl_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_928

><td class="source">(provide &#39;go-mode)<br></td></tr
></table></pre>
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
</td>
</tr></table>

 
<script type="text/javascript">
 var lineNumUnderMouse = -1;
 
 function gutterOver(num) {
 gutterOut();
 var newTR = document.getElementById('gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_' + num);
 if (newTR) {
 newTR.className = 'undermouse';
 }
 lineNumUnderMouse = num;
 }
 function gutterOut() {
 if (lineNumUnderMouse != -1) {
 var oldTR = document.getElementById(
 'gr_svn79a1fec35802722702a5ebf2b1162bd2bf0563b7_' + lineNumUnderMouse);
 if (oldTR) {
 oldTR.className = '';
 }
 lineNumUnderMouse = -1;
 }
 }
 var numsGenState = {table_base_id: 'nums_table_'};
 var srcGenState = {table_base_id: 'src_table_'};
 var alignerRunning = false;
 var startOver = false;
 function setLineNumberHeights() {
 if (alignerRunning) {
 startOver = true;
 return;
 }
 numsGenState.chunk_id = 0;
 numsGenState.table = document.getElementById('nums_table_0');
 numsGenState.row_num = 0;
 if (!numsGenState.table) {
 return; // Silently exit if no file is present.
 }
 srcGenState.chunk_id = 0;
 srcGenState.table = document.getElementById('src_table_0');
 srcGenState.row_num = 0;
 alignerRunning = true;
 continueToSetLineNumberHeights();
 }
 function rowGenerator(genState) {
 if (genState.row_num < genState.table.rows.length) {
 var currentRow = genState.table.rows[genState.row_num];
 genState.row_num++;
 return currentRow;
 }
 var newTable = document.getElementById(
 genState.table_base_id + (genState.chunk_id + 1));
 if (newTable) {
 genState.chunk_id++;
 genState.row_num = 0;
 genState.table = newTable;
 return genState.table.rows[0];
 }
 return null;
 }
 var MAX_ROWS_PER_PASS = 1000;
 function continueToSetLineNumberHeights() {
 var rowsInThisPass = 0;
 var numRow = 1;
 var srcRow = 1;
 while (numRow && srcRow && rowsInThisPass < MAX_ROWS_PER_PASS) {
 numRow = rowGenerator(numsGenState);
 srcRow = rowGenerator(srcGenState);
 rowsInThisPass++;
 if (numRow && srcRow) {
 if (numRow.offsetHeight != srcRow.offsetHeight) {
 numRow.firstChild.style.height = srcRow.offsetHeight + 'px';
 }
 }
 }
 if (rowsInThisPass >= MAX_ROWS_PER_PASS) {
 setTimeout(continueToSetLineNumberHeights, 10);
 } else {
 alignerRunning = false;
 if (startOver) {
 startOver = false;
 setTimeout(setLineNumberHeights, 500);
 }
 }
 }
 function initLineNumberHeights() {
 // Do 2 complete passes, because there can be races
 // between this code and prettify.
 startOver = true;
 setTimeout(setLineNumberHeights, 250);
 window.onresize = setLineNumberHeights;
 }
 initLineNumberHeights();
</script>

 
 
 <div id="log">
 <div style="text-align:right">
 <a class="ifCollapse" href="#" onclick="_toggleMeta(this); return false">Show details</a>
 <a class="ifExpand" href="#" onclick="_toggleMeta(this); return false">Hide details</a>
 </div>
 <div class="ifExpand">
 
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="changelog">
 <p>Change log</p>
 <div>
 <a href="/p/go/source/detail?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&amp;r=656591eaf189e1bfa0f962cd63d1fd3f84dec2af">656591eaf189</a>
 by Dominik Honnef &lt;dominik.honnef&gt;
 on Yesterday (23 hours ago)
 &nbsp; <a href="/p/go/source/diff?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&r=656591eaf189e1bfa0f962cd63d1fd3f84dec2af&amp;format=side&amp;path=/misc/emacs/go-mode.el&amp;old_path=/misc/emacs/go-mode.el&amp;old=d547ac53a013c7c40c6ede700e3bad950896abe1">Diff</a>
 </div>
 <pre>misc/emacs: Do not modify kill ring when
programmatically deleting text

Operations like gofmt and go-remove-
unused-imports delete entire
lines of text. Previously this put them on
the kill-ring,
negatively affecting user experience.

R=adonovan
CC=gobot, golang-dev
<a href="https://codereview.appspot.com/9605043" rel="nofollow">https://codereview.appspot.com/9605043</a>
...</pre>
 </div>
 
 
 
 
 
 
 <script type="text/javascript">
 var detail_url = '/p/go/source/detail?r=656591eaf189e1bfa0f962cd63d1fd3f84dec2af&spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7';
 var publish_url = '/p/go/source/detail?r=656591eaf189e1bfa0f962cd63d1fd3f84dec2af&spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7#publish';
 // describe the paths of this revision in javascript.
 var changed_paths = [];
 var changed_urls = [];
 
 changed_paths.push('/misc/emacs/go-mode.el');
 changed_urls.push('/p/go/source/browse/misc/emacs/go-mode.el?r\x3d656591eaf189e1bfa0f962cd63d1fd3f84dec2af\x26spec\x3dsvn79a1fec35802722702a5ebf2b1162bd2bf0563b7');
 
 var selected_path = '/misc/emacs/go-mode.el';
 
 
 function getCurrentPageIndex() {
 for (var i = 0; i < changed_paths.length; i++) {
 if (selected_path == changed_paths[i]) {
 return i;
 }
 }
 }
 function getNextPage() {
 var i = getCurrentPageIndex();
 if (i < changed_paths.length - 1) {
 return changed_urls[i + 1];
 }
 return null;
 }
 function getPreviousPage() {
 var i = getCurrentPageIndex();
 if (i > 0) {
 return changed_urls[i - 1];
 }
 return null;
 }
 function gotoNextPage() {
 var page = getNextPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoPreviousPage() {
 var page = getPreviousPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoDetailPage() {
 window.location = detail_url;
 }
 function gotoPublishPage() {
 window.location = publish_url;
 }
</script>

 
 <style type="text/css">
 #review_nav {
 border-top: 3px solid white;
 padding-top: 6px;
 margin-top: 1em;
 }
 #review_nav td {
 vertical-align: middle;
 }
 #review_nav select {
 margin: .5em 0;
 }
 </style>
 <div id="review_nav">
 <table><tr><td>Go to:&nbsp;</td><td>
 <select name="files_in_rev" onchange="window.location=this.value">
 
 <option value="/p/go/source/browse/misc/emacs/go-mode.el?r=656591eaf189e1bfa0f962cd63d1fd3f84dec2af&amp;spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7"
 selected="selected"
 >/misc/emacs/go-mode.el</option>
 
 </select>
 </td></tr></table>
 
 
 




 
 </div>
 
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="older_bubble">
 <p>Older revisions</p>
 
 
 <div class="closed" style="margin-bottom:3px;" >
 <a class="ifClosed" onclick="return _toggleHidden(this)"><img src="https://ssl.gstatic.com/codesite/ph/images/plus.gif" ></a>
 <a class="ifOpened" onclick="return _toggleHidden(this)"><img src="https://ssl.gstatic.com/codesite/ph/images/minus.gif" ></a>
 <a href="/p/go/source/detail?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&r=d547ac53a013c7c40c6ede700e3bad950896abe1">d547ac53a013</a>
 by Dominik Honnef &lt;dominik.honnef&gt;
 on May 14, 2013
 &nbsp; <a href="/p/go/source/diff?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&r=d547ac53a013c7c40c6ede700e3bad950896abe1&amp;format=side&amp;path=/misc/emacs/go-mode.el&amp;old_path=/misc/emacs/go-mode.el&amp;old=45a52c375f4f20eb05a9a7e8b47001cea853f0dc">Diff</a>
 <br>
 <pre class="ifOpened">misc/emacs: Add support for methods
with unnamed receiver

This fixes fontification, navigation
and indentation for methods
...</pre>
 </div>
 
 <div class="closed" style="margin-bottom:3px;" >
 <a class="ifClosed" onclick="return _toggleHidden(this)"><img src="https://ssl.gstatic.com/codesite/ph/images/plus.gif" ></a>
 <a class="ifOpened" onclick="return _toggleHidden(this)"><img src="https://ssl.gstatic.com/codesite/ph/images/minus.gif" ></a>
 <a href="/p/go/source/detail?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&r=45a52c375f4f20eb05a9a7e8b47001cea853f0dc">45a52c375f4f</a>
 by Dominik Honnef &lt;dominik.honnef&gt;
 on Mar 30, 2013
 &nbsp; <a href="/p/go/source/diff?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&r=45a52c375f4f20eb05a9a7e8b47001cea853f0dc&amp;format=side&amp;path=/misc/emacs/go-mode.el&amp;old_path=/misc/emacs/go-mode.el&amp;old=f78c5036b7f681040d60f646855c79ccbbd0ff01">Diff</a>
 <br>
 <pre class="ifOpened">misc/emacs: Enable compilation-mode
for gofmt error buffer before
displaying it.

Some packages, like popwin.el, change
...</pre>
 </div>
 
 <div class="closed" style="margin-bottom:3px;" >
 <a class="ifClosed" onclick="return _toggleHidden(this)"><img src="https://ssl.gstatic.com/codesite/ph/images/plus.gif" ></a>
 <a class="ifOpened" onclick="return _toggleHidden(this)"><img src="https://ssl.gstatic.com/codesite/ph/images/minus.gif" ></a>
 <a href="/p/go/source/detail?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&r=f78c5036b7f681040d60f646855c79ccbbd0ff01">f78c5036b7f6</a>
 by Dominik Honnef &lt;dominik.honnef&gt;
 on Mar 25, 2013
 &nbsp; <a href="/p/go/source/diff?spec=svn79a1fec35802722702a5ebf2b1162bd2bf0563b7&r=f78c5036b7f681040d60f646855c79ccbbd0ff01&amp;format=side&amp;path=/misc/emacs/go-mode.el&amp;old_path=/misc/emacs/go-mode.el&amp;old=79aa87b595a336783ac179f45d4610f2779344b9">Diff</a>
 <br>
 <pre class="ifOpened">misc/emacs: Derive mode from prog-mode
if possible

R=golang-dev, bradfitz
CC=adonovan, cw, golang-dev,
...</pre>
 </div>
 
 
 <a href="/p/go/source/list?path=/misc/emacs/go-mode.el&r=656591eaf189e1bfa0f962cd63d1fd3f84dec2af">All revisions of this file</a>
 </div>
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="fileinfo_bubble">
 <p>File info</p>
 
 <div>Size: 37397 bytes,
 928 lines</div>
 
 <div><a href="//go.googlecode.com/hg/misc/emacs/go-mode.el">View raw file</a></div>
 </div>
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 </div>
 </div>


</div>

</div>
</div>

<script src="https://ssl.gstatic.com/codesite/ph/13105533463844027904/js/prettify/prettify.js"></script>
<script type="text/javascript">prettyPrint();</script>


<script src="https://ssl.gstatic.com/codesite/ph/13105533463844027904/js/source_file_scripts.js"></script>

 <script type="text/javascript" src="https://ssl.gstatic.com/codesite/ph/13105533463844027904/js/kibbles.js"></script>
 <script type="text/javascript">
 var lastStop = null;
 var initialized = false;
 
 function updateCursor(next, prev) {
 if (prev && prev.element) {
 prev.element.className = 'cursor_stop cursor_hidden';
 }
 if (next && next.element) {
 next.element.className = 'cursor_stop cursor';
 lastStop = next.index;
 }
 }
 
 function pubRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftDestroyed(data) {
 updateCursorForCell(data.cellId, 'nocursor');
 if (initialized) {
 reloadCursors();
 }
 }
 function reloadCursors() {
 kibbles.skipper.reset();
 loadCursors();
 if (lastStop != null) {
 kibbles.skipper.setCurrentStop(lastStop);
 }
 }
 // possibly the simplest way to insert any newly added comments
 // is to update the class of the corresponding cursor row,
 // then refresh the entire list of rows.
 function updateCursorForCell(cellId, className) {
 var cell = document.getElementById(cellId);
 // we have to go two rows back to find the cursor location
 var row = getPreviousElement(cell.parentNode);
 row.className = className;
 }
 // returns the previous element, ignores text nodes.
 function getPreviousElement(e) {
 var element = e.previousSibling;
 if (element.nodeType == 3) {
 element = element.previousSibling;
 }
 if (element && element.tagName) {
 return element;
 }
 }
 function loadCursors() {
 // register our elements with skipper
 var elements = CR_getElements('*', 'cursor_stop');
 var len = elements.length;
 for (var i = 0; i < len; i++) {
 var element = elements[i]; 
 element.className = 'cursor_stop cursor_hidden';
 kibbles.skipper.append(element);
 }
 }
 function toggleComments() {
 CR_toggleCommentDisplay();
 reloadCursors();
 }
 function keysOnLoadHandler() {
 // setup skipper
 kibbles.skipper.addStopListener(
 kibbles.skipper.LISTENER_TYPE.PRE, updateCursor);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_top', 50);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_bottom', 100);
 // Register our keys
 kibbles.skipper.addFwdKey("n");
 kibbles.skipper.addRevKey("p");
 kibbles.keys.addKeyPressListener(
 'u', function() { window.location = detail_url; });
 kibbles.keys.addKeyPressListener(
 'r', function() { window.location = detail_url + '#publish'; });
 
 kibbles.keys.addKeyPressListener('j', gotoNextPage);
 kibbles.keys.addKeyPressListener('k', gotoPreviousPage);
 
 
 }
 </script>
<script src="https://ssl.gstatic.com/codesite/ph/13105533463844027904/js/code_review_scripts.js"></script>
<script type="text/javascript">
 function showPublishInstructions() {
 var element = document.getElementById('review_instr');
 if (element) {
 element.className = 'opened';
 }
 }
 var codereviews;
 function revsOnLoadHandler() {
 // register our source container with the commenting code
 var paths = {'svn79a1fec35802722702a5ebf2b1162bd2bf0563b7': '/misc/emacs/go-mode.el'}
 codereviews = CR_controller.setup(
 {"domainName":null,"assetHostPath":"https://ssl.gstatic.com/codesite/ph","projectName":"go","token":null,"profileUrl":null,"loggedInUserEmail":null,"relativeBaseUrl":"","projectHomeUrl":"/p/go","assetVersionPath":"https://ssl.gstatic.com/codesite/ph/13105533463844027904"}, '', 'svn79a1fec35802722702a5ebf2b1162bd2bf0563b7', paths,
 CR_BrowseIntegrationFactory);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, showPublishInstructions);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_PUB_PLATE, pubRevealed);
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, draftRevealed);
 codereviews.registerActivityListener(CR_ActivityType.DISCARD_DRAFT_COMMENT, draftDestroyed);
 
 
 
 
 
 
 
 var initialized = true;
 reloadCursors();
 }
 window.onload = function() {keysOnLoadHandler(); revsOnLoadHandler();};

</script>
<script type="text/javascript" src="https://ssl.gstatic.com/codesite/ph/13105533463844027904/js/dit_scripts.js"></script>

 
 
 
 <script type="text/javascript" src="https://ssl.gstatic.com/codesite/ph/13105533463844027904/js/ph_core.js"></script>
 
 
 
 
</div> 

<div id="footer" dir="ltr">
 <div class="text">
 <a href="/projecthosting/terms.html">Terms</a> -
 <a href="http://www.google.com/privacy.html">Privacy</a> -
 <a href="/p/support/">Project Hosting Help</a>
 </div>
</div>
 <div class="hostedBy" style="margin-top: -20px;">
 <span style="vertical-align: top;">Powered by <a href="http://code.google.com/projecthosting/">Google Project Hosting</a></span>
 </div>

 
 


 
 </body>
</html>

