<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
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
	
<div style="position: relative; width: 760px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr >
          <td height="28" align="left" valign="middle" class="nav">
                <a href="/">首页</a>->注册
            </td>
        </tr>
        <tr>
          <td style="background-image:url('Images/spliter4.gif')"></td>
        </tr>
        <tr><td>
            <asp:Label ID="Label1" runat="server" Text="本站服务条款"></asp:Label>
            </td></tr>
        </table></div>
<div style="position: relative; width: 760px">
        <table style="width: 100%; position:relative">
        <tr><td>&nbsp;<hr size="1" /></td></tr>
         <tr><td><asp:TextBox TextMode="MultiLine" style="FONT-SIZE: 14px; BACKGROUND-COLOR: #f5f5f5" Rows="16" Columns="70" runat="server" ID="Textbox1">　　欢迎阅读《本网站服务条款》。
　　本网站主要给大家提供一个在线欣赏音乐的场所，凡有意享用我们提供的服务并同意本协议条款的人士，均可申请注册成为我们的用户。在您注册之前，请仔细阅读《服务条款》，并严格国家法律法规：


《服务条款》
1、服务条款的确认和接纳
　　用户完成注册程序，则表示用户与本网站达成协议并完全接受本《服务条款》，并保证在享受本网站所提供的服务的时将严格遵循《服务条款》和操作规则。

2、用户资格
　　根据相关法律，具有民事权利能力和民事行为能力、依法独立享有民事权利和承担民事义务的学生皆可以注册成为本网站用户。

3、服务简介
　　本网站是一个校园音乐网站，欢迎大家来上传音乐及在线收听音乐。

5、保留权利
　　本网站保留随时修改或中断服务而不需事先让用户知悉的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。

6、用户隐私制度
　　尊重用户个人隐私是本网站的一项基本政策。本网站不会公开用户的注册资料，除非有法律许可、要求或本网站在诚信的基础上认为透露这些内容在以下三种情况是必要的：
　　[1] 遵守有关法律规定；
　　[2] 在紧急情况下竭力维护用户和社会大众的隐私安全；
　　[3] 保持维护本网站的商标所有权。

7、用户的帐号，密码和安全性
　　注册成功的用户将得到一个密码和账号。用户对自己的账号和密码安全和账户中的所有活动和事件负全责。用户可随时改变自己的密码。
　　用户同意若发现其账号被盗用或存在其他安全漏洞，立即通知本网站。

8、不作商业性利用
　　用户承诺不经本网站同意，不能利用本网站进行销售或其他商业用途。

9、业务信息的储存及限制
　　本网站不对用户所发布信息的删除或储存失败负责。本网站没有对信息的传输量规定上限，但是它保留判定用户的行为是否符合本网站服务条款的要求的权利。如果用户违背了服务条款的规定，其帐号将被终止。

10、用户管理
　　用户对其在本网站上发布的内容负全部责任。用户承诺遵循：
　　[1] 享用本网站及其所提供的服务时，严格遵循国家有关互联网的法规和管理，遵循其他相
　　　　关的法律、法规；
　　[2] 不利用本网站从事任何有违法律和社会公德的活动；不传输任何非法的、骚扰性的、中
　　　　伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽等信息资料；不传输助长国内不利条件和
　　　　涉及国家安全的资料；
　　[3] 不干扰或扰乱本网站的网络服务；
　　[4] 遵守所有使用本网站业务服务的网络协议、规定和程序。

　　用户的行为如有不符以上承诺和《本网站服务条款》，本网站将做出独立判断立即取消用户服务账号。用户若在本网站上散布和传播反动、色情或其他违反国家法律的信息，本网站的网络业务系统记录有可能作为用户违反法律的证据提交司法机关。

11、保障
　　用户同意保障和维护本网站全体用户成员的利益，同意负责支付由于本用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。

12、结束服务
　　用户必须严格遵守服务条款，本网站保留修补条款的权利，保留随时中止网上业务服务的权利。当某个或某些用户违反服务条款出现以下情况时，本网站将立即给以警告或者临时暂停其用户资格：
　　[1] 用户违反了双方同意的协议；
　　[2] 用户提供的信息被证明不真实；
　　[3] 用户的行为可能会触犯法律、危及本网站和客户的利益。

　　用户若反对任何服务条款或者对后来的条款修改有异议或对本站的管理和服务不满，可以选择不再接受本网站服务，同时通知本网站停止为您提供服务。结束用户服务后，服务条款规定的双方各项权利义务立即中止。

13、免责声明
　　本网站提供一个音乐共享的平台，对用户上传音乐所产生的版权纠纷等与本网站无关。

14、仲裁条款
　　因本《服务条款》或本网站提供的服务所引起的任何争议，如经协商不能解决应提交政府有关机构进行仲裁。


			</asp:TextBox></td></tr>
			<tr><td><asp:HyperLink id="lnkYes" Text="我同意" NavigateUrl="regV2.aspx" 
                    runat="server"/>
			&nbsp;
			<asp:HyperLink id="lnkNo" Text="我不同意" NavigateUrl="index.aspx" 
                    CssClass="inputbutton" runat="server"/></td></tr>
        </table>
        </div>
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
</html>
