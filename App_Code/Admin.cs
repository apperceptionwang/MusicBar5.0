// File:    Admin.cs
// Author:  audrey
// Created: 2009��5��27�� 17:52:07
// Purpose: Definition of Class Admin

using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;

public class Admin : Student
{
    /// <summary>
    /// ��ѧ������ѧ��
    /// </summary>
    /// <param name="strStuNo"></param>
    /// <returns></returns>
    public static DataSet SearchUsersByStuNo(string strStuNo)
    {
        string sql = "select   *  from Student where stuNo like '%{0}%'";
        sql = string.Format(sql, strStuNo);
        DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
        return ds;
    }
    /// <summary>
    /// ����������ѧ��
    /// </summary>
    /// <param name="strStuName"></param>
    /// <returns></returns>
    public static DataSet SearchUsersByStuName(string strStuName)
    {
        string sql = "select   *  from Student where stuName like '%{0}%'";
        sql = string.Format(sql, strStuName);
        DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
        return ds;
    }
    /// <summary>
    /// ȡһ���༶���е�ѧ��
    /// </summary>
    /// <param name="strClassCode"></param>
    /// <returns></returns>
    public static DataSet GetUsersByClassCode(string strClassCode)
    {
        string sql = "select   *  from Student where classCode = '{0}'";
        sql = string.Format(sql, strClassCode);
        DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
        return ds;
    }

}