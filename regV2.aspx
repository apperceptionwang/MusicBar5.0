<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regV2.aspx.cs" Inherits="regV2"  EnableEventValidation="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/T.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>�û�ע��</title>
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
        <td width="640" valign="top"  background="Images/headerRight.jpg"><div align="right" class="text12_black"><a href="reg.aspx">ע��</a>|<a href="login.aspx">��¼</a></div></td>
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
              ����
              <input type="radio" name="radiobutton" value="radiobutton" />
              ����
              <input type="radio" name="radiobutton" value="radiobutton" />
            ���</label></td>
			<td width="14%">
                &nbsp;<asp:ImageButton ID="btnSearch" runat="server" ImageUrl="Images/btnSearch.jpg" OnClick="btnSearch_Click" /></td>
			<td width="22%" align="right" class="welcome">
                <asp:HyperLink ID="hlMySpace" runat="server" Target="_blank">��ӭ�㣺�����</asp:HyperLink>
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
          <td height="28" align="left" valign="middle" class="nav"><a href="index.aspx">��ҳ</a>->ע��</td>
        </tr>
        <tr>
          <td background="Images/spliter4.gif"></td>
        </tr>
		<tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  ע������￪ʼ</td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td rowspan="6" style="width: 74%">
			  
               <asp:Panel ID="panelStep1" runat="server"  Width="100%">
                    
			  <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="21%" align="right">ѧ�ţ�</td>
                  <td width="48%" align="left">
                     <asp:TextBox ID="txtStuNo" runat="server"></asp:TextBox></td>
                  <td width="31%">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ErrorMessage="����Ϊ��" ControlToValidate="txtStuNo"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td align="right">���룺</td>
                  <td align="left">
                      <asp:TextBox ID="txtPwd" runat="server" ontextchanged="txtPwd_TextChanged" 
                          TextMode="Password"></asp:TextBox></td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                          ControlToValidate="txtPwd" ErrorMessage="����Ϊ��"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td align="right">ȷ�����룺</td>
                  <td align="left">
                      <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox></td>
                  <td>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                          ControlToCompare="txtPwd" ControlToValidate="txtPwd2" ErrorMessage="���벻һ��"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                  <td colspan="2" align="center"><label>
                      &nbsp;<asp:Button ID="btnStep1Next" runat="server" Text="��һ��" OnClick="btnStep1Next_Click" /></label></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
              </asp:Panel>
              
               <asp:Panel ID="panelStep2" runat="server"  Width="100%">
              
			   <table class="box1" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td  width="16%">������</td>
                  <td width="74%" align="left" >
                      <asp:TextBox ID="txtStuName" runat="server"></asp:TextBox>
                  </td>
                  <td  width="10%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" style="width: 97px">�Ա�</td>
                  <td style="width: 555px" align="left"><label>
                      <asp:RadioButton ID="rbMan" runat="server" Checked="True" Text="��" />
                      &nbsp; &nbsp;
                      <asp:RadioButton ID="rbWoman" runat="server" Text="Ů" /></label></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" style="width: 97px">�������ڣ�</td>
                  <td style="width: 555px" align="left">
                      &nbsp;<asp:TextBox ID="txtBirthday" runat="server" ReadOnly="True"></asp:TextBox>
                      <asp:Calendar ID="calBirthday" runat="server" Height="68px" OnSelectionChanged="calBirthday_SelectionChanged"
                          Width="231px"></asp:Calendar>
                  </td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px">ͨ�ŵ�ַ��</td>
                  <td style="width: 555px" align="left">
                      &nbsp;<asp:TextBox ID="txtAddress" runat="server" Width="206px"></asp:TextBox></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="height: 24px; width: 97px;">�ʱࣺ</td>
                  <td style="width: 555px; height: 24px;" align="left">
                      <asp:TextBox ID="txtPost" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                          ControlToValidate="txtPost" ErrorMessage="�ʱ��ʽ����ȷ" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                     </td>
                  <td style="width: 312px; height: 24px;">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px">Email��</td>
                  <td style="width: 555px" align="left">
                      <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                          ControlToValidate="txtEmail" ErrorMessage="�����ʽ����ȷ" 
                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     </td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="height: 24px; width: 97px;">�绰��</td>
                  <td style="width: 555px; height: 24px" align="left">
                      <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                          ControlToValidate="txtTel" ErrorMessage="�绰��ʽ����ȷ" 
                          ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"></asp:RegularExpressionValidator>
                     </td>
                  <td style="width: 312px; height: 24px;">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="height: 24px; width: 97px;">�ֻ���</td>
                  <td style="height: 24px; width: 555px;" align="left">
                      <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox></td>
                  <td style="width: 312px; height: 24px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px">��Ȥ���ã�</td>
                  <td align="left" style="width: 555px">                     
                      <asp:CheckBox ID="cbPhisical" runat="server" Text="����" />
                      <asp:CheckBox ID="cbTories" runat="server" Text="����" /><asp:CheckBox ID="cbReading"
                          runat="server" Text="����" /><asp:CheckBox ID="cbNetwork" runat="server" Text="����" /><asp:CheckBox
                              ID="cbOther" runat="server" Text="����" /></td>
                  <td style="width: 312px">&nbsp;</td>
                </tr>
				 <tr>
                  <td align="right" style="width: 97px; height: 27px">����Ƥ����</td>
                  <td style="width: 555px; height: 27px;" align="left">
                      <asp:RadioButtonList ID="rblSkin" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem Selected="True">��ɫ���</asp:ListItem>
                          <asp:ListItem>��ɫ���</asp:ListItem>
                          <asp:ListItem>��ɫ����</asp:ListItem>
                      </asp:RadioButtonList></td>
                  <td style="width: 312px; height: 27px;"></td>
                </tr>
				
				 <tr>
                  <td align="right" style="width: 97px">��Ҫ��������</td>
                  <td style="width: 555px" align="left">
                      <asp:CheckBoxList ID="cblExpenseArea" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem>����</asp:ListItem>
                          <asp:ListItem>����</asp:ListItem>
                          <asp:ListItem>�鼮</asp:ListItem>
                          <asp:ListItem>��Ϸ</asp:ListItem>
                          <asp:ListItem>����</asp:ListItem>
                          <asp:ListItem>��ʳ</asp:ListItem>
                          <asp:ListItem>����</asp:ListItem>
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
                  <td width="21%" align="right">ϵ��</td>
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
                  <td align="right">רҵ��</td>
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
                  <td align="right">�༶��</td>
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
                      <asp:LinkButton ID="lbStep3Prev" runat="server" OnClick="lbStep3Prev_Click">��һ��</asp:LinkButton>
                      <asp:LinkButton ID="lbStep3Next" runat="server" OnClick="lbStep3Next_Click">��һ��</asp:LinkButton></label></td>
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
                  <td width="21%" align="right">ѡ�������Ƭ��</td>
                  <td width="48%"><label>
                      <asp:FileUpload ID="fuPhoto" runat="server" />
                      <img src="Photos/1.gif" width="108" height="108" /></label></td>
                  <td width="31%" ><p>����ͼ���Ⱥ͸߶�Ϊ��</p>
                    <p>108*108</p></td>
                </tr>
                
                <tr>
                  <td colspan="2" align="center" style="height: 24px"><label>
                      &nbsp;&nbsp;
                      <asp:Button ID="btnStep4Prev" runat="server" OnClick="btnStep4Prev_Click" Text="��һ��" />
                      <asp:Button ID="btnFinish" runat="server" OnClick="btnFinish_Click" Text="���" /></label></td>
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
                  <asp:LinkButton ID="lbStep1" runat="server" OnClick="lbStep1_Click">��һ������д��¼��Ϣ</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  <asp:LinkButton ID="lbStep2" runat="server" OnClick="lbStep2_Click">�ڶ�������д������Ϣ</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  <asp:LinkButton ID="lbStep3" runat="server" OnClick="lbStep3_Click">����������дѧ������</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">
                  <asp:LinkButton ID="lbStep4" runat="server" OnClick="lbStep4_Click">���Ĳ����ϴ�������Ƭ</asp:LinkButton></td>
              <td width="2%" align="left" valign="top"><p>&nbsp;</p>			    </td>
			  <td width="12%">&nbsp;</td>
            </tr>
			 <tr>
              <td width="8%">&nbsp;</td>
              <td style="width: 18%">&nbsp;<asp:LinkButton ID="lbStep5" runat="server">���岽�����</asp:LinkButton></td>
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
	����վ����������2520   ��ǰ��������111��er" align="center">
	����վ����������2520   ��ǰ��������111��
ble>
</div>
</form>
</body>
<!-- InstanceEnd --></html>
