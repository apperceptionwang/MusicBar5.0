<%@ Page Language="C#" AutoEventWireup="true" CodeFile="moreNewMusic.aspx.cs" Inherits="moreNewMusic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>最新上载音乐</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>
</head>

<body>
<form id="mainForm" action="" runat="server">
<div align="center">
<table width="760" height="50" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="120"><a href="index.aspx"><div id="logo">&nbsp;</div></a></td>
        <td width="640" valign="bottom">	
		<div id="headerRight" align="right" class="text12_black"><a href="reg.aspx">
          注册</a>|<a href="login.aspx">登录</a></div></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="760" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="760" border="0"  cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" height="1">
				<hr width="760" />
			</td>
		</tr>
      <tr>
        <td  width="20%">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="16"><img src="Images/tip.jpg" width="16" /></td>
            <td width="144"  class="labelDateTime">今天是2009年12月10日</td>
          </tr>
        </table>
		</td>
        <td >
		<table width="100%" border="0"  cellpadding="0" cellspacing="0">
          <tr valign="middle">
            <td width="4%"><img src="Images/search.jpg" alt="tip" width="26" height="30" /></td>
            <td width="29%">
              <input type="text" name="txtSearch" id="txtSearch" />
            </td>
            <td width="31%"><label>
              <input name="radiobutton" type="radio" value="radiobutton" checked="checked" />
              歌名
              <input type="radio" name="radiobutton" value="radiobutton" />
              歌手
              <input type="radio" name="radiobutton" value="radiobutton" />
            歌词</label></td>
			<td width="14%"><img src="Images/btnSearch.jpg" alt="Search" width="86" height="24"  onclick="javascript:window.location='search.aspx';" /></td>
			<td width="22%" align="right" class="welcome">
               欢迎你：孙悟空            </td>
          </tr>
        </table></td>
      </tr>
	  <tr>
			<td colspan="2" height="1">
				<hr width="760" />
			</td>
		</tr>
		
    </table></td>
  </tr>
</table>
<table width="760" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><!-- InstanceBeginEditable name="Body" -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr >
          <td height="28" align="left" valign="middle" class="nav"><a href="/">首页</a>->最新上载音乐</td>
        </tr>
        <tr>
          <td background="Images/spliter4.gif"></td>
        </tr>
		<tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr class="tableheader">
              <td width="1%">&nbsp;</td>
              <td width="29%">歌曲名称</td>
              <td width="14%">歌手名</td>
              <td width="14%">上载人</td>
              <td width="14%">上载日期</td>
              <td width="14%">欣赏人数</td>
              <td width="14%">在线欣赏</td>
              
            </tr>
            <tr >           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>2</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>5</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>18</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>9</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>52</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			 <tr>           
              <td>·</td>
              <td align="left">我叫小沈阳</td>
              <td>小沈阳</td>
              <td>张三</td>
              <td>2009-08-07</td>
              <td>1235</td>
              <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
            </tr>
			
          </table></td>
        </tr>
      </table>
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">上一页 下一页 共10页</td>
  </tr>
</table>

    <!-- InstanceEndEditable --></td>
  </tr>
</table>
<table width="760" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<hr width="90%" />
		</td>
	</tr>
  <tr>
    <td class="footer" align="center">
	本网站访问人数：2520   当前在线人数111人<br>
	Copyright&copy; 2009 fzxy.edu.cn. All Rights Reserved. </td>
  </tr>
</table>
</div>
</form>
</body>
<!-- InstanceEnd --></html>
