<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg2.aspx.cs" Inherits="reg2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>用户注册</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="Js/main.js"> </script>
</head>

<body>
<form id="mainForm"  runat="server">
<div align="center">
<table width="760" height="50" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="120"><a href="index.aspx"><div id="logo">&nbsp;</div></a></td>
        <td width="640" valign="bottom">	
		<div id="headerRight" align="right" class="text12_black"><a href="reg.aspx">
          注册</a>|<a href="login.aspx">登录</a></div></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="760" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="760" border="0"  cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" height="1">
				<hr width="760" />
			</td>
		</tr>
      <tr>
        <td  width="20%">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="16"><img src="Images/tip.jpg" width="16" /></td>
            <td width="144"  class="labelDateTime">今天是2009年12月10日</td>
          </tr>
        </table>
		</td>
        <td >
		<table width="100%" border="0"  cellpadding="0" cellspacing="0">
          <tr valign="middle">
            <td width="4%"><img src="Images/search.jpg" alt="tip" width="26" height="30" /></td>
            <td width="29%">
              <input type="text" name="txtSearch" id="txtSearch" />
            </td>
            <td width="31%"><label>
              <input name="radiobutton" type="radio" value="radiobutton" checked="checked" />
              歌名
              <input type="radio" name="radiobutton" value="radiobutton" />
              歌手
              <input type="radio" name="radiobutton" value="radiobutton" />
            歌词</label></td>
			<td width="14%"><img src="Images/btnSearch.jpg" alt="Search" width="86" height="24"  

onclick="javascript:window.location='search.aspx';" /></td>
			<td width="22%" align="right" class="welcome">
               欢迎你：孙悟空            </td>
          </tr>
        </table></td>
      </tr>
	  <tr>
			<td colspan="2" height="1">
				<hr width="760" />
			</td>
		</tr>
		
    </table></td>
  </tr>
</table>

<table width="760" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" style="width: 683px"><!-- InstanceBeginEditable name="Body" -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr >
          <td height="28" align="left" valign="middle" class="nav">
          <a href="/">首页</a>->注册
            </td>
        </tr>
        <tr>
          <td style="background-image:url('Images/spliter4.gif')"></td>
        </tr>
		<tr>
          <td>
          <table width="760" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td colspan="2" align="center">
                                    填写登录信息
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 97px" align="right">
                                    学号：
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="txtStuNo" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    密码：
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    确认密码：
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password" Height="20px" Width="125px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
          <table width="760" cellpadding="0" cellspacing="0" align="center">
                <tr>
                    <td>
                        <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td  colspan="2" >
                                    填写基本信息
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px">
                                    姓名：
                                </td>
                                <td  align="left">
                                    <asp:TextBox ID="txtStuName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px">
                                    性别：
                                </td>
                                <td style="width: 555px" align="left">
                                    
                                        <asp:RadioButton ID="rbMan" runat="server" Checked="True" Text="男" 
                                            GroupName="sex" />
                                        &nbsp; &nbsp;
                                        <asp:RadioButton ID="rbWoman" runat="server" Text="女" GroupName="sex" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px">
                                    出生日期：
                                </td>
                                <td style="width: 555px" align="left">
                                    &nbsp;<asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px">
                                    通信地址：
                                </td>
                                <td style="width: 555px" align="left">
                                    &nbsp;<asp:TextBox ID="txtAddress" runat="server" Width="206px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="height: 24px; width: 97px;">
                                    邮编：
                                </td>
                                <td style="width: 555px; height: 24px;" align="left">
                                    <asp:TextBox ID="txtPost" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px">
                                    Email：
                                </td>
                                <td style="width: 555px" align="left">
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="height: 24px; width: 97px;">
                                    电话：
                                </td>
                                <td style="width: 555px; height: 24px" align="left">
                                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="height: 24px; width: 97px;">
                                    手机：
                                </td>
                                <td style="height: 24px; width: 555px;" align="left">
                                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px">
                                    兴趣爱好：
                                </td>
                                <td align="left" style="width: 555px">
                                    <asp:CheckBox ID="cbPhisical" runat="server" Text="体育" />
                                    <asp:CheckBox ID="cbTories" runat="server" Text="旅游" /><asp:CheckBox ID="cbReading"
                                        runat="server" Text="读书" /><asp:CheckBox ID="cbNetwork" runat="server" Text="网络" /><asp:CheckBox
                                            ID="cbOther" runat="server" Text="其它" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px; height: 27px">
                                    主题皮肤：
                                </td>
                                <td style="width: 555px; height: 27px;" align="left">
                                    <asp:RadioButtonList ID="rblSkin" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Selected="True">蓝色天空</asp:ListItem>
                                        <asp:ListItem>绿色大地</asp:ListItem>
                                        <asp:ListItem>粉色含蓄</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 97px">
                                    主要消费领域：
                                </td>
                                <td style="width: 555px; margin-left: 80px;" align="left">
                                    <asp:CheckBoxList ID="cblExpenseArea" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>健身</asp:ListItem>
                                        <asp:ListItem>旅游</asp:ListItem>
                                        <asp:ListItem>书籍</asp:ListItem>
                                        <asp:ListItem>游戏</asp:ListItem>
                                        <asp:ListItem>购物</asp:ListItem>
                                        <asp:ListItem>饮食</asp:ListItem>
                                        <asp:ListItem>其它</asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
          <table width="760" align="center" cellpadding="0" cellspacing="0" >
                <tr>
                    <td>
                    <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                                           <tr><td colspan="3" align="center">选择所在班级</td></tr>

                <tr>
                  <td style="width: 97px" align="right">系别：</td>
                  <td  align="left">
                      &nbsp;<asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True" 
                          onselectedindexchanged="ddlDepartment_SelectedIndexChanged">
                          
                      </asp:DropDownList></td>
                </tr>
                <tr>
                  <td align="right">专业：</td>
                  <td align="left">
                      <asp:DropDownList ID="ddlMajor" runat="server" AutoPostBack="True" 
                          onselectedindexchanged="ddlMajor_SelectedIndexChanged">
                          
                      </asp:DropDownList></td>
                </tr>
                <tr>
                  <td align="right">班级：</td>
                  <td align="left" style="margin-left: 40px">
                      &nbsp;<asp:ListBox ID="lbClass" runat="server" Width="126px">
                         
                      </asp:ListBox></td>
                </tr>
                <tr>
                  <td colspan="2" align="center">
                      &nbsp;</td>
                </tr>
              </table>
			   
                    </td>
                </tr>
            </table>
          <table width="760" align="center" cellpadding="0" cellspacing="0">
          <tr><td colspan="2">上传个人照片</td></tr>
                <tr>
                    <td>
                       <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">

                <tr>
                  <td width="21%" align="right">选择个人照片：</td>
                  <td width="48%">
                      <asp:FileUpload ID="fuPhoto" runat="server" />
                    
                                                    </td>
                  <td width="31%" >建议图像宽度和高度为： 108*108</td>
                </tr>
                
                <tr>
                  <td colspan="2" align="center">
                      <asp:Button ID="btnFinish" runat="server" Text="完成" onclick="btnFinish_Click" />
                    </td>
                  <td>&nbsp;</td>
                </tr>
              </table> 
                                            <asp:Label ID="labRegSuccess" runat="server" ForeColor="#FF3300"></asp:Label>
                                            &nbsp;</td>
                </tr>
            </table>
          </td>
		</tr>
      </table>
	  <!-- InstanceEndEditable -->
        
    </td>
  </tr>
</table>


<table width="760" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<hr width="90%" />
		</td>
	</tr>
  <tr>
    <td class="footer" align="center">
	本网站访问人数：2520   当前在线人数111人<br>
	Copyright&copy; 2009 fzxy.edu.cn. All Rights Reserved. </td>
  </tr>
</table>
</div>
</form>
</body>
<!-- InstanceEnd --></html>
