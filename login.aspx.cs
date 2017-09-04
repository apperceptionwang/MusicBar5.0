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


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String UserName = txtUserName.Text;
        String UserPwd = txtUserPwd.Text;
        String str_sql = "select stuPwd,stuName from Student where stuNo='" + UserName + "' ";
        DataSet ds = new DataSet();

        ds = SqlDbHelper.ExecuteSelectSql(str_sql);
        String DataPwd = ds.Tables[0].Rows[0][0].ToString();
        String stu_name = ds.Tables[0].Rows[0][1].ToString();
        if (UserPwd == DataPwd)
        {
            Response.Redirect("~/index.aspx?stuName=" + stu_name);
        }
    }
}
