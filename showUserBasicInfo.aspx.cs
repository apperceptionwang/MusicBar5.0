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


public partial class showUserBasicInfo :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string stuno = Request["stuno"];
        if (!string.IsNullOrEmpty(stuno))
        {
            BindUserBasicInfo(stuno);
        }
        else
        {
            Response.Redirect("~/index.aspx");
        }
    }
    private void BindUserBasicInfo(string stuno)
    {
        //根据学号stuno实例化一个学生对象
        Student student = new Student();
        student=student.GetModel(stuno);
       
        //获取此学生的姓名，并将其显示在页面的lblStuName标签中
        lblStuName.Text = student.StuName;
        //获取此学生的爱好，并将其显示在页面的lblHobbies标签中      
        lblHobbies.Text = student.StuHobbies;
        //获取此学生的照片的存储路径，并且其赋值给页面中的imgPhoto图片控件的ImageUrl属性
        //这样照片就可以利用imgPhoto图片控件显示在页面上
        imgPhoto.ImageUrl = student.StuPhotoUrl;
        //根据此学生的学号，实例化一个此学生所在的班级对象
        StudentClass studentClass = new StudentClass();
        studentClass=studentClass.GetModel(student.ClassCode);
        //获取此班级对象的专业编号
        int majorId=studentClass.MajorId;
        //根据专业编号，实例化一个此班级所在的专业对象
        Major studentMajor = new Major();
        studentMajor = studentMajor.GetModel(majorId);
        //获取此专业对象的专业名称，并将其显示在页面的lblMajor标签中
        lblMajor.Text = studentMajor.MajorName;
        //获取此专业对象的系名，并将其显示在页面的lblDepartment标签中
        lblDepartment.Text=studentMajor.DepartmentName;
    }
    private void BindMusic(string stuno)
    {
        Music m = new Music();
        DataSet ds = m.GetByUploader(stuno);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
        
    }

}
