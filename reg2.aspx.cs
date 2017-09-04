using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
public partial class reg2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)//Page对象的IsPostBack 表示页面是否是首次加载，true表示是首次加载
        { 
            ddlDepartementBindData();
            if(ddlDepartment.SelectedItem.Text!="")
            ddlMajorBindData(ddlDepartment.SelectedItem.Text);
            if (ddlMajor.SelectedValue != "")
            {
                int majorId = Int32.Parse(ddlMajor.Items[0].Value);
                lbClassBindData(majorId);
            }
        }
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
    protected void btnFinish_Click(object sender, EventArgs e)
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
        else if ( rbWoman.Checked)
            s.StuSex = false;
        if (txtBirthday.Text.Trim() != "")
            s.StuBirthday = Convert.ToDateTime(txtBirthday.Text);
        s.StuAddress = txtAddress.Text;
        s.StuPost = txtPost.Text;
        s.StuEmail = txtEmail.Text;
        s.StuTel = txtTel.Text;
        s.StuMobile = txtMobile.Text;
        if(cbPhisical.Checked)
        s.StuHobbies += cbPhisical.Text+";";
        if (cbTories.Checked)
            s.StuHobbies += cbTories.Text+";";
        if (cbReading.Checked)
            s.StuHobbies += cbReading.Text+";";
        if (cbNetwork.Checked)
            s.StuHobbies += cbNetwork.Text+";";
        if (cbOther.Checked)
            s.StuHobbies += cbOther.Text+";";
        s.StuTheme = rblSkin.SelectedValue; 
        for (int i = 0; i < cblExpenseArea.Items.Count; i++)//获取学生的消费领域,中间用;隔开
        {
            if (cblExpenseArea.Items[i].Selected)
                s.StuExpenseArea += cblExpenseArea.Items[i].Text+";";
        }
        //添加学生班级信息
        s.ClassCode = lbClass.SelectedValue;
        //获取上传照片的照片
        string fileName = "";
        if (fuPhoto.FileName != "" && fuPhoto.FileName != null)
        {
            fileName = fuPhoto.FileName;
            string[] file_ext=fileName.Split('.');
            fileName = s.StuNo+"."+file_ext[file_ext.Length-1];
            string filePath = Server.MapPath("Photos\\")+fileName;
            fuPhoto.SaveAs(filePath);
        }
        s.StuPhotoUrl = "Photos\\"+fileName;
        s.RegDate = System.DateTime.Now.Date;
        s.Role = false;
        int ret=s.Register();
        if (ret == 1)
            labRegSuccess.Text = "注册成功";
        else
            labRegSuccess.Text = "注册失败";

    }
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
