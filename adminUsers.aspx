<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminUsers.aspx.cs" Inherits="adminUsers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�޸Ļ�Ա</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
    <form id="form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">
        �����Ա</td>
  </tr>
  <tr>
    <td>
	
	<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="8%">&nbsp;</td>
    <td width="78%"><table width="100%" border="0" cellspacing="2" cellpadding="0">
      <tr>
        <td width="12%">������</td>
        <td width="24%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td width="48%"><label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="true">ѧ��</asp:ListItem>
                <asp:ListItem>����</asp:ListItem>
            </asp:RadioButtonList></label></td>
        <td width="11%"><label>
            <asp:Button ID="btnSearch" runat="server" Text="����" />&nbsp;
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
                        DataTextField="stuNo" HeaderText="ѧ��" Target="_self" />
                    <asp:BoundField DataField="stuName" HeaderText="����" />
                    <asp:CheckBoxField DataField="stuSex" HeaderText="�Ա�" />
                    <asp:BoundField DataField="classCode" HeaderText="�༶" />
                    <asp:BoundField DataField="stuBirthday" DataFormatString="{0:yyyy-MM-dd}" 
                        HeaderText="��������" />
                    <asp:CommandField HeaderText="��ʾѧ������" SelectText="ѧ������" 
                        ShowSelectButton="True" />
                    <asp:CommandField HeaderText="�༭2" ShowEditButton="True" />
                    <asp:CommandField HeaderText="ɾ��" ShowDeleteButton="True" />
                </Columns>
                <PagerSettings FirstPageText="��һҳ" LastPageText="���һҳ" 
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
                        HeaderText="ѧ��" Target="_self" />
                    <asp:BoundField DataField="StuName" HeaderText="����" />
                    <asp:BoundField DataField="Classcode" HeaderText="�༶" />
                    <asp:TemplateField HeaderText="�Ա�">                        
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# FormatSex(Eval("Stusex")) %>'>
</asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="StuBirthday" DataFormatString="{0:yyyy-MM-dd}" 
                        HeaderText="��������" />                    
<asp:BoundField DataField="StuAddress" HeaderText="ͨ�ŵ�ַ" />
                    <asp:BoundField DataField="StuPost" HeaderText="�ʱ�" />
                    <asp:BoundField DataField="StuEmail" HeaderText="Email" />
                    <asp:BoundField DataField="StuTel" HeaderText="�绰" />
                    <asp:BoundField DataField="StuMobile" HeaderText="�ֻ�" />
                    <asp:BoundField DataField="StuHobbies" HeaderText="��Ȥ����" />
                    <asp:BoundField DataField="StuExpenseArea" HeaderText="��Ҫ��������" />
                    <asp:BoundField DataField="StuTheme" HeaderText="����Ƥ��" />
                     <asp:BoundField DataField="RegDate" DataFormatString="{0:yyyy-MM-dd}" 
                        HeaderText="ע������" />
                    <asp:ImageField DataImageUrlField="StuPhotoUrl" HeaderText="��Ƭ">
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
