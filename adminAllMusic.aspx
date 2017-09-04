<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>修改修改个人信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
    <form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" >
<ContentTemplate>            
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="style1">&nbsp;</td>
    <td width="80%"><table border="0" cellspacing="2" cellpadding="0" 
            style="width: 103%">
      <tr>
        <td width="12%">搜索：</td>
        <td width="24%">
            <asp:TextBox ID="txtKeyWords" runat="server"></asp:TextBox>
          </td>
        <td width="48%">
            <asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Selected="True">歌名</asp:ListItem>
                <asp:ListItem Value="2">歌手</asp:ListItem>
                <asp:ListItem Value="3">歌词</asp:ListItem>
            </asp:RadioButtonList>
    </td>
        
        <td width="11%">
            <asp:Button ID="btnSearch" runat="server"  Text="搜索" 
                />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </td>
        <td width="5%">&nbsp;</td>
      </tr>
    </table></td>
    <td width="10%">&nbsp;</td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
            Width="100%" AllowPaging="True" DataKeyNames="musicId" AllowSorting="True" DataSourceID="SqlDataSource1" 
            >
            <Columns>
                <asp:BoundField DataField="musicId" HeaderText="musicId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="musicId" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                    SortExpression="CategoryName" />
                <asp:BoundField DataField="uploaderStuNo" HeaderText="uploaderStuNo" 
                    SortExpression="uploaderStuNo" />
                <asp:BoundField DataField="musicName" HeaderText="musicName" 
                    SortExpression="musicName" />
                <asp:BoundField DataField="singer" HeaderText="singer" 
                    SortExpression="singer" />
                <asp:BoundField DataField="content" HeaderText="content" 
                    SortExpression="content" />
                <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
                <asp:BoundField DataField="addDate" HeaderText="addDate" 
                    SortExpression="addDate" />
                <asp:BoundField DataField="clicks" HeaderText="clicks" 
                    SortExpression="clicks" />
            </Columns>
        </asp:GridView>
        
    </td>     
  </tr>
</table>

</ContentTemplate>
 </asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
  <ProgressTemplate>
         <b> Searching....</b>          
  </ProgressTemplate>
</asp:UpdateProgress>  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [musicId], [CategoryName], [uploaderStuNo], [musicName], [singer], [content], [url], [addDate], [clicks] FROM [Music]">
    </asp:SqlDataSource>

<a href ="http://www.baidu.com" >百度</a>
<a href ="http://www.baidu.com">搜狐</a>
<a href ="http://www.baidu.com">百度</a>
<a href ="http://www.baidu.com">百度</a>
<a href ="http://www.baidu.com">百度</a>
<a href ="http://www.baidu.com">百度</a>
</form>
</body>
</html>
