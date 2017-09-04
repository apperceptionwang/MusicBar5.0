<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminMajor.aspx.cs" Inherits="adminMajor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>רҵ����</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
    <form id="form2" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">רҵ����</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td width="1%">&nbsp;</td>       
        <td width="77%">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
		  <td width="23%" align="right">ϵ�����ƣ�</td>
		  <td width="23%" align="right"><label>
              <asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True">
              </asp:DropDownList>&nbsp;
		  </label></td>
            <td width="23%" align="right">רҵ���ƣ�</td>
            <td width="40%">
                &nbsp;<asp:TextBox ID="txtMajor" runat="server"></asp:TextBox></td>
            <td width="16%"></td>
            <td width="21%">&nbsp;<asp:Button ID="btnAdd" runat="server" Text="�����רҵ" /></td>
          </tr>
        </table>
		</td>
        <td width="22%">&nbsp;</td>
      </tr>
	  <tr>
	  <td width="1%">&nbsp;</td>
	  <td width="77%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="13%" align="right">ѡ��Ժϵ��</td>
          <td width="87%">
              &nbsp;<asp:DropDownList 
                  ID="ddlDepartment2" runat="server" AutoPostBack="True" DataSourceID="dsMajor">
              </asp:DropDownList></td>
        </tr>
      </table></td>
	  <td width="22%">&nbsp;</td>
	  </tr>
	  
       <tr>
        <td width="1%">&nbsp;</td>       
        <td width="77%"><table width="80%" border="0" cellspacing="0" cellpadding="0">
          <tr class="tableheader">
            <td width="26%">&nbsp;</td>
            <td width="50%" align="left">רҵ����</td>
            <td width="13%" align="center">�༭</td>
            <td width="11%" align="center">ɾ��</td>
          </tr>
          <tr>
            <td align="right">��</td>
            <td>�������Ӧ��</td>
            <td align="center"><a href="#">�༭</a></td>
            <td align="center"><a href="#">ɾ��</a></td>
          </tr>
          <tr>
            <td align="right">��</td>
            <td>�������ѧ�뼼��</td>
            <td align="center"><a href="#">�༭</a></td>
            <td align="center"><a href="#">ɾ��</a></td>
          </tr>
          <tr>
            <td align="right">��</td>
            <td>�������</td>
            <td align="center"><a href="#">�༭</a></td>
            <td align="center"><a href="#">ɾ��</a></td>
          </tr>
        </table></td>
        <td width="22%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
    <asp:SqlDataSource ID="dsMajor" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MusicBarConnectionString3 %>" 
                  
                
                  DeleteCommand="DELETE FROM [Major] WHERE [MajorId] = @MajorId" 
                  InsertCommand="INSERT INTO [Major] ([MajorName], [DepartmentName])
 VALUES (@MajorName, @DepartmentName)" 
                  SelectCommand="SELECT * FROM [Major] WHERE ([DepartmentName] = @DepartmentName)" 
                  UpdateCommand="UPDATE [Major] SET [MajorName] = @MajorName, 
[DepartmentName] = @DepartmentName WHERE [MajorId] = @MajorId">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="ddlDepartment" Name="DepartmentName" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
                  <DeleteParameters>
                      <asp:Parameter Name="MajorId" Type="Int32" />
                  </DeleteParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="MajorName" Type="String" />
                      <asp:Parameter Name="DepartmentName" Type="String" />
                      <asp:Parameter Name="MajorId" Type="Int32" />
                  </UpdateParameters>
                  <InsertParameters>
                      <asp:Parameter Name="MajorName" Type="String" />
                      <asp:Parameter Name="DepartmentName" Type="String" />
                  </InsertParameters>


    </asp:SqlDataSource>
   <asp:FormView ID="fvMajor" runat="server" AllowPaging="True" DataKeyNames="MajorId" 
                DataSourceID="dsMajor"  Width="100%"  HeaderText="רҵά��" >
            <EditItemTemplate>
                רҵ��ţ�
                <asp:Label ID="MajorIdLabel1" runat="server" Text='<%# Eval("MajorId") %>' />
                <br />
                רҵ���ƣ�
                <asp:TextBox ID="MajorNameTextBox" runat="server" 
                    Text='<%# Bind("MajorName") %>' />
                <br />
                ���ڲ��ţ�
                <asp:TextBox ID="DepartmentNameTextBox" runat="server" 
                    Text='<%# Bind("DepartmentName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="����" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="ȡ��" />
            </EditItemTemplate>
            <InsertItemTemplate>
                רҵ����
                <asp:TextBox ID="MajorNameTextBox" runat="server" 
                    Text='<%# Bind("MajorName") %>' />
                <br />
                ���ڲ��ţ�
                <asp:TextBox ID="DepartmentNameTextBox" runat="server" 
                    Text='<%# Bind("DepartmentName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="����" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="ȡ��" />
            </InsertItemTemplate>
            <ItemTemplate>
                רҵ��ţ�
                <asp:Label ID="MajorIdLabel" runat="server" Text='<%# Eval("MajorId") %>' />
                <br />
                רҵ����
                <asp:Label ID="MajorNameLabel" runat="server" Text='<%# Bind("MajorName") %>' />
                <br />
                ���ڲ��ţ�
                <asp:Label ID="DepartmentNameLabel" runat="server" 
                    Text='<%# Bind("DepartmentName") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="�༭" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="ɾ��" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="�½�" />
            </ItemTemplate>     
       		<HeaderStyle HorizontalAlign="Center" />
                </asp:FormView>

    </form>
    <p>
        &nbsp;</p>
    <p>
        123</p>
</body>
</html>
