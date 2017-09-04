<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminUsers.aspx.cs" Inherits="adminUsers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>修改会员</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
    <form id="form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">
        管理会员</td>
  </tr>
  <tr>
    <td>
	
	<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="8%">&nbsp;</td>
    <td width="78%"><table width="100%" border="0" cellspacing="2" cellpadding="0">
      <tr>
        <td width="12%">搜索：</td>
        <td width="24%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td width="48%"><label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="true">学号</asp:ListItem>
                <asp:ListItem>名称</asp:ListItem>
            </asp:RadioButtonList></label></td>
        <td width="11%"><label>
            <asp:Button ID="btnSearch" runat="server" Text="搜索" />&nbsp;
        </label></td>
        <td width="5%">&nbsp;</td>
      </tr>
    </table></td>
    <td width="14%">&nbsp;</td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td width="4%">&nbsp;</td>
        <td width="69%">
            <asp:GridView ID="gvStudent" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="stuNo" 
                onpageindexchanging="gvStudent_PageIndexChanging" 
                onselectedindexchanged="gvStudent_SelectedIndexChanged" PageSize="5" 
                onrowcancelingedit="gvStudent_RowCancelingEdit" 
                onrowdeleting="gvStudent_RowDeleting" onrowediting="gvStudent_RowEditing" 
                onrowupdating="gvStudent_RowUpdating">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="stuNo" 
                        DataNavigateUrlFormatString="showUserDetailInfo.aspx?sn={0}" 
                        DataTextField="stuNo" HeaderText="学号" Target="_self" />
                    <asp:BoundField DataField="stuName" HeaderText="姓名" />
                    <asp:CheckBoxField DataField="stuSex" HeaderText="性别" />
                    <asp:BoundField DataField="classCode" HeaderText="班级" />
                    <asp:BoundField DataField="stuBirthday" DataFormatString="{0:yyyy-MM-dd}" 
                        HeaderText="出生日期" />
                    <asp:CommandField HeaderText="显示学生详情" SelectText="学生详情" 
                        ShowSelectButton="True" />
                    <asp:CommandField HeaderText="编辑2" ShowEditButton="True" />
                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                </Columns>
                <PagerSettings FirstPageText="第一页" LastPageText="最后一页" 
                    Mode="NextPreviousFirstLast" />
            </asp:GridView>

		</td>
		<td width="27%">
            <asp:Label ID="lblDetail" runat="server" Text="Label"></asp:Label>
            <asp:DetailsView ID="dvUser" runat="server" AutoGenerateRows="False" 
                Height="50px" Width="125px">
                <Fields>
                      <asp:HyperLinkField DataNavigateUrlFields="stuNo" 
                        DataNavigateUrlFormatString="showUserDetailInfo.aspx?sn={0}" DataTextField="stuNo" 
                        HeaderText="学号" Target="_self" />
                    <asp:BoundField DataField="StuName" HeaderText="姓名" />
                    <asp:BoundField DataField="Classcode" HeaderText="班级" />
                    <asp:TemplateField HeaderText="性别">                        
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# FormatSex(Eval("Stusex")) %>'>
</asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="StuBirthday" DataFormatString="{0:yyyy-MM-dd}" 
                        HeaderText="出生日期" />                    
<asp:BoundField DataField="StuAddress" HeaderText="通信地址" />
                    <asp:BoundField DataField="StuPost" HeaderText="邮编" />
                    <asp:BoundField DataField="StuEmail" HeaderText="Email" />
                    <asp:BoundField DataField="StuTel" HeaderText="电话" />
                    <asp:BoundField DataField="StuMobile" HeaderText="手机" />
                    <asp:BoundField DataField="StuHobbies" HeaderText="兴趣爱好" />
                    <asp:BoundField DataField="StuExpenseArea" HeaderText="主要消费领域" />
                    <asp:BoundField DataField="StuTheme" HeaderText="主题皮肤" />
                     <asp:BoundField DataField="RegDate" DataFormatString="{0:yyyy-MM-dd}" 
                        HeaderText="注册日期" />
                    <asp:ImageField DataImageUrlField="StuPhotoUrl" HeaderText="照片">
                    </asp:ImageField>                    

                </Fields>
            </asp:DetailsView>
          </td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
