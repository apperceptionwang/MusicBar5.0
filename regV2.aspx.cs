using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class regV2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lbl_Time2.Text = System.DateTime.Now.ToString();
        if (!IsPostBack)
        {        
            lblNow.Text = "今天是" + DateTime.Now.ToString("yyyy年MM月dd");
            hlMySpace.NavigateUrl = "myspace.aspx";
            imgLogo.Attributes.Add("onclick", "javascript:window.location='index.aspx';");

            //显示第一步
            ResetPanelStep();
            panelStep1.Visible = true;
            lbStep1.ForeColor = System.Drawing.Color.Red;

        }
    }
    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        string key = txtSearch.Text;
        Response.Redirect("Search.aspx?key="+key);
    }
    protected void lbStep1_Click(object sender, EventArgs e)
    {
        ResetStepColor();
        lbStep1.ForeColor = System.Drawing.Color.Red;

        ResetPanelStep();
        panelStep1.Visible = true;
        
    }
    protected void lbStep2_Click(object sender, EventArgs e)
    {
        ResetStepColor();
        lbStep2.ForeColor = System.Drawing.Color.Red;

        ResetPanelStep();
        panelStep2.Visible = true;
        
    }
    protected void lbStep3_Click(object sender, EventArgs e)
    {

        ResetStepColor();
        lbStep3.ForeColor = System.Drawing.Color.Red;

        ResetPanelStep();
        panelStep3.Visible = true;
        
    }
    protected void lbStep4_Click(object sender, EventArgs e)
    {
        ResetStepColor();
        lbStep4.ForeColor = System.Drawing.Color.Red;

        ResetPanelStep();
        panelStep1.Visible = true;
       
    }

    /// <summary>
    /// 复位所有的导航链接颜色
    /// </summary>
    private void ResetStepColor()
    {
        lbStep1.ForeColor = System.Drawing.Color.Black;
        lbStep2.ForeColor = System.Drawing.Color.Black;
        lbStep3.ForeColor = System.Drawing.Color.Black;
        lbStep4.ForeColor = System.Drawing.Color.Black;
        lbStep5.ForeColor = System.Drawing.Color.Black;
    }

    /// <summary>
    /// 隐藏所有的panel
    /// </summary>
    private void ResetPanelStep()
    {
        panelStep1.Visible = false;
        panelStep2.Visible = false;
        panelStep3.Visible = false;
        panelStep4.Visible = false;
        panelSummary.Visible = false;
        
    }
    protected void calBirthday_SelectionChanged(object sender, EventArgs e)
    {
        txtBirthday.Text = calBirthday.SelectedDate.ToString("yyyy-MM-dd");
    }
    protected void btnStep1Next_Click(object sender, EventArgs e)
    {
        ResetStepColor();
        ResetPanelStep();
        panelStep2.Visible = true;
        lbStep2.ForeColor = System.Drawing.Color.Red;
    }
    protected void ibStep2Prev_Click(object sender, ImageClickEventArgs e)
    {
        ResetStepColor();
        ResetPanelStep();
        panelStep1.Visible = true;
        lbStep1.ForeColor = System.Drawing.Color.Red;
    }
    protected void ibStep2Next_Click(object sender, ImageClickEventArgs e)
    {
        ResetStepColor();
        ResetPanelStep();
        panelStep3.Visible = true;
        lbStep3.ForeColor = System.Drawing.Color.Red;
    }
    protected void lbStep3Prev_Click(object sender, EventArgs e)
    {
        ResetStepColor();
        ResetPanelStep();
        panelStep2.Visible = true;
        lbStep2.ForeColor = System.Drawing.Color.Red;
    }
    protected void lbStep3Next_Click(object sender, EventArgs e)
    {
        ResetStepColor();
        ResetPanelStep();
        panelStep4.Visible = true;
        lbStep4.ForeColor = System.Drawing.Color.Red;
    }
    protected void btnStep4Prev_Click(object sender, EventArgs e)
    {
        ResetStepColor();
        ResetPanelStep();
        panelStep3.Visible = true;
        lbStep3.ForeColor = System.Drawing.Color.Red;
    }
    protected void btnFinish_Click(object sender, EventArgs e)
    {
        Student s = new Student();
        s.StuNo = txtStuNo.Text;
        s.StuPwd = txtPwd.Attributes["value"];
        s.StuName = txtStuName.Text;
        if (rbMan.Checked)
        {
            s.StuSex = true;
        }
        if (rbWoman.Checked)
        {
            s.StuSex = false;
        }
        s.StuBirthday = DateTime.Parse(txtBirthday.Text);
        s.StuAddress = txtAddress.Text;
        s.StuPost = txtPost.Text;
        s.StuEmail = txtEmail.Text;
        s.StuTel = txtTel.Text;
        s.StuMobile = txtMobile.Text;
        string Hobbies = "";
        if (cbPhisical.Checked)
        {
            Hobbies += "体育;";
        }
        if (cbTories.Checked)
        {
            Hobbies += "旅游;";
        }
        if (cbReading.Checked)
        {
            Hobbies += "读书;";
        }
        if (cbNetwork.Checked)
        {
            Hobbies += "网络;";
        }
        if (cbOther.Checked)
        {
            Hobbies += "其他;";
        }
        s.StuHobbies = Hobbies;
        string skin = "";
        if (rblSkin.Items[0].Selected)
        {
            skin = "蓝色天空";
        }
        if (rblSkin.Items[1].Selected)
        {
            skin = "绿色大地";
        }
        if (rblSkin.Items[2].Selected)
        {
            skin = "粉色含蓄";
        }
        s.StuTheme = skin;
        string ExpenseArea = "";
        if (cblExpenseArea.Items[0].Selected)
        {
            ExpenseArea += "健身;";
        }
        if (cblExpenseArea.Items[1].Selected)
        {
            ExpenseArea += "旅游;";
        }
        if (cblExpenseArea.Items[2].Selected)
        {
            ExpenseArea += "书籍;";
        }
        if (cblExpenseArea.Items[3].Selected)
        {
            ExpenseArea += "游戏;";
        }
        if (cblExpenseArea.Items[4].Selected)
        {
            ExpenseArea += "购物;";
        }
        if (cblExpenseArea.Items[5].Selected)
        {
            ExpenseArea += "饮食;";
        }
        if (cblExpenseArea.Items[6].Selected)
        {
            ExpenseArea += "其他;";
        }
        s.StuExpenseArea = ExpenseArea;
        string ccode = lbClass.SelectedItem.Text;
        //if (lbClass.Items[0].Selected)
        //{
        //    ccode = "0850411";
        //}
        //if (lbClass.Items[1].Selected)
        //{
        //    ccode = "1450422";
        //}
        s.ClassCode = ccode;
        string photourl = Server.MapPath("Photos\\") + s.StuNo + ".jpg";
        fuPhoto.SaveAs(photourl);
        s.StuPhotoUrl = "Photos\\" + s.StuNo + ".jpg";
        string str_sql = "insert into Student (StuNo,classCode,StuPwd,StuName,StuSex,StuBirthday,StuHobbies,StuTheme,StuTel,s.StuMobile,StuAddress,StuPost,StuEmail,StuPhotoUrl,StuExpenseArea) values ('" + s.StuNo + "','" + s.ClassCode + "','" + s.StuPwd + "','" + s.StuName + "','" + s.StuSex + "','" + s.StuBirthday + "','" + s.StuHobbies + "','" + s.StuTheme + "','" + s.StuTel + "','" + s.StuMobile + "','" + s.StuAddress + "','" + s.StuPost + "','" + s.StuEmail + "','" + s.StuPhotoUrl + "','" + s.StuExpenseArea + "')";
        int i = SqlDbHelper.ExecuteInsertSql(str_sql);
        ResetStepColor();
        ResetPanelStep();
        panelSummary.Visible = true;
        lbStep5.ForeColor = System.Drawing.Color.Red;
        BulletedList bl = new BulletedList();
        bl.Items.Add(new ListItem("学号：" + txtStuNo.Text));
        bl.Items.Add(new ListItem("姓名：" + txtStuName.Text));
        phSummary.Controls.Add(bl);
        Response.Redirect("~/index.aspx?stuName=" + s.StuName);
    }

    protected void txtPwd_TextChanged(object sender, EventArgs e)
    {
        this.txtPwd.Attributes["value"] = this.txtPwd.Text;
    }
    protected void dddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbClass.Items.Clear();
    }
}
