<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminSpace.aspx.cs" Inherits="adminSpace" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>���˿ռ�</title>
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
    <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="120">
            <a href="index.aspx"><asp:Image ID="imgLogo" runat="server" ImageUrl="Images/logo.jpg" /></a></td>
        <td width="640" valign="top"  background="Images/headerRight.jpg"><div align="right" class="text12_black"><a href="reg.aspx">ע��</a>|<a href="login.aspx">��¼</a></div></td>
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
			<td width="14%"><img src="Images/btnSearch.jpg" alt="Search" width="86" height="24"  onclick="javascript:window.location='search.aspx';" /></td>
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
          <td height="28" align="left" valign="middle" class="nav"><a href="index.aspx">��ҳ</a>->���˿ռ�</td>
        </tr>
        <tr>
          <td background="Images/spliter4.gif"></td>
        </tr>
		<tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="99" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                </tr>
				<tr>
                  <td align="left"><a href="modifyInfo.aspx" target="mainContent">�޸ĸ�����Ϣ</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="myMusic.aspx" target="mainContent">�������ص�����</a></td>
                </tr>
				<tr>
                  <td align="left"><a href="adminAllMusic.aspx" target="mainContent">������������</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="uploadMusic.aspx" target="mainContent">��������</a></td>
                </tr>
				<tr>
                  <td align="left"><a href="adminUsers.aspx" target="mainContent">�����Ա</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="adminDepartment.aspx" target="mainContent">ϵ�����</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="adminMajor.aspx" target="mainContent">רҵ����</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="adminClasses.aspx" target="mainContent">�༶����</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="adminMusicCategory.aspx" target="mainContent">���ַ������</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="adminStatistics.aspx" target="mainContent">ͳ�Ʒ���</a></td>
                </tr>
                
                
              </table></td>
			  <td width="1" background="Images/spliter3.gif">			  </td>
              <td width="650">
			  <iframe id="mainContent" name="mainContent" src="modifyInfo.aspx" height="400" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
			  </iframe>
			  </td>
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
