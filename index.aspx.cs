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

public partial class index : System.Web.UI.Page
{
    public int RowIndex = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_Time.Text = System.DateTime.Now.ToString();
        if(!IsPostBack)
        {
            LoaWelome();
            LoadHotMusic();
            LoadNewUsers();
        }
    }

    protected void LoaWelome()
    {
        string strGet = "欢迎您,";
        string str_Name = Request.QueryString["stuName"].ToString();
        strGet += str_Name;
        lbl_Welcome.Text = strGet;

    }

    protected void LoadHotMusic()
    {
        Music m = new Music();
        DataSet ds = m.GetHotMusics(10);
        repeaterHotMusic.DataSource = ds;
        repeaterHotMusic.DataBind();
    }

    protected void LoadNewUsers()
    {
        Student m = new Student();
        DataSet ds = m.GetNewUsers(5);
        dlNewUsers.DataSource =ds;
        dlNewUsers.DataBind();
    }


}
