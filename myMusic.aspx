<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myMusic.aspx.cs" Inherits="myMusic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理我的音乐</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
    <form id="form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">管理音乐</td>
  </tr>
  <tr>
    <td>
	
	<table width="100%" height="0" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="8%">&nbsp;</td>
    <td width="58%">&nbsp;</td>
    <td width="34%">&nbsp;</td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td width="4%">
            <asp:TreeView ID="tvCategore" runat="server"  OnSelectedNodeChanged="tvCategory_SelectedNodeChanged">
            </asp:TreeView>
          </td>
        <td width="69%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr class="tableheader">
            <td width="1%">&nbsp;</td>
            <td width="29%">歌曲名称</td>
            <td width="14%" align="center">歌手名</td>
            <td width="16%" align="center">上载日期</td>
            <td width="12%" align="center">欣赏人数</td>
            <td width="14%" align="center">编辑</td>
            <td width="14%" align="center">删除</td>
          </tr>
          <tr >
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          <tr>
            <td>·</td>
            <td align="left">我叫小沈阳</td>
            <td>小沈阳</td>
            <td>2009-08-07</td>
            <td align="center">1235</td>
            <td align="center"><img src="Images/Edit.gif" width="22" alt="edit" height="22" /></td>
            <td align="center"><img src="Images/Delete.gif" width="22" alt="delete" height="22" /></td>
          </tr>
          
        </table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td align="center">上一页 下一页 共10页 </td>
    <td>&nbsp;</td>
  </tr>
</table>

		</td>
		<td width="27%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
