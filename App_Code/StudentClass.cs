// File:    StudentClass.cs
// Author:  audrey
// Created: 2009年5月27日 18:18:51
// Purpose: Definition of Class StudentClass

using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;

public class StudentClass
{
    /// <summary>
    /// 班级名称
    /// </summary>
    private string classCode; 
    public string ClassCode
    {
        get { return classCode; }
        set { classCode = value; }
    }
    /// <summary>
    /// 所属专业
    /// </summary>
    private int majorId;  
    public int MajorId
    {
        get { return majorId; }
        set { majorId = value; }
    }
    /// <summary>
    /// 缺省构造函数
    /// </summary>
    public StudentClass()
    {
        classCode = "";
        majorId = -1;
    }
    /// <summary>
    /// 重载构造函数
    /// </summary>
    /// <param name="strClassCode"></param>
    /// <param name="nMajorId"></param>
    public StudentClass(string strClassCode,int nMajorId)
    {
        classCode = strClassCode;
        majorId = nMajorId;
    }

   /// <summary>
   ///  添加新班级
   /// </summary>
   /// <returns></returns>
   public int AddClass()
   {
       string sql = "insert into StudentClass(classCode,MajorId) values('{0}','{1}')";
       sql = string.Format(sql, classCode,majorId);
       int ret = SqlDbHelper.ExecuteInsertSql(sql);
       return ret;
   }
   /// <summary>
   /// 删除当前班级
   /// </summary>
   /// <returns></returns>
   public int Del()
   {
       string sql = "delete from StudentClass where classCode='{0}'";
       sql = string.Format(sql, classCode);
       int ret = SqlDbHelper.ExecuteDelSql(sql);
       return ret;
   }
   /// <summary>
   /// 判断当前班级是否存在
   /// </summary>
   /// <returns></returns>
   public bool IsExist()
   {
       string sql = "";
       sql = "select count(*) from StudentClass where classCode='{0}' ";
       sql = string.Format(sql, classCode);
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
   /// 获取某个专业所有的班级
    /// </summary>
    /// <param name="nMajorId"></param>
    /// <returns></returns>
   public IList<StudentClass> GetMajorClassess(int nMajorId)
   {
       string sql = "select * from StudentClass where MajorId={0}";
       sql = string.Format(sql, nMajorId);

       IList<StudentClass> list = new List<StudentClass>();
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
       {
           StudentClass m = new StudentClass(ds.Tables[0].Rows[i]["classCode"].ToString(), nMajorId);
           list.Add(m);
       }
       return list;

   }
   /// <summary>
   /// 获取班级实体
   /// </summary>
   /// <param name="classCode"></param>
   /// <returns></returns>
   public StudentClass GetModel(string strClassCode)
   {
       string sql = "select * from StudentClass where classCode={0}";
       sql = string.Format(sql, strClassCode);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       if (ds.Tables[0].Rows.Count == 1)
       {
           StudentClass m = new StudentClass(ds.Tables[0].Rows[0]["classCode"].ToString(), Convert.ToInt32(ds.Tables[0].Rows[0]["MajorId"].ToString()));
           return m;
       }
       return null;

   }

}