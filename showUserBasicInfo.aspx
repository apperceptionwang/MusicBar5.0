<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showUserBasicInfo.aspx.cs" Inherits="showUserBasicInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>显示用户信息</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>
</head>

<body>
    <form id="mainForm" runat="server">
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
			<td width="14%"><img src="Images/btnSearch.jpg" alt="Search" width="86" height="24"  

onclick="javascript:window.location='search.aspx';" /></td>
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
          <td height="28" align="left" valign="middle" class="nav">
        
             <a href="/">首页</a>->显示用户基本信息
            </td>
        </tr>
        <tr>
          <td  style="background-image:url('Images/spliter4.gif')"></td>
        </tr>
		<tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="9%">&nbsp;</td>
              <td width="15%" valign="top"><asp:Image alt="个人照片" width="108" height="108" 
                      runat="server" ID="imgPhoto">
                  </asp:Image> </td>
              <td width="53%" align="left" valign="top">
              <table width="100%" border="0" cellspacing="0" cellpadding="1">
                <tr>
                  <td width="12%">姓名：</td>
                  <td width="88%">
                      <asp:Label ID="lblStuName" runat="server"></asp:Label>
                                                    </td>
                </tr>
                <tr>
                  <td>院系：</td>
                  <td>
                      <asp:Label ID="lblDepartment" runat="server"></asp:Label>
                                                    </td>
                </tr>
                <tr>
                  <td>专业：</td>
                  <td>
                      <asp:Label ID="lblMajor" runat="server"></asp:Label>
                                                    </td>
                </tr>
                <tr>
                  <td>爱好：</td>
                  <td>
                      <asp:Label ID="lblHobbies" runat="server"></asp:Label>
                                                    </td>
                </tr>
              </table>
              </td>
			  </tr>
			<tr>
				<td></td>
				<td colspan="2" align="left" class="title">&nbsp;</td>
				<td></td>				
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td colspan="2">
				
				
				</td>
				<td></td>				
			</tr>
          </table>
          </td>
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
