using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Net.Mail;


public partial class getpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSendPwd_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.126.com";
            client.EnableSsl = true;
            MailMessage mm = new MailMessage();
            mm.From = new MailAddress("w1904069005@126.com");
            mm.To.Add(new MailAddress("wxt205968733@qq.com"));
            mm.Subject = "巴拉";
            mm.Body = "我发给你的邮件! ";
            mm.IsBodyHtml = false;
            mm.Priority = MailPriority.High;

            client.Credentials = new NetworkCredential("w1904069005@126.com", "wxt1904069005");
            client.Send(mm);


        }
        catch (Exception ex)
        {
            
            //string str = ex.Message;
            ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('发送失败\r\n');", true);
        }
        ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('发送成功!');", true);
      //string stuNo = txtUserName.Text;
        //string email = txtEmail.Text;
        //Student stu = new Student();
        //stu = stu.GetModel(stuNo);
        ////如果此用户存在并且输入的EMAIL信息和数据库中的一致，则发生密码
        //if (stu != null && stu.StuEmail.ToLower().Equals(email.ToLower()))
        //{
        //    {
        //        SmtpClient client2 = new SmtpClient();
        //        client2.Host = "smtp.163.com";
        //        client2.Credentials = new NetworkCredential("visualcplus@163.com", "cplusplus");
        //        MailMessage message2 = new MailMessage("visualcplus@163.com", "darkbus@126.com");
        //        message2.Subject = "121111";
        //        message2.Body = "11111";
        //        try
        //        {
        //            client2.Send("visualcplus@163.com", "darkbus@126.com", "1111", "2222");
        //        }
        //        catch (System.Exception ex2)
        //        {
        //            ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('发送失败\r\n');", true);
        //        }
                
        //    }



        //    SmtpClient client = new SmtpClient();
        //    //smtp 服务器
        //    client.Host = System.Configuration.ConfigurationManager.AppSettings["smtpServer"];
        //    //SMTP服务器登录账号和密码。因此要在web.config文件中配置正确。
        //    string loginUser = System.Configuration.ConfigurationManager.AppSettings["loginUser"];
        //    string loginPwd = System.Configuration.ConfigurationManager.AppSettings["loginPwd"];
        //    client.Credentials = new NetworkCredential(loginUser, loginPwd);
        //    //发件人
        //    string from = System.Configuration.ConfigurationManager.AppSettings["from"];
        //    //收件人
        //    string to = email;
        //    MailMessage message = new MailMessage(from, to);
        //    //邮件标题
        //    message.Subject = "你在校园音乐吧注册的密码";
        //    //邮件正文，包含了密码
        //    message.Body = "你的密码是：" + stu.StuPwd + "。\r\n不要再忘记了！";
        //    try
        //    {
        //        //尝试发送该邮件
        //        client.Send(message);
        //    }
        //    catch (Exception ex)
        //    {
        //        ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('发送失败\r\n');", true);
        //    }
        //    ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('发送成功!');", true);
        //}
        //else
        //{
        //    ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('你输入的账号不正确或email不存在');", true);
        //}
        

    }
}
