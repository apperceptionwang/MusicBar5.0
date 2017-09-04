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


public partial class adminAllMusic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
       {
           LoadMusic();
       }

    }
  
    protected void LoadMusic()
    {
        Music m = new Music();
        DataSet ds = m.GetNewMusics();
     //   GridView1.DataSource = ds;
      //  GridView1.DataBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        
    }
    
}
