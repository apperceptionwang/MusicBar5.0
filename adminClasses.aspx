<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminClasses.aspx.cs" Inherits="adminClasses" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�༶����</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

    <style type="text/css">
        .style1
        {
            height: 24px;
        }
    </style>

</head>

<body>
    <form id="form2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">�༶����</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
      <tr>
        <td width="1%">&nbsp;</td>       
        <td width="77%">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
           <ContentTemplate>  
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
		  <td width="11%" align="right">&nbsp;</td>
		  <td width="27%" align="right">ϵ�����ƣ�</td>
		  <td width="62%">
              &nbsp;<asp:DropDownList 
                  ID="ddlDepartment" runat="server" AutoPostBack="True" 
                  DataSourceID="SqlDataSource1" DataTextField="DepartmentName" 
                  DataValueField="DepartmentName" 
                  >
              </asp:DropDownList></td>
            </tr>
		  <tr>
		  <td width="11%" align="right">&nbsp;</td>
		  <td width="27%" align="right">רҵ���ƣ�</td>
            <td width="62%">
                &nbsp;<asp:DropDownList ID="ddlMajor" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="MajorName" 
                    DataValueField="MajorId" AutoPostBack="True">
                </asp:DropDownList></td>
            </tr>
		  <tr>
		  <td width="11%" align="right">&nbsp;</td>
		  <td width="27%" align="right">�༶���ƣ�</td>
            <td width="62%">
                &nbsp;<asp:TextBox ID="txtClass" runat="server"></asp:TextBox></td>
            </tr>
		   <tr>
		  <td width="11%" align="right">&nbsp;</td>
		  <td width="27%" align="right">&nbsp;</td>
            <td width="62%">
                &nbsp;<asp:Button ID="btnAdd" runat="server" Text="����°༶" /></td>
            </tr>
        </table>
        </ContentTemplate>
        <Triggers>
           <asp:PostBackTrigger ControlID = "ddlDepartment"  /> 
        </Triggers>
          </asp:UpdatePanel> 
		</td>
        <td width="22%">&nbsp;</td>
      </tr>
	  <tr>
	  <td width="1%">&nbsp;</td>
	  <td width="77%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="12%" align="right">ѡ��Ժϵ��</td>
          <td width="17%">
              &nbsp;<asp:DropDownList 
                  ID="ddlDepartment2" runat="server" AutoPostBack="True" 
                  DataSourceID="SqlDataSource1" DataTextField="DepartmentName" 
                  DataValueField="DepartmentName">
              </asp:DropDownList></td>
		  <td width="13%" align="right">ѡ��רҵ��</td>
          <td width="58%">
              &nbsp;<asp:DropDownList ID="ddlMajor2" 
                  runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" 
                  DataTextField="MajorName" DataValueField="MajorId">
              </asp:DropDownList></td>
        </tr>
      </table></td>
	  <td width="22%">&nbsp;</td>
	  </tr>
	  
       <tr>
        <td width="1%">&nbsp;</td>       
        <td width="77%"><table width="80%" border="0" cellspacing="0" cellpadding="0">
          <tr class="tableheader">
            <td width="26%" class="style1"></td>
            <td width="50%" align="left" class="style1">רҵ����</td>
            <td width="13%" align="center" class="style1">�༭</td>
            <td width="11%" align="center" class="style1">ɾ��</td>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [DepartmentName] FROM [Department]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [MajorId], [MajorName], [DepartmentName] FROM [Major] WHERE ([DepartmentName] = @DepartmentName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlDepartment" Name="DepartmentName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [classCode], [MajorId] FROM [StudentClass] WHERE ([MajorId] = @MajorId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlMajor" Name="MajorId" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
