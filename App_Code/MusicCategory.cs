// File:    MusicCategory.cs
// Author:  audrey
// Created: 2009年5月27日 17:52:06
// Purpose: Definition of Class MusicCategory

using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;

public class MusicCategory
{
    /// <summary>
    /// 音乐类别名称
    /// </summary>
    private string categoryName;

    public string CategoryName
    {
        get { return categoryName; }
        set { categoryName = value; }
    }

    /// <summary>
    /// 音乐类别描述
    /// </summary>
    private string memo;
    public string Memo
    {
        get { return memo; }
        set { memo = value; }
    }
    /// <summary>
    /// 缺省构造函数
    /// </summary>
    public MusicCategory()
    {
        categoryName = "";
        memo = "";
    }
    /// <summary>
    /// 重载构造函数
    /// </summary>
    /// <param name="strCategoryName"></param>
    /// <param name="strMemo"></param>
    public MusicCategory(string strCategoryName,string strMemo)
    {
        categoryName = strCategoryName;
        memo = strMemo;
    }

   /// <summary>
   /// 添加一个新音乐类别
   /// </summary>
   /// <returns></returns>
   public int AddCategory()
   {
       string sql = "insert into MusicCategory(CategoryName,memo) values('{0}','{1}')";
       sql = string.Format(sql, categoryName,memo);
       int ret = SqlDbHelper.ExecuteInsertSql(sql);
       return ret;
   }
   /// <summary>
   /// 删除当前音乐类别
   /// </summary>
   /// <returns></returns>
   public int DelCategory()
   {
       string sql = "delete from MusicCategory where CategoryName='{0}'";
       sql = string.Format(sql, categoryName);
       int ret = SqlDbHelper.ExecuteDelSql(sql);
       return ret;

      //throw new NotImplementedException();

   }
   /// <summary>
   /// 修改当前音乐类别
   /// </summary>
   /// <param name="strNewName"></param>
   /// <param name="strNewMemo"></param>
   /// <returns></returns>
   public int ModifyCategory(string strNewName, string strNewMemo)
   {
       string sql = "";
       sql = "update MusicCategory set CategoryName ='{0}',memo ='{1}' where CategoryName='{2}'";
       sql = string.Format(sql, strNewName, strNewMemo,categoryName);
       int ret = SqlDbHelper.ExecuteUpdateSql(sql);
       return ret;

   }
   /// <summary>
   /// 判断当前音乐类别是否存在
   /// </summary>
   /// <returns></returns>
   public bool IsExist()
   {
       string sql = "select count(*) from MusicCategory where CategoryName='{0}' ";
       sql = string.Format(sql, categoryName);
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
   /// 获取所有的音乐类别
   /// </summary>
   /// <returns></returns>
   public DataSet GetAll()
   {
       string sql = "select * from MusicCategory ";
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       
       return ds;
   }
   /// <summary>
   /// 获取音乐类别实体
   /// </summary>
   /// <param name="categoryName"></param>
   /// <returns></returns>
   public MusicCategory GetModel(string strCategoryName)
   {
       string sql = "select * from MusicCategory where CategoryName='{0}' ";
       sql = string.Format(sql, strCategoryName);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       if (ds.Tables[0].Rows.Count == 1)
       {
           MusicCategory m = new MusicCategory(ds.Tables[0].Rows[0]["CategoryName"].ToString(), ds.Tables[0].Rows[0]["memo"].ToString());
           return m;
       }
       return null;
   }

}