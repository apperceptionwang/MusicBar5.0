<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyInfo.aspx.cs" Inherits="modifyInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>修改个人信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>

</head>

<body>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1" runat="server">

   
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="nav" height="30">修改个人信息</td>
  </tr>
  <tr>
    <td>
	 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
         <asp:View ID="View1" runat="server">
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="18%">&nbsp;</td>
            <td width="70%">
                  <asp:Button ID="Button4" runat="server" CommandArgument="View1" Text="修改密码" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button5" runat="server" CommandArgument="View2" Text="修改基本信息" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button6" runat="server" CommandArgument="View3" Text="修改学生详情" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button7" runat="server" CommandArgument="View4" Text="修改封面照片" CommandName="SwitchViewByID" />
            </td>
            <td width="12%">&nbsp;</td>
          </tr>
        </table>
        
         <table width="100%" border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td width="1%">&nbsp;</td>
            <td width="17%" align="right">旧密码：</td>
            <td width="57%">
                &nbsp;<asp:TextBox ID="txtOldPwd" runat="server"></asp:TextBox></td>
            <td width="25%">&nbsp;</td>
          </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="right">新密码：</td>
        <td>
            &nbsp;<asp:TextBox ID="txtNewPwd" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="right">确认新密码：</td>
        <td>
          <label></label>
            &nbsp;<asp:TextBox ID="txtNewPwd2" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
      </tr>
      
     
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><label>
            &nbsp;
        </label></td>
        <td>&nbsp;</td>
      </tr>
    </table>
             
             </asp:View>
         
         <asp:View ID="View2" runat="server">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="70%">
                      <asp:Button ID="Button1" runat="server" CommandArgument="View1" Text="修改密码" CommandName="SwitchViewByID" />
                      <asp:Button ID="Button2" runat="server" CommandArgument="View2" Text="修改基本信息" CommandName="SwitchViewByID" />
                      <asp:Button ID="Button8" runat="server" CommandArgument="View3" Text="修改学生详情" CommandName="SwitchViewByID" />
                      <asp:Button ID="Button9" runat="server" CommandArgument="View4" Text="修改封面照片" CommandName="SwitchViewByID" />
                </td>
                <td width="12%">&nbsp;</td>
              </tr>
            </table>
        
        <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td  width="16%">姓名：</td>
                  <td width="74%" align="left" >
                      <asp:TextBox ID="txtStuName" runat="server"></asp:TextBox>
                  </td>
                  <td  width="10%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" style="width: 97px">性别：</td>
                  <td style="width: 555px" align="left"><label>
                      <asp:RadioButton ID="rbMan" runat="server" Checked="True" Text="男" />
                      &nbsp; &nbsp;
                      <asp:RadioButton ID="rbWoman" runat="server" Text="女" /></label></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" style="width: 97px">出生日期：</td>
                  <td style="width: 555px" align="left">
                      &nbsp;<asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>&nbsp;
                  </td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px">通信地址：</td>
                  <td style="width: 555px" align="left">
                      &nbsp;<asp:TextBox ID="txtAddress" runat="server" Width="206px"></asp:TextBox></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="height: 24px; width: 97px;">邮编：</td>
                  <td style="width: 555px; height: 24px;" align="left">
                      <asp:TextBox ID="txtPost" runat="server"></asp:TextBox></td>
                  <td style="width: 312px; height: 24px;">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px">Email：</td>
                  <td style="width: 555px" align="left">
                      <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="height: 24px; width: 97px;">电话：</td>
                  <td style="width: 555px; height: 24px" align="left">
                      <asp:TextBox ID="txtTel" runat="server"></asp:TextBox></td>
                  <td style="width: 312px; height: 24px;">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="height: 24px; width: 97px;">手机：</td>
                  <td style="height: 24px; width: 555px;" align="left">
                      <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox></td>
                  <td style="width: 312px; height: 24px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px">兴趣爱好：</td>
                  <td align="left" style="width: 555px">                     
                      <asp:CheckBox ID="cbPhisical" runat="server" Text="体育" />
                      <asp:CheckBox ID="cbTories" runat="server" Text="旅游" /><asp:CheckBox ID="cbReading"
                          runat="server" Text="读书" /><asp:CheckBox ID="cbNetwork" runat="server" Text="网络" /><asp:CheckBox
                              ID="cbOther" runat="server" Text="其它" /></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px; height: 27px">主题皮肤：</td>
                  <td style="width: 555px; height: 27px;" align="left">
                      <asp:RadioButtonList ID="rblSkin" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem Selected="True">蓝色天空</asp:ListItem>
                          <asp:ListItem>绿色大地</asp:ListItem>
                          <asp:ListItem>粉色含蓄</asp:ListItem>
                      </asp:RadioButtonList></td>
                  <td style="width: 312px; height: 27px;"></td>
                </tr>
				
				 <tr>
                  <td align="right" style="width: 97px">主要消费领域：</td>
                  <td style="width: 555px" align="left">
                      <asp:CheckBoxList ID="cblExpenseArea" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem>健身</asp:ListItem>
                          <asp:ListItem>旅游</asp:ListItem>
                          <asp:ListItem>书籍</asp:ListItem>
                          <asp:ListItem>游戏</asp:ListItem>
                          <asp:ListItem>购物</asp:ListItem>
                          <asp:ListItem>饮食</asp:ListItem>
                          <asp:ListItem>其它</asp:ListItem>
                      </asp:CheckBoxList></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 
                <tr>
                  <td colspan="2" align="center"><label>
                      &nbsp;&nbsp;
                  </label></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
              </table>
        </asp:View>
     
      <asp:View ID="View3" runat="server">      
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="18%">&nbsp;</td>
            <td width="70%">
                  <asp:Button ID="Button3" runat="server" CommandArgument="View1" Text="修改密码" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button10" runat="server" CommandArgument="View2" Text="修改基本信息" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button11" runat="server" CommandArgument="View3" Text="修改学生详情" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button12" runat="server" CommandArgument="View4" Text="修改封面照片" CommandName="SwitchViewByID" />
            </td>
            <td width="12%">&nbsp;</td>
          </tr>
        </table>
         <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="21%" align="right">系别：</td>
                  <td width="48%" align="left"><label>
                      &nbsp;<asp:DropDownList ID="dddlDepartment" runat="server">
                          <asp:ListItem Value="1">地震科学系</asp:ListItem>
                          <asp:ListItem Value="2">地震工程系</asp:ListItem>
                          <asp:ListItem Value="3" Selected="true">信息工程系</asp:ListItem>
                          <asp:ListItem Value="4">经济管理学</asp:ListItem>
                      </asp:DropDownList></label></td>
                  <td width="31%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right">专业：</td>
                  <td align="left">
                      <asp:DropDownList ID="dddlMajor" runat="server">
                          <asp:ListItem Value="1">软件技术</asp:ListItem>
                          <asp:ListItem Value="2">网络工程</asp:ListItem>
                          <asp:ListItem Value="3">网络安全</asp:ListItem>
                          <asp:ListItem Value="4">软件工程</asp:ListItem>
                      </asp:DropDownList></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td align="right">班级：</td>
                  <td align="left">
                      &nbsp;<asp:ListBox ID="lbClass" runat="server" Width="126px">
                          <asp:ListItem>0850411</asp:ListItem>
                          <asp:ListItem>0860411</asp:ListItem>
                      </asp:ListBox></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="2" align="center"><label>
                      &nbsp; &nbsp;&nbsp;&nbsp;
                  </label></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
        
       
     </asp:View>
     
      <asp:View ID="View4" runat="server">      
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="18%">&nbsp;</td>
            <td width="70%">
                  <asp:Button ID="Button13" runat="server" CommandArgument="View1" Text="修改密码" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button14" runat="server" CommandArgument="View2" Text="修改基本信息" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button15" runat="server" CommandArgument="View3" Text="修改学生详情" CommandName="SwitchViewByID" />
                  <asp:Button ID="Button16" runat="server" CommandArgument="View4" Text="修改封面照片" CommandName="SwitchViewByID" />
            </td>
            <td width="12%">&nbsp;</td>
          </tr>
        </table>
         <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="21%" align="right">选择个人照片：</td>
                  <td width="48%"><label>
                      <asp:FileUpload ID="fuPhoto" runat="server" />
                      <img src="Images/1.gif" width="108" height="108" /></label></td>
                  <td width="31%" ><p>建议图像宽度和高度为：</p>
                    <p>108*108</p></td>
                </tr>
                
                <tr>
                  <td colspan="2" align="center" style="height: 24px"><label>
                      &nbsp;&nbsp;&nbsp;
                  </label></td>
                  <td style="height: 24px">&nbsp;</td>
                </tr>
              </table>
        
        
     </asp:View>
     
    </asp:MultiView>
    
	
    
    </td>
  </tr>
  <tr>
    <td align="center">
    <asp:Button ID="btnSave" runat="server"  Text="保存"/>
    </td>
  </tr>
</table>
</form>
</body>
</html>
