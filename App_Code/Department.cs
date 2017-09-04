// File:    Department.cs
// Author:  audrey
// Created: 2009��5��27�� 18:18:03
// Purpose: Definition of Class Department

using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;

public class Department
{
    /// <summary>
    /// Ժϵ����
    /// </summary>
    private string departmentName;
    public string DepartmentName
    {
        get { return departmentName; }
        set { departmentName = value; }
    }
    /// <summary>
    /// ȱʡ���캯��
    /// </summary>
    public Department()
    {
        departmentName = "";
    }
    /// <summary>
    /// ���ع��캯��
    /// </summary>
    /// <param name="strDepName">Ժϵ����</param>
    public Department(string strDepName)
    {
        departmentName = strDepName;
    }
   /// <summary>
   /// ���һ���µ�Ժϵ
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
   /// ɾ��ָ����Ժϵ
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
   /// �޸ĵ�ǰԺϵ����
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
   /// �жϵ�ǰԺϵ�Ƿ����
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
   /// ��ȡ���е�Ժϵ�б�
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
   /// ��ȡԺϵʵ��
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