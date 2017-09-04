<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server">
    <title>首页</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript" src="Js/main.js"> </script>
</head>
<body>
    <form id="form1" runat="server">
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
                    <td width="144"  class="labelDateTime"><asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                 <asp:Label ID="lbl_Time" runat="server" Text="Label"></asp:Label>
                                 <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
                              </ContentTemplate>   
                        </asp:UpdatePanel>
                    </td>
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
			        <td width="14%"><img src="Images/btnSearch.jpg" alt="Search" width="86" height="24"  onclick="javascript:window.location='search.aspx';" /></td>
			        <td width="22%" align="right" class="welcome">
                       <asp:Label ID="lbl_Welcome" runat="server" Text="欢迎您,"></asp:Label>
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
            <td valign="top"><!-- InstanceBeginEditable name="Body" -->
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td background="Images/spliter2.jpg" height="10px"></td>
                </tr>
                <tr>
                  <td background="Images/bg1.jpg" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="75%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <asp:DataList ID="dlNewUsers" runat="server" RepeatDirection="Horizontal">
                             <ItemTemplate>
           <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr >                                      
                   <td align="center">
                        <a href='showUserBasicInfo.aspx?stuno=<%# Eval("StuNo")%>'>
<img src='<%# Eval("stuPhotoUrl") %>' alt="photo"  width="108" height="108" border="0" /></a>
                     </td>                                      
                 </tr>
                  <tr> 
                     <td align="center">
                        <a href='showUserBasicInfo.aspx?stuno=<%# Eval("StuNo")%>'><%# Eval("StuName")%></a>
                      </td>
                   </tr>
            </table>                                      
      </ItemTemplate>

                            </asp:DataList> <!-- <td><a href="showUserBasicInfo.aspx"><img src="Images/1.gif" alt="photo" width="108" height="108" border="0" /></a></td>
                          <td align="center"><a href="showUserBasicInfo.aspx?stuno=085041101"><img src="Photos/1.gif" alt="photo" width="108" height="108" border="0" /></a></td>
                          <td align="center"><a href="showUserBasicInfo.aspx?stuno=086041101"><img src="Photos/1.gif" alt="photo" width="108" height="108" border="0" /></a></td>
                          <td align="center"><a href="showUserBasicInfo.aspx?stuno=085041101"><img src="Photos/1.gif" alt="photo" width="108" height="108" border="0" /></a></td>
                          <td align="center"><a href="showUserBasicInfo.aspx?stuno=085041101"><img src="Photos/1.gif" alt="photo" width="108" height="108" border="0" /></a></td>
                         -->
                        </tr>
                        <tr>
                          <td height="24" align="center"><a href="#">张三</a></td>
                          <td align="center"><a href="#">李四</a></td>
                          <td align="center"><a href="#">王五</a></td>
                          <td align="center"><a href="#">Tom</a></td>
                          <td align="center"><a href="#">William</a></td>
                        </tr>
                      </table></td>
                      <td width="23%"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="box1">
                        <tr>
                          <td width="31%">&nbsp;</td>
                          <td width="69%">&nbsp;</td>
                        </tr>
                        <tr>
                          <td>用户名：</td>
                          <td><input type="text" name="txtUserName" class="big" /></td>
                        </tr>
                        <tr>
                          <td>密 码：</td>
                          <td><input type="password" name="txtPwd" class="big" /></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td><div align="center">·<a href="reg.aspx">注册</a></div></td>
                          <td><div align="center">·<a href="getpassword.aspx">忘记密码</a></div></td>
                        </tr>
                      </table>
                        </td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td  background="Images/spliter2.jpg" height="10px"></td>
                </tr>
              </table>
	          <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="50%" valign="top" ><table border="0" width="100%"  cellspacing="0" cellpadding="0">
              <tr>
                <td height="25" valign="middle" class="subtitle">
		        <table width="100%" border="0" cellspacing="0" cellpadding="5">
          <tr>
            <td align="left" class="nav">歌曲排行榜</td>
            <td align="right" class="nav"><a href="moreHotMusic.aspx">More</a>...</td>
          </tr>
        </table>

                  </td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr class="tableheader">
                    <td width="3">·</td>
                    <td width="248" align="left">歌曲名</td>
                    <td width="26">排行</td>
                    <td width="71">上载日期</td>
                    <td width="29"><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">青藏高原</td>
                    <td>2</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我会很爱你</td>
                    <td>3</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">弯弯的月亮</td>
                    <td>4</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>5</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>6</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>7</td>
                    <td>2009-12-31</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>8</td>
                    <td>2009-12-31</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>9</td>
                    <td>2009-12-31</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">畅爽开怀</td>
                    <td>10</td>
                    <td>2009-12-31</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
	        <td background="Images/spliter3.gif" width="1px">
		        </td>
            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="25" valign="middle" class="subtitle">
			        <table width="100%" border="0" cellspacing="0" cellpadding="5">
          <tr>
            <td align="left" class="nav">新歌推荐</td>
            <td align="right" class="nav"><a href="moreNewMusic.aspx">More</a>...</td>
          </tr>
        </table>

		        </td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr class="tableheader">
                    <td width="3">·</td>
                    <td width="208" align="left">歌曲名</td>
                    <td width="62">歌手名</td>
                    <td width="72">上载日期</td>
                    <td width="32"><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">青藏高原</td>
                    <td>张三</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我会很爱你</td>
                    <td>张三</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>张三</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>张三</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>张三</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>张三</td>
                    <td>2009-2-1</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>张三</td>
                    <td>2009-12-31</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">我叫小沈阳</td>
                    <td>张三</td>
                    <td>2009-12-31</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                  <tr>
                    <td>·</td>
                    <td align="left">畅爽开怀</td>
                    <td>张三</td>
                    <td>2009-12-31</td>
                    <td><a href="playMusic.aspx" target="_blank"><img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" /></a></td>
                  </tr>
                </table></td>
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
		        </td>
	        </tr>
          <tr>
            <td class="footer" align="center">
	            <asp:Repeater ID="repeaterHotMusic" runat="server">
                <HeaderTemplate>
         <table cellpadding="0" cellspacing="0" border ="0" width="100%">
            <thead align="center">
              <td></td>
              <td><b>歌曲名</b></td>
              <td><b>排行榜</b></td>
              <td><b>上载日期</b></td>
              <td></td>
            </thead>                            
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
             <td>•</td>
              <td><%# Eval("musicName")%></td>
              <td><%# RowIndex++ %></td>
              <td> <%# Eval("addDate","{0:yyyy-MM-dd}")%></td>
              <td>
                 <a href='playMusic.aspx?id=<%# Eval("musicId") %>'  target="_blank">
<img src="Images/listen.gif" alt="Listen" width="20" height="20" border="0" longdesc="#" />
</a>
               </td>
             </tr>
        </ItemTemplate>                        
        <SeparatorTemplate>
              <tr>
                 <td colspan="5"><hr /></td>
              </tr>
        </SeparatorTemplate>
        <FooterTemplate>
              </table>
         </FooterTemplate>

                </asp:Repeater>
	        本网站访问人数：2520   当前在线人数111人<br />
	        Copyright&copy; 2009 fzxy.edu.cn. All Rights Reserved. </td>
          </tr>
        </table>
        </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" src='<%# Eval("stuPhotoUrl") %>'/>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("stuName") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
    </form>
</body>
</html>
