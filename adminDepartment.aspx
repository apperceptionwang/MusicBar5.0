<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminDepartment.aspx.cs" Inherits="adminDepartment" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>系别管理</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">系别管理</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td width="4%">&nbsp;</td>       
        <td width="70%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="23%" align="right">系别名称：</td>
            <td width="40%">
                <asp:TextBox ID="txtDepName" runat="server"></asp:TextBox></td>
            <td width="16%">
                &nbsp;<asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="添加新系别" /></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="26%">&nbsp;</td>
      </tr>
       <tr>
        <td width="4%">&nbsp;</td>       
        <td width="70%"><table width="80%" border="0" cellspacing="0" cellpadding="0">
          <tr class="tableheader">
            <td width="26%">&nbsp;</td>
            <td width="50%" align="left">院系名称</td>
            <td width="13%" align="center">编辑</td>
            <td width="11%" align="center">删除</td>
          </tr>
          <tr>
            <td align="right">·</td>
            <td>计算机系</td>
            <td align="center"><a href="#">编辑</a></td>
            <td align="center"><a href="#">删除</a></td>
          </tr>
          <tr>
            <td align="right">·</td>
            <td>自动化系</td>
            <td align="center"><a href="#">编辑</a></td>
            <td align="center"><a href="#">删除</a></td>
          </tr>
          <tr>
            <td align="right">·</td>
            <td>经济管理学</td>
            <td align="center"><a href="#">编辑</a></td>
            <td align="center"><a href="#">删除</a></td>
          </tr>
        </table></td>
        <td width="26%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
