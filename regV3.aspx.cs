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
using System.Collections.Generic;
public partial class regV3 :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlDepartementBindData();
            if (ddlDepartment.SelectedItem.Text != "")
                ddlMajorBindData(ddlDepartment.SelectedItem.Text);
            if (ddlMajor.SelectedValue != "")
            {
                int majorId = Int32.Parse(ddlMajor.Items[0].Value);
                lbClassBindData(majorId);
            }
           
        }
    }
    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        //string key = txtSearch.Text;
        //Response.Redirect("Search.aspx?key="+key);
    }

    private void ddlDepartementBindData()
    {
        Department dpt = new Department();
        IList<Department> list = dpt.GetAll();
        ddlDepartment.DataSource = list;
        ddlDepartment.DataTextField = "DepartmentName";
        ddlDepartment.DataValueField = "DepartmentName";
        ddlDepartment.DataBind();
        /*for (int i = 0; i < list.Count; i++)
        {
           ddlDepartment.Items.Add(list[i].DepartmentName);
        }
        string sqlStr = "select * from department";
        DataSet ds=SqlDbHelper.ExecuteSelectSql(sqlStr);
        ddlDepartment.DataSource = ds.Tables[0].DefaultView;
        ddlDepartment.DataTextField = "DepartmentName";
        ddlDepartment.DataValueField = "DepartmentName";
        ddlDepartment.DataBind();*/
    }
    private void ddlMajorBindData(string departmentName)
    {
        Major mj = new Major();
        IList<Major> list = mj.GetMajorsByDep(departmentName);
        ddlMajor.DataSource = list;
        ddlMajor.DataTextField = "MajorName";
        ddlMajor.DataValueField = "MajorId";
        ddlMajor.DataBind();
    }
    private void lbClassBindData(int majorId)
    {
        StudentClass sc = new StudentClass();
        IList<StudentClass> list = sc.GetMajorClassess(majorId);
        lbClass.DataSource = list;
        lbClass.DataTextField = "ClassCode";
        lbClass.DataValueField = "ClassCode";
        lbClass.DataBind();
    }


    /*protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string str = args.Value;
        DateTime t;
        try
        {

            t = Convert.ToDateTime(str);
            if (t > new DateTime(2009, 1, 1))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        catch (Exception ex)
        {
            args.IsValid = false;
            return;
        }


    }*/
    //注册
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        //创建一个学生对象
        Student s = new Student();
        //添加学生登录信息
        s.StuNo = txtStuNo.Text;
        s.StuPwd = txtPwd.Text;
        //添加学生基本信息
        s.StuName = txtStuName.Text;
        if (rbMan.Checked)
            s.StuSex = true;
        else if (rbWoman.Checked)
            s.StuSex = false;
        s.StuBirthday = Convert.ToDateTime(txtBirthday.Text);
        s.StuAddress = txtAddress.Text;
        s.StuPost = txtPost.Text;
        s.StuEmail = txtEmail.Text;
        s.StuTel = txtTel.Text;
        s.StuMobile = txtMobile.Text;
        if (cbPhisical.Checked)
            s.StuHobbies += cbPhisical.Text + ";";
        if (cbTories.Checked)
            s.StuHobbies += cbTories.Text + ";";
        if (cbReading.Checked)
            s.StuHobbies += cbReading.Text + ";";
        if (cbNetwork.Checked)
            s.StuHobbies += cbNetwork.Text + ";";
        if (cbOther.Checked)
            s.StuHobbies += cbOther.Text + ";";
        s.StuTheme = rblSkin.SelectedValue; //rblSkin.SelectedItem.Text;
        for (int i = 0; i < cblExpenseArea.Items.Count; i++)//获取学生的消费领域,中间用;隔开
        {
            if (cblExpenseArea.Items[i].Selected)
                s.StuExpenseArea += cblExpenseArea.Items[i].Text + ";";
        }
        //添加学生班级信息
        s.ClassCode = lbClass.SelectedValue;
        //获取上传照片的照片
        string fileName = "";
        if (fuPhoto.FileName != "" && fuPhoto.FileName != null)
        {
            fileName = fuPhoto.FileName;
            string[] file_ext = fileName.Split('.');
            fileName = s.StuNo + "." + file_ext[file_ext.Length - 1];
            string filePath = Server.MapPath("Photos\\") + fileName;
            fuPhoto.SaveAs(filePath);
        }
        s.StuPhotoUrl = "Photos\\" + fileName;
        s.RegDate = System.DateTime.Now.Date;
        s.Role = false;
        int ret = s.Register();
        if (ret == 1)
            labRegSuccess.Text = "注册成功";
        else
            labRegSuccess.Text = "注册失败";

    }
    //protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    //{
    //    //如果是注册第一步，需要保存用户输入的密码
    //    if (e.CurrentStepIndex == 0)
    //    {
    //        //hfPassword.Value = txtPwd.Text;
    //    }

    //    //第4步上传文件
    //    if (e.CurrentStepIndex == 3)
    //    {
    //        //判断是否选择了上场图片文件
    //        string path = fuPhoto.PostedFile.FileName;
    //        if (string.IsNullOrEmpty(path))
    //        {
    //            return;
    //        }
    //        //判断是否有扩展名
    //        int extPos = path.LastIndexOf(".");
    //        if (extPos == -1)
    //        {
    //            return;
    //        }
    //        //判断文件格式
    //        string ext = path.Substring(extPos).ToLower();
    //        if (!ext.EndsWith("jpg") && !ext.EndsWith("gif") && !ext.EndsWith("bmp"))
    //        {

    //            return;
    //        }
    //        //数据库中保存的相对路径
    //        string url = "Photos/" + DateTime.Now.ToString("yyyyMMdd_HHmmss") + ext;
    //        //物理路径
    //        string strSavePath = Server.MapPath("~/") + url;
    //        //上传到服务器
    //        fuPhoto.PostedFile.SaveAs(strSavePath);

    //        }

        

    //}
    //protected void Wizard1_SideBarButtonClick(object sender, WizardNavigationEventArgs e)
    //{
    //    //如果是注册第一步，需要保存用户输入的密码
    //    if (e.CurrentStepIndex == 0)
    //    {
    //        hfPassword.Value = txtPwd.Text;
    //    }

    //    //第4步上传文件
    //    if (e.CurrentStepIndex == 3)
    //    {
    //        //判断是否选择了上场图片文件
    //        string path = fuPhoto.PostedFile.FileName;
    //        if (string.IsNullOrEmpty(path))
    //        {
    //            return;
    //        }
    //        //判断是否有扩展名
    //        int extPos = path.LastIndexOf(".");
    //        if (extPos == -1)
    //        {
    //            return;
    //        }
    //        //判断文件格式
    //        string ext = path.Substring(extPos).ToLower();
    //        if (!ext.EndsWith("jpg") && !ext.EndsWith("gif") && !ext.EndsWith("bmp"))
    //        {
    //            return;
    //        }
    //        //数据库中保存的相对路径
    //        string url = "Photos/" + DateTime.Now.ToString("yyyyMMdd_HHmmss") + ext;
    //        //物理路径
    //        string strSavePath = Server.MapPath("~/") + url;
    //        //上传到服务器
    //        fuPhoto.PostedFile.SaveAs(strSavePath);

    //        //保存到隐藏字段
    //        hfUrl.Value = url;



    //        //完成，显示汇总信息
    //        blSummary.Items.Add(new ListItem("姓名：" + txtStuName.Text));
    //        if (rbMan.Checked)
    //            blSummary.Items.Add(new ListItem("性别：" + rbMan.Text));
    //        else
    //            blSummary.Items.Add(new ListItem("性别：" + rbWoman.Text));
    //        blSummary.Items.Add(new ListItem("出生日期：" + txtBirthday.Text));
    //        string str = "";
    //        for (int i = 0; i < cblExpenseArea.Items.Count; i++)
    //        {
    //            if (cblExpenseArea.Items[i].Selected)
    //            {
    //                str += cblExpenseArea.Items[i].Value + ";";
    //            }
    //        }
    //        blSummary.Items.Add(new ListItem("主要消费领域：" + str));

    //        blSummary.Items.Add(new ListItem("班级：" + lbClass.SelectedValue));
    //        blSummary.Items.Add(new ListItem("EMAIL：" + txtEmail.Text));
    //        blSummary.Items.Add(new ListItem("电话：" + txtTel.Text));

    //    }
        
    //    if (e.CurrentStepIndex == 4)
    //    {
            
    //    }


    //}
    //protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
    //{
       
    //}

    protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlMajorBindData(ddlDepartment.SelectedItem.Text);
        lbClass.Items.Clear();
    }
    protected void ddlMajor_SelectedIndexChanged(object sender, EventArgs e)
    {
        int majorId = Int32.Parse(ddlMajor.SelectedValue);
        lbClassBindData(majorId);
    }
}
