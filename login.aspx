<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>��¼</title>
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
			alert("�������û�����");
			return false;
		}
		else
		{
			alert("����û����ǣ�"+userName);
			return true;
		}
	}

	function checkLoginUserNameV2()
	{
		var userName = document.getElementById("txtUserName").value;
		if (userName == "")
		{
			alert("�������û�����");
			return false;
		}
		else
		{
			if(userName.length <3 || userName.length >16)
			{
				alert("�û���������3-16���ַ�");
				return false;
			}
			else
			{
				alert("����û����ǣ�"+userName);
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
          ע��</a>|<a href="login.aspx">��¼</a></div></td>
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
            <td width="144"  class="labelDateTime">������2009��12��10��</td>
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
              ����
              <input type="radio" name="radiobutton" value="radiobutton" />
              ����
              <input type="radio" name="radiobutton" value="radiobutton" />
            ���</label></td>
			<td width="14%"><img src="Images/btnSearch.jpg" alt="Search" width="86" height="24"  

onclick="javascript:window.location='search.aspx';" /></td>
			<td width="22%" align="right" class="welcome">
               ��ӭ�㣺�����            </td>
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
          <td height="28" align="left" valign="middle" class="nav"><a href="/">��ҳ</a>->��¼</td>
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
                  <td width="47%" align="right">�û�����</td>
                  <td width="2%">&nbsp;</td>
                  <td width="51%" align="left">
                      <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                  <td align="right">���룺</td>
                  <td>&nbsp;</td>
                  <td align="left">
                      <asp:TextBox ID="txtUserPwd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                  <td colspan="3" align="center"><label>
                      <asp:Button ID="btnLogin" runat="server" Text="��¼" onclick="btnLogin_Click" />
                      <input type="submit" name="btnClear" value="���" />
                      </label></td>
                  </tr>
              </table></td>
			  <td width="38%" align="left" valign="top"><p>���Ƿ�û���ʺţ�����������<a href="reg.aspx">ע��

</a>��</p>
			    <p>��������������룬�������<a href="getpassword.aspx">�һ�����</a>��</p></td>
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
	����վ����������2520   ��ǰ��������111��<br>
	Copyright&copy; 2009 fzxy.edu.cn. All Rights Reserved. </td>
  </tr>
</table>
</div>
</form>
</body>
<!-- InstanceEnd --></html>
