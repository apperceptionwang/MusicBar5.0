<%@ Page Language="C#" AutoEventWireup="true" CodeFile="playMusic.aspx.cs" Inherits="playMusic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>��������</title>
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
          <td height="28" align="left" valign="middle" class="nav"><a href="index.aspx">��ҳ</a>->��������</td>
        </tr>
        <tr>
          <td background="Images/spliter4.gif"></td>
        </tr>
		<tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
            <tr>
              <td width="9%">&nbsp;</td>
              <td width="30%" valign="top"><object classid=clsid:22d6f312-b0f6-11d0-94ab-0080c74c7e95 width="100%" height="160">
                <param name=showstatusbar value=1 />
                <param name="filename" value="music/My Heart Will Go On.wma" />
                <embed src="music/My Heart Will Go On.wma" width="100%" height="100%"> </embed>
              </object></td>
              <td width="55%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td width="23%">�������ƣ�</td>
                  <td width="77%">�°��Ĵ���</td>
                </tr>
                <tr>
                  <td>�������ƣ�</td>
                  <td>�Ű���</td>
                </tr>
                <tr>
                  <td>�����ˣ�</td>
                  <td>����</td>
                </tr>
                <tr>
                  <td>����ʱ��:</td>
                  <td>2009-7-8</td>
                </tr>
				 <tr>
                  <td>�㲥����:</td>
                  <td>2536</td>
                </tr>
              </table> 
			  </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="9%">&nbsp;</td>
              <td colspan="2" align="left" class="title"><p>�������</p></td>
              <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="9%">&nbsp;</td>
              <td colspan="2" align="left" valign="top"><p>���ǵ�����ʱ������<br />
                �����Զ������Ļ�<br />
                ���Ҿ����Ƿ紵���<br />
                �������޳�����ɣ�仯<br />
                ��ЩΪ���������Ĵ���<br />
                ����Զ�������İ�<br />
                �������ĵĳ��ĵĻ�<br />
                ������������Ȼ��û����<br />
                �߰��߰� <br />
                <br />
              </p></td>
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
