// File:    Student.cs
// Author:  audrey
// Created: 2009��5��27�� 17:52:07
// Purpose: Definition of Class Student

using System;
using System.Data;

public class Student
{
    /// <summary>
    /// ѧ�ţ��û���
    /// </summary>
    private string stuNo;
    public string StuNo
    {
        get { return stuNo; }
        set { stuNo = value; }
    }
    /// <summary>
    /// ��¼����
    /// </summary>
    private string stuPwd;
    public string StuPwd
    {
        get { return stuPwd; }
        set { stuPwd = value; }
    }
    /// <summary>
    /// ����
    /// </summary>
    private string stuName;
    public string StuName
    {
        get { return stuName; }
        set { stuName = value; }
    }
    /// <summary>
    /// �Ա�
    /// </summary>
    private bool stuSex;
    public bool StuSex
    {
        get { return stuSex; }
        set { stuSex = value; }
    }
    /// <summary>
    /// ��������
    /// </summary>
    private DateTime stuBirthday;
    public DateTime StuBirthday
    {
        get { return stuBirthday; }
        set { stuBirthday = value; }
    }
    /// <summary>
    /// ���ڰ༶
    /// </summary>
    private string classCode;
    public string ClassCode
    {
        get { return classCode; }
        set { classCode = value; }
    }
    /// <summary>
    /// ��Ȥ����
    /// </summary>
    private string stuHobbies;
    public string StuHobbies
    {
        get { return stuHobbies; }
        set { stuHobbies = value; }
    }
    /// <summary>
    /// ���˿ռ�  ����Ƥ��
    /// </summary>
    private string stuTheme;
    public string StuTheme
    {
        get { return stuTheme; }
        set { stuTheme = value; }
    }
    /// <summary>
    /// ��ϵ�绰
    /// </summary>
    private string stuTel;
    public string StuTel
    {
        get { return stuTel; }
        set { stuTel = value; }
    }
    /// <summary>
    /// �ֻ�
    /// </summary>
   private string stuMobile;
   public string StuMobile
   {
       get { return stuMobile; }
       set { stuMobile = value; }
   }

    /// <summary>
    /// ��ϵ��ַ
    /// </summary>
   private string stuAddress;
   public string StuAddress
   {
       get { return stuAddress; }
       set { stuAddress = value; }
   }
    /// <summary>
    /// email
    /// </summary>
   private string stuEmail;
   public string StuEmail
   {
       get { return stuEmail; }
       set { stuEmail = value; }
   }
    /// <summary>
    /// �ʱ�
    /// </summary>
   private string stuPost;
   public string StuPost
   {
       get { return stuPost; }
       set { stuPost = value; }
   }
    /// <summary>
    /// ÿ����Ҫ��������
    /// </summary>
   private string stuExpenseArea;
   public string StuExpenseArea
   {
       get { return stuExpenseArea; }
       set { stuExpenseArea = value; }
   }

    /// <summary>
    /// ע������
    /// </summary>
   private DateTime regDate;
   public DateTime RegDate
   {
       get { return regDate; }
       set { regDate = value; }
   }
    /// <summary>
    /// �û���ɫ
    /// </summary>
    private bool role;
    public bool Role
    {
        get { return role; }
        set { role = value; }
    }

    /// <summary>
    /// �û�������Ƭ
    /// </summary>
    private string stuPhotoUrl;
    public string StuPhotoUrl
    {
        get { return stuPhotoUrl; }
        set { stuPhotoUrl = value; }
    }

   
    /// <summary>
    /// ѧ��ע��
    /// </summary>
    /// <returns></returns>
   public int Register()
   {
       string sql = "insert into Student(stuNo,classCode,stuAddress,stuBirthday,stuEmail,stuExpenseArea,stuHobbies,stuMobile,"
           + "stuName,stuPost,stuPwd,stuSex,stuTel,stuTheme,Role,StuPhotoUrl) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}')";
       sql = string.Format(sql, stuNo, classCode, stuAddress,stuBirthday,stuEmail,stuExpenseArea,stuHobbies,stuMobile,
           stuName, stuPost, stuPwd, stuSex, stuTel, stuTheme, role, StuPhotoUrl);
       int ret = SqlDbHelper.ExecuteInsertSql(sql);
       return ret;

   }
   /// <summary>
   /// �޸ĸ�����Ϣ,����������ͽ�ɫ
   /// </summary>
   /// <returns></returns>
   public int ModifyInfo()
   {
       string sql = "";
       sql = "update Student set classCode ='{0}',stuAddress ='{1}',stuBirthday='{2}',stuEmail='{3}',stuExpenseArea='{4}', "
           + " stuHobbies='{5}',stuMobile='{6}',stuName='{7}',stuPost='{8}',stuSex='{9}',stuTel='{10}',stuTheme='{11}',stuPhotoUrl='{13}' "
           + " where stuNo='{12}'";
       sql = string.Format(sql, classCode, stuAddress, stuBirthday, stuEmail, stuExpenseArea,
           stuHobbies, stuMobile, stuName, stuPost, stuSex, stuTel, stuTheme, stuNo,stuPhotoUrl);
       int ret = SqlDbHelper.ExecuteUpdateSql(sql);
       return ret;

   }
   /// <summary>
   /// �޸�����
   /// </summary>
   /// <returns></returns>
   public bool ModifyPwd()
   {
       string sql = "update Student set stuPwd ='{1}' where stuNo = '{0}' ";
       sql = string.Format(sql, stuPwd,stuNo);
       int ret = SqlDbHelper.ExecuteUpdateSql(sql);
       if (ret == 1)
           return true;
       else
           return false;
   }
   /// <summary>
   /// ɾ��һ����Ա
   /// </summary>
   /// <returns></returns>
   public int Del()
   {
       string sql = "delete from  Student where stuNo = '{0}' ";
       sql = string.Format(sql, stuNo);
       int ret = SqlDbHelper.ExecuteDelSql(sql);
       return ret;
   }
   /// <summary>
   /// �û���¼
   /// </summary>
   /// <returns></returns>
   public bool Login()
   {
       if (string.IsNullOrEmpty(stuNo) || string.IsNullOrEmpty(stuPwd))
       {
           throw new Exception("û�������û���������");
       }
       string sql = "select count(*) from Student where stuNo='{0}' and stuPwd='{1}'";
       sql = string.Format(sql, stuNo, stuPwd);
       object obj = SqlDbHelper.ExecuteScalar(sql);
       if (obj != null && Convert.ToInt32(obj) > 0)
       {
           return true;
       }
       else
       {
           return false;
       }

   }
   /// <summary>
   /// �ж�һ����Ա�Ƿ����
   /// </summary>
   /// <returns></returns>
   public bool IsExist()
   {
       if (string.IsNullOrEmpty(stuNo) )
       {
           throw new Exception("û�������û���������");
       }
       string sql = "select count(*) from Student where stuNo='{0}'";
       sql = string.Format(sql, stuNo);
       object obj = SqlDbHelper.ExecuteScalar(sql);
       if (obj != null && Convert.ToInt32(obj) > 0)
       {
           return true;
       }
       else
       {
           return false;
       }

      //throw new NotImplementedException();
   }
   /// <summary>
   /// ��ȡ��Ա��Ϣ
   /// </summary>
   /// <param name="stuNo"></param>
   /// <returns></returns>
   public Student GetModel(string strStuNo)
   {
       string sql = "select *  from Student where stuNo='{0}'";
       sql = string.Format(sql, strStuNo);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       if (ds.Tables[0].Rows.Count == 1)
       {
           Student m = new Student();
           m.stuNo = strStuNo;
           m.classCode = ds.Tables[0].Rows[0]["classCode"].ToString();
           m.stuAddress = ds.Tables[0].Rows[0]["stuAddress"].ToString();
           m.stuBirthday =  Convert.ToDateTime(ds.Tables[0].Rows[0]["stuBirthday"].ToString());
           m.stuEmail = ds.Tables[0].Rows[0]["stuEmail"].ToString();
           m.stuExpenseArea = ds.Tables[0].Rows[0]["stuExpenseArea"].ToString();
           m.stuHobbies =ds.Tables[0].Rows[0]["stuHobbies"].ToString();
           m.stuMobile = ds.Tables[0].Rows[0]["stuMobile"].ToString();
           m.stuName = ds.Tables[0].Rows[0]["stuName"].ToString();

           m.stuPost = ds.Tables[0].Rows[0]["stuPost"].ToString();
           m.stuPwd = ds.Tables[0].Rows[0]["stuPwd"].ToString();
           m.stuSex = Convert.ToBoolean(ds.Tables[0].Rows[0]["stuSex"].ToString());
           m.stuTel = ds.Tables[0].Rows[0]["stuTel"].ToString();
           m.stuTheme = ds.Tables[0].Rows[0]["stuTheme"].ToString();
           m.regDate = Convert.ToDateTime(ds.Tables[0].Rows[0]["regDate"].ToString());
           m.role = Convert.ToBoolean(ds.Tables[0].Rows[0]["Role"].ToString());
           m.StuPhotoUrl = ds.Tables[0].Rows[0]["stuPhotoUrl"].ToString();
           //stuPhotoUrl
           return m;
       }
       return null;
   }
    /// <summary>
    /// ȡ���ע��n���û�
    /// </summary>
    /// <param name="n"></param>
    /// <returns></returns>
    public DataSet GetNewUsers(int n)
    {
        string sql = "select top " + n + " *  from Student order by regDate desc";
        sql = string.Format(sql, n);
        DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
        return ds;
    }

    /// <summary>
    /// ��ȡ�����û�
    /// </summary>
    /// <returns></returns>
    public DataSet GetUsers()
    {
        string sql = "select  *  from Student order by regDate desc";
        sql = string.Format(sql);
        DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
        return ds;
    }

    /// <summary>
    /// ��ȡָ���û�������
    /// </summary>
    /// <param name="strStuNo"></param>
    /// <returns></returns>
    public string GetPassword(string strStuNo)
    {
        string sql = "";
        sql = "select stuPwd from StudentClass where stuNo='{0}' ";
        sql = string.Format(sql, strStuNo);
        object obj = SqlDbHelper.ExecuteScalar(sql);
        if (obj != null )
        {
            return obj.ToString();
        }
        else
        {
            return null;
        }
    }


}