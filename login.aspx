<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>登录</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>
<script language="javascript" type="text/javascript">
	function checkLoginUserName()
	{
		var userName = document.forms[0].txtUserName.value;
		if (userName == "")
		{
			alert("请输入用户名！");
			return false;
		}
		else
		{
			alert("你的用户名是："+userName);
			return true;
		}
	}

	function checkLoginUserNameV2()
	{
		var userName = document.getElementById("txtUserName").value;
		if (userName == "")
		{
			alert("请输入用户名！");
			return false;
		}
		else
		{
			if(userName.length <3 || userName.length >16)
			{
				alert("用户名必须是3-16个字符");
				return false;
			}
			else
			{
				alert("你的用户名是："+userName);
				return true;
			}
		}
	}

</script>
</head>

<body>
<form id="mainForm" action="" onsubmit="return checkLoginUserNameV2(); " runat="server">
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
          <td height="28" align="left" valign="middle" class="nav"><a href="/">首页</a>->登录</td>
        </tr>
        <tr>
          <td background="Images/spliter4.gif"></td>
        </tr>
		<tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="9%">&nbsp;</td>
              <td width="41%"><table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td width="47%" align="right">用户名：</td>
                  <td width="2%">&nbsp;</td>
                  <td width="51%" align="left">
                      <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                  <td align="right">密码：</td>
                  <td>&nbsp;</td>
                  <td align="left">
                      <asp:TextBox ID="txtUserPwd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                  <td colspan="3" align="center"><label>
                      <asp:Button ID="btnLogin" runat="server" Text="登录" onclick="btnLogin_Click" />
                      <input type="submit" name="btnClear" value="清空" />
                      </label></td>
                  </tr>
              </table></td>
			  <td width="38%" align="left" valign="top"><p>你是否还没有帐号，点击这里进行<a href="reg.aspx">注册

</a>。</p>
			    <p>如果你忘记了密码，点击这里<a href="getpassword.aspx">找回密码</a>。</p></td>
			  <td width="12%">&nbsp;</td>
            </tr>
          </table></td>
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
