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


public partial class adminUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
       {
           BindStudent();
       }
    }

    protected void BindStudent()
    {
        string str = TextBox1.Text;
        int dwType = RadioButtonList1.SelectedIndex;
        DataSet ds = null;
        if(dwType ==0)
        {
            ds = Admin.SearchUsersByStuNo(str);
        }
        else
        {
            ds = Admin.SearchUsersByStuName(str);
        }
        
        gvStudent.DataSource=ds;
        gvStudent.DataBind();
    }

    protected void gvStudent_SelectedIndexChanged(object sender, EventArgs e)
    {
//         GridViewRow gvr = gvStudent.SelectedRow;
//         string name = gvr.Cells[1].Text;
//         string strno = gvStudent.SelectedValue.ToString();
//         lblDetail.Text = "姓名=" + name + "<br/>" + "学号=" + strno;
        //获取用户选择的行。
        GridViewRow gvr = gvStudent.SelectedRow;
        string name = gvr.Cells[1].Text;//用户姓名是第2列
        string stuno = gvStudent.SelectedValue.ToString();//学号
        //首先注释以前的代码
        //lblDetail.Text = "姓名="+name+"<br />"+"学号="+stuno;
        //重新将数据绑定到dvUser控件上
        Student s = new Student();
        s = s.GetModel(stuno);
        System.Collections.Generic.IList<Student> list = new System.Collections.Generic.List<Student>();
        list.Add(s);
        dvUser.DataSource = list;
        dvUser.DataBind();

    }
    protected void gvStudent_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvStudent.PageIndex = e.NewPageIndex;
        BindStudent();
    }
    protected void gvStudent_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvStudent.EditIndex = e.NewEditIndex; // 使当前行处于可编辑状态


        BindStudent();// 重新绑定数据源

    }
    protected void gvStudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int index = e.RowIndex;//当前选择行索引值            
            string stuno = gvStudent.DataKeys[index].Value.ToString();//获取主键 学号           
            Student stu = new Student();
            stu = stu.GetModel(stuno);//获取数据库中学生的信息
            stu.StuName = ((TextBox)(gvStudent.Rows[index].Cells[1].Controls[0])).Text.Trim();//修改姓名
            stu.StuSex = ((CheckBox)(gvStudent.Rows[index].Cells[2].Controls[0])).Checked;//修改性别
            //修改出生日期
            stu.StuBirthday = Convert.ToDateTime(((TextBox)(gvStudent.Rows[index].Cells[4].Controls[0])).Text.Trim());
            int ret = stu.ModifyInfo();//将修改内容保存到数据库
            if (ret == 1)
            {
                //更新成功                
            }
            else
            {
                //更新失败
            }
            gvStudent.EditIndex = -1; //取消编辑模式
            BindStudent();        //重新绑定数据源
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "msg", "alert('更新失败，请检查输入的数据格式是否正确！');", true);
        }

    }
    protected void gvStudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvStudent.EditIndex = -1;
        BindStudent();
    }
    protected void gvStudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int dwIndex = e.RowIndex;
        string struno = gvStudent.DataKeys[dwIndex].Value.ToString(); // 获取主键学号
        Student stu = new Student();
        stu.StuNo = struno;
        stu.Del();
        BindStudent();
    }

    protected string FormatSex(object objSex)
    {
        if (objSex == null || objSex.ToString() == "")
            return "";
        if (Convert.ToBoolean(objSex))
            return "男";
        else
            return "女";
    }
}
