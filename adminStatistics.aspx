<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminStatistics.aspx.cs" Inherits="adminStatistics" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>统计分析</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">统计分析</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
     
       <tr>
        <td width="4%">&nbsp;</td>       
        <td width="70%"><table width="50%" border="0" cellspacing="0" cellpadding="0">
          <tr class="tableheader">
            <td width="5%">&nbsp;</td>
            <td width="69%" align="left">统计指标</td>
            <td width="26%" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td align="right">·</td>
            <td>网站注册用户数：</td>
            <td align="right">
                <asp:Label ID="lblUsers" runat="server"></asp:Label></td>
          </tr>
          <tr>
            <td align="right">·</td>
            <td>上载音乐总数：</td>
            <td align="right">
                <asp:Label ID="lblMusic" runat="server"></asp:Label></td>
          </tr>
          <tr>
            <td align="right">·</td>
            <td>网站访问人数：</td>
            <td align="right">
                <asp:Label ID="lblVisitor" runat="server"></asp:Label></td>
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
