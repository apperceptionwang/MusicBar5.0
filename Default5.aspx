<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>

    <form id="form1" runat="server">
    <div>
 <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate> 
       
              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="DepartmentName" DataValueField="DepartmentName" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT DISTINCT * FROM [Department]"></asp:SqlDataSource> 
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                    DataTextField="MajorName" DataValueField="MajorId" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged1" 
                    ontextchanged="DropDownList2_TextChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT DISTINCT * FROM [Major] WHERE ([DepartmentName] = @DepartmentName2)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="DepartmentName2" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3"
                    DataTextField="classCode" DataValueField="classCode">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT DISTINCT * FROM [StudentClass] WHERE ([MajorId] = @MajorId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="MajorId" PropertyName="SelectedValue"
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
         </asp:UpdatePanel>
    </div>
    <asp:Label ID="Label1" runat="server" Text="1d2sa1d2as4d"></asp:Label>
    </form>
</body>
</html>
