<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadMusic.aspx.cs" Inherits="uploadMusic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��������</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">��������</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td width="1%">&nbsp;</td>
        <td width="17%" align="right">�������ƣ�</td>
        <td width="57%">
            &nbsp;<asp:TextBox ID="txtMusicName" runat="server"></asp:TextBox></td>
        <td style="width: 172px">&nbsp;</td>
      </tr>
      <tr>
        <td style="height: 28px">&nbsp;</td>
        <td align="right" style="height: 28px">����������</td>
        <td style="height: 28px">
            <asp:TextBox ID="txtSinger" runat="server"></asp:TextBox></td>
        <td style="width: 172px; height: 28px">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="right">������ݣ�</td>
        <td>
          <label>
              &nbsp;<asp:TextBox ID="txtContent" runat="server"></asp:TextBox></label></td>
        <td style="width: 172px">&nbsp;</td>
      </tr>
      <tr>
        <td style="height: 28px">&nbsp;</td>
        <td align="right" style="height: 28px">�������</td>
        <td style="height: 28px"><label>
            &nbsp;<asp:DropDownList ID="ddlCategory" runat="server">
            </asp:DropDownList></label></td>
        <td style="width: 172px; height: 28px">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="right">�����ļ���</td>
        <td><label>
            &nbsp;
            <asp:FileUpload ID="fuMusic" runat="server" /></label></td>
        <td style="width: 172px">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><label>
            &nbsp;<asp:Button ID="btnUpload" runat="server" Text="����" />
          <input type="reset" name="Submit2" value="���" />
        </label></td>
        <td style="width: 172px">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
