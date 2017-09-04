// File:    Department.cs
// Author:  audrey
// Created: 2009年5月27日 18:18:03
// Purpose: Definition of Class Department

using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;

public class Department
{
    /// <summary>
    /// 院系名称
    /// </summary>
    private string departmentName;
    public string DepartmentName
    {
        get { return departmentName; }
        set { departmentName = value; }
    }
    /// <summary>
    /// 缺省构造函数
    /// </summary>
    public Department()
    {
        departmentName = "";
    }
    /// <summary>
    /// 重载构造函数
    /// </summary>
    /// <param name="strDepName">院系名称</param>
    public Department(string strDepName)
    {
        departmentName = strDepName;
    }
   /// <summary>
   /// 添加一个新的院系
   /// </summary>
   /// <returns></returns>
   public int AddDepartment()
   {
       string sql = "insert into Department(DepartmentName) values('{0}')";
       sql = string.Format(sql, departmentName);
       int ret = SqlDbHelper.ExecuteInsertSql(sql);
       return ret;

       //throw new NotImplementedException();
   }
   /// <summary>
   /// 删除指定的院系
   /// </summary>
   /// <returns></returns>
   public int Del()
   {
       string sql = "delete from Department where DepartmentName='{0}'";
       sql = string.Format(sql, departmentName);
       int ret = SqlDbHelper.ExecuteDelSql(sql);
       return ret;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// 修改当前院系名称
   /// </summary>
   /// <param name="strNewName"></param>
   /// <returns></returns>
   public int Modify(string strNewName)
   {
       string sql = "";       
       sql = "update Department set DepartmentName ='{0}' where DepartmentName='{1}'";
       sql = string.Format(sql,strNewName,departmentName);
       int ret = SqlDbHelper.ExecuteUpdateSql(sql);
       return ret;
      //throw new NotImplementedException();
   }
   /// <summary>
   /// 判断当前院系是否存在
   /// </summary>
   /// <returns></returns>
   public bool IsExist()
   {
       string sql = "";
       sql = "select count(*) from Department where DepartmentName='{0}' ";
       sql = string.Format(sql, departmentName);
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
   /// 获取所有的院系列表
   /// </summary>
   /// <returns></returns>
   public IList<Department> GetAll()
   {
      //throw new NotImplementedException();
       string sql = "select DepartmentName from Department ";
       IList<Department> list = new List<Department>();
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
       {
           Department m =new Department(ds.Tables[0].Rows[i]["DepartmentName"].ToString());
           list.Add(m);
       }
       return list;
   }
   /// <summary>
   /// 获取院系实体
   /// </summary>
   /// <param name="depName"></param>
   /// <returns></returns>
   public Department GetModel(string depName)
   {
      //throw new NotImplementedException();
       string sql = "select DepartmentName from Department where DepartmentName='{0}'";
       sql = string.Format(sql, departmentName);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       if (ds.Tables[0].Rows.Count==1)
       {
           Department m = new Department(ds.Tables[0].Rows[0]["DepartmentName"].ToString());
           return m;

       }
       return null;

   }

}