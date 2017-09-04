// File:    Major.cs
// Author:  audrey
// Created: 2009��5��27�� 18:18:03
// Purpose: Definition of Class Major

using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;

public class Major
{
    /// <summary>
    /// רҵ��ʶ
    /// </summary>
    private int majorId;
    public int MajorId
    {
        get { return majorId; }
        set { majorId = value; }
    }
    /// <summary>
    /// רҵ����
    /// </summary>
    private string majorName;
    public string MajorName
    {
        get { return majorName; }
        set { majorName = value; }
    }
    /// <summary>
    /// ����Ժϵ
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
    public Major()
    {
        majorId = -1;
        majorName = "";
        departmentName = "";
    }
    /// <summary>
    /// ���ع��캯��
    /// </summary>
    public Major(int nId, string strName, string strDepName)
    {
        majorId = nId;
        majorName = strName;
        departmentName = strDepName;
    }

    /// <summary>
    /// �����רҵ
    /// </summary>
    /// <returns></returns>
   public int AddMajor()
   {
       string sql = "insert into Major(MajorId,MajorName,DepartmentName) values('{0}','{1}','{2}')";
       sql = string.Format(sql,majorId,majorName,departmentName);
       int ret = SqlDbHelper.ExecuteInsertSql(sql);
       return ret;
      //throw new NotImplementedException();
   }
   /// <summary>
   /// ɾ����ǰרҵ
   /// </summary>
   /// <returns></returns>
   public int Del()
   {
       string sql = "delete from  Major where MajorId = '{0}' ";
       sql = string.Format(sql, majorId);
       int ret = SqlDbHelper.ExecuteDelSql(sql);
       return ret;
      //throw new NotImplementedException();
   }
   /// <summary>
   /// �޸ĵ�ǰרҵ
   /// </summary>
   /// <returns></returns>
   public int Modify()
   {
       string sql = "update Major set MajorName ='{1}',DepartmentName='{2}' where MajorId = '{0}' ";
       sql = string.Format(sql, majorId, majorName, departmentName);
       int ret = SqlDbHelper.ExecuteUpdateSql(sql);
       return ret;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// ��ȡĳ��Ժϵ���е�רҵ
   /// </summary>
   /// <returns></returns>
   public IList<Major> GetMajorsByDep(string strDepName)
   {
       string sql = "select MajorId,MajorName,DepartmentName from Major where DepartmentName='{0}'";
       sql = string.Format(sql, strDepName);
       IList<Major> list = new List<Major>();
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
       {
           Major m = new Major(Convert.ToInt32(ds.Tables[0].Rows[i]["MajorId"].ToString()), ds.Tables[0].Rows[i]["MajorName"].ToString(), ds.Tables[0].Rows[i]["DepartmentName"].ToString());
           list.Add(m);
       }
       return list;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// �жϵ�ǰרҵ�Ƿ����
   /// </summary>
   /// <returns></returns>
   public bool IsExist()
   {
       string sql = "select count(*) from Major where MajorId='{0}' ";
       sql = string.Format(sql, majorId);
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
   /// ��ȡһ��רҵʵ��
   /// </summary>
   /// <param name="majorId"></param>
   /// <returns></returns>
   public Major GetModel(int majorId)
   {
      //throw new NotImplementedException();
       string sql = "select MajorId,MajorName,DepartmentName from Major where MajorId='{0}'";
       sql = string.Format(sql, majorId);    
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       if (ds.Tables[0].Rows.Count == 1)
       {
           Major m = new Major(Convert.ToInt32(ds.Tables[0].Rows[0]["MajorId"].ToString()), ds.Tables[0].Rows[0]["MajorName"].ToString(), ds.Tables[0].Rows[0]["DepartmentName"].ToString());
           return m;

       }
       return null;
   }

}