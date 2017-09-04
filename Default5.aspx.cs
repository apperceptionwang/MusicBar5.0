using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
//
    }
    protected void DropDownList2_TextChanged(object sender, EventArgs e)
    {
        DropDownList2.AutoPostBack.Equals(true);

    }
}