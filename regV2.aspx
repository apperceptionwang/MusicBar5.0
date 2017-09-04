<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regV2.aspx.cs" Inherits="regV2"  EnableEventValidation="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
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
<asp:ScriptManager ID="ScriptManager2" runat="server">
                        </asp:ScriptManager>
<div align="center">
<table width="760" height="50" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="120">
            <a href="index.aspx"><asp:Image ID="imgLogo" runat="server" ImageUrl="Images/logo.jpg" /></a></td>
        <td width="640" valign="top"  background="Images/headerRight.jpg"><div align="right" class="text12_black"><a href="reg.aspx">注册</a>|<a href="login.aspx">登录</a></div></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="760" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td> 
                            <table width="760" border="0"  cellpadding="0" cellspacing="0">
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
            
            
            <td width="144"  class="labelDateTime">

                             
                <asp:Label ID="lblNow" runat="server"></asp:Label>

          </tr>
        </table>
     
		</td>
        <td >
		<table width="100%" border="0"  cellpadding="0" cellspacing="0">
          <tr valign="middle">
            <td width="4%"><img src="Images/search.jpg" alt="tip" width="26" height="30" /></td>
            <td width="29%">
                &nbsp;<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox></td>
            <td width="31%"><label>
              <input name="radiobutton" type="radio" value="radiobutton" checked="checked" />
              歌名
              <input type="radio" name="radiobutton" value="radiobutton" />
              歌手
              <input type="radio" name="radiobutton" value="radiobutton" />
            歌词</label></td>
			<td width="14%">
                &nbsp;<asp:ImageButton ID="btnSearch" runat="server" ImageUrl="Images/btnSearch.jpg" OnClick="btnSearch_Click" /></td>
			<td width="22%" align="right" class="welcome">
                <asp:HyperLink ID="hlMySpace" runat="server" Target="_blank">欢迎你：孙悟空</asp:HyperLink>
            </td>
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
          <td height="28" align="left" valign="middle" class="nav"><a href="index.aspx">首页</a>->注册</td>
        </tr>
        <tr>
          <td background="Images/spliter4.gif"></td>
        </tr>
		<tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  注册从这里开始</td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td rowspan="6" style="width: 74%">
			  
               <asp:Panel ID="panelStep1" runat="server"  Width="100%">
                    
			  <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="21%" align="right">学号：</td>
                  <td width="48%" align="left">
                     <asp:TextBox ID="txtStuNo" runat="server"></asp:TextBox></td>
                  <td width="31%">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ErrorMessage="不能为空" ControlToValidate="txtStuNo"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td align="right">密码：</td>
                  <td align="left">
                      <asp:TextBox ID="txtPwd" runat="server" ontextchanged="txtPwd_TextChanged" 
                          TextMode="Password"></asp:TextBox></td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                          ControlToValidate="txtPwd" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td align="right">确认密码：</td>
                  <td align="left">
                      <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox></td>
                  <td>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                          ControlToCompare="txtPwd" ControlToValidate="txtPwd2" ErrorMessage="密码不一致"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                  <td colspan="2" align="center"><label>
                      &nbsp;<asp:Button ID="btnStep1Next" runat="server" Text="下一步" OnClick="btnStep1Next_Click" /></label></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
              </asp:Panel>
              
               <asp:Panel ID="panelStep2" runat="server"  Width="100%">
              
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
                      &nbsp;<asp:TextBox ID="txtBirthday" runat="server" ReadOnly="True"></asp:TextBox>
                      <asp:Calendar ID="calBirthday" runat="server" Height="68px" OnSelectionChanged="calBirthday_SelectionChanged"
                          Width="231px"></asp:Calendar>
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
                      <asp:TextBox ID="txtPost" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                          ControlToValidate="txtPost" ErrorMessage="邮编格式不正确" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                     </td>
                  <td style="width: 312px; height: 24px;">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px">Email：</td>
                  <td style="width: 555px" align="left">
                      <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                          ControlToValidate="txtEmail" ErrorMessage="邮箱格式不正确" 
                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     </td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="height: 24px; width: 97px;">电话：</td>
                  <td style="width: 555px; height: 24px" align="left">
                      <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                          ControlToValidate="txtTel" ErrorMessage="电话格式不正确" 
                          ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"></asp:RegularExpressionValidator>
                     </td>
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
                      &nbsp;
                      <asp:ImageButton ID="ibStep2Prev" runat="server" OnClick="ibStep2Prev_Click" />
                      <asp:ImageButton ID="ibStep2Next" runat="server" ImageUrl="~/Images/bg2.jpg" OnClick="ibStep2Next_Click" /></label></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
              </table>
                 
             </asp:Panel>

               <asp:Panel ID="panelStep3" runat="server"  Width="100%">
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
			   <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="21%" align="right">系别：</td>
                  <td width="48%" align="left"><label>
                 
                      &nbsp;<asp:DropDownList ID="dddlDepartment" runat="server" 
                          DataSourceID="SqlDataSource1" DataTextField="DepartmentName" 
                          DataValueField="DepartmentName" 
                          onselectedindexchanged="dddlDepartment_SelectedIndexChanged">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [DepartmentName] FROM [Department]">
                      </asp:SqlDataSource>
                      </label></td>
                  <td width="31%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right">专业：</td>
                  <td align="left">
                      <asp:DropDownList ID="dddlMajor" runat="server" DataSourceID="SqlDataSource2" 
                          DataTextField="MajorName" DataValueField="MajorId">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          
                          SelectCommand="SELECT DISTINCT * FROM [Major] WHERE ([DepartmentName] = @DepartmentName)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="dddlDepartment" 
                                  DefaultValue="SelectedItem.Text" Name="DepartmentName" 
                                  PropertyName="SelectedValue" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                    </td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td align="right">班级：</td>
                  <td align="left">
                      &nbsp;<asp:ListBox ID="lbClass" runat="server" Width="126px" 
                          DataSourceID="SqlDataSource3" DataTextField="classCode" 
                          DataValueField="classCode">
                      </asp:ListBox>
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT DISTINCT * FROM [StudentClass] WHERE ([MajorId] = @MajorId)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="dddlMajor" Name="MajorId" 
                                  PropertyName="SelectedValue" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                    </td>
                   
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="2" align="center"><label>
                      &nbsp; &nbsp;
                      <asp:LinkButton ID="lbStep3Prev" runat="server" OnClick="lbStep3Prev_Click">上一步</asp:LinkButton>
                      <asp:LinkButton ID="lbStep3Next" runat="server" OnClick="lbStep3Next_Click">下一步</asp:LinkButton></label></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000">
                    </asp:Timer>
              </ContentTemplate> 
                </asp:UpdatePanel>
                  </asp:Panel>
                 
               <asp:Panel ID="panelStep4" runat="server"  Width="100%">
              
			   <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="21%" align="right">选择个人照片：</td>
                  <td width="48%"><label>
                      <asp:FileUpload ID="fuPhoto" runat="server" />
                      <img src="Photos/1.gif" width="108" height="108" /></label></td>
                  <td width="31%" ><p>建议图像宽度和高度为：</p>
                    <p>108*108</p></td>
                </tr>
                
                <tr>
                  <td colspan="2" align="center" style="height: 24px"><label>
                      &nbsp;&nbsp;
                      <asp:Button ID="btnStep4Prev" runat="server" OnClick="btnStep4Prev_Click" Text="上一步" />
                      <asp:Button ID="btnFinish" runat="server" OnClick="btnFinish_Click" Text="完成" /></label></td>
                  <td style="height: 24px">&nbsp;</td>
                </tr>
              </table>
			  
			  </asp:Panel>
                 <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">                
                
                <tr>
                  <td align="left" style="height: 24px" valign="top">
                      <asp:PlaceHolder ID="phSummary" runat="server"></asp:PlaceHolder>
                     </td>
                </tr>
              </table>
             
               <asp:Panel ID="panelSummary" runat="server"  Width="100%">
              
               </asp:Panel>
              
			  </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  <asp:LinkButton ID="lbStep1" runat="server" OnClick="lbStep1_Click">第一步：填写登录信息</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  <asp:LinkButton ID="lbStep2" runat="server" OnClick="lbStep2_Click">第二步：填写基本信息</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  <asp:LinkButton ID="lbStep3" runat="server" OnClick="lbStep3_Click">第三步：填写学生详情</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  <asp:LinkButton ID="lbStep4" runat="server" OnClick="lbStep4_Click">第四步：上传个人照片</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">&nbsp;<asp:LinkButton ID="lbStep5" runat="server">第五步：完成</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
          </table></td>
		</tr>
      </table>
	  <!-- InstanceEndEditable --></td>
  </tr>
</table>
<table width="760" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<hr width="90%" />
            &nbsp;</td>
	</tr>
  <tr>
    <td class="footer" align="center">
	本网站访问人数：2520   当前在线人数111人er" align="center">
	本网站访问人数：2520   当前在线人数111人
ble>
</div>
</form>
</body>
<!-- InstanceEnd --></html>
