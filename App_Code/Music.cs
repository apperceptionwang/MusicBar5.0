// File:    Music.cs
// Author:  audrey
// Created: 2009年5月27日 17:52:07
// Purpose: Definition of Class Music

using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;


public class Music
{
    /// <summary>
    /// 音乐标识
    /// </summary>
    private int musicId;
    public int MusicId
    {
        get { return musicId; }
        set { musicId = value; }
    }
    /// <summary>
    /// 音乐名称
    /// </summary>
    private string musicName;
    public string MusicName
    {
        get { return musicName; }
        set { musicName = value; }
    }
    /// <summary>
    /// 歌手名字
    /// </summary>
    private string singer;
    public string Singer
    {
        get { return singer; }
        set { singer = value; }
    }
    /// <summary>
    /// 歌词内容
    /// </summary>
    private string content;
    public string Content
    {
        get { return content; }
        set { content = value; }
    }
    /// <summary>
    /// 音乐文件URL
    /// </summary>
    private string url;
    public string Url
    {
        get { return url; }
        set { url = value; }
    }
    /// <summary>
    /// 所属音乐分类
    /// </summary>
    private string categoryName;
    public string CategoryName
    {
        get { return categoryName; }
        set { categoryName = value; }
    }
    /// <summary>
    /// 上传用户学号
    /// </summary>
    private string uploader;
    public string Uploader
    {
        get { return uploader; }
        set { uploader = value; }
    }
    /// <summary>
    /// 上传日期
    /// </summary>
    private DateTime addDate;
    public DateTime AddDate
    {
        get { return addDate; }
        set { addDate = value; }
    }
    /// <summary>
    /// 欣赏次数
    /// </summary>
    private int clicks;
    public int Clicks
    {
        get { return clicks; }
        set { clicks = value; }
    }
    /// <summary>
    /// 缺省构造函数
    /// </summary>
    public Music()
    {
        musicId = -1;
        musicName = "";
        singer = "";
        content = "";
        url = "";
        categoryName = "";
        uploader = "";
        addDate = DateTime.Now;
        clicks = 0;
    }
   
    /// <summary>
    /// 向数据库中添加一首音乐
    /// </summary>
    /// <returns></returns>
   public int AddMusic()
   {
       string sql = "insert into Music(CategoryName,uploaderStuNo,musicName,singer,content,url,addDate,clicks) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')";
       sql = string.Format(sql, categoryName,uploader,musicName,singer,content,url,addDate,clicks);
       int ret = SqlDbHelper.ExecuteInsertSql(sql);
       return ret;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// 修改音乐
   /// </summary>
   /// <returns></returns>
   public int Modify()
   {
       string sql = "update Music set CategoryName ='{1}',uploaderStuNo='{2}',musicName='{3}',singer='{4}',content='{5}',url='{6}',addDate='{7}',clicks='{8}' where musicId = '{0}' ";
       sql = string.Format(sql,musicId, categoryName, uploader, musicName, singer, content, url, addDate, clicks);
       int ret = SqlDbHelper.ExecuteUpdateSql(sql);
       return ret;
      //throw new NotImplementedException();
   }
   /// <summary>
   /// 删除一首音乐
   /// </summary>
   /// <returns></returns>
   public int Del()
   {
       string sql = "delete from  Music where musicId = '{0}' ";
       sql = string.Format(sql, musicId);
       int ret = SqlDbHelper.ExecuteDelSql(sql);
       return ret;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// 按照歌曲名称模糊搜索
   /// </summary>
   /// <param name="strMusicName"></param>
   /// <returns></returns>
   public DataSet SearchByName(string strMusicName)
   {
       string sql = "select * from Music where musicName like '%{0}%' ";
       sql = string.Format(sql, strMusicName);       
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// 按照歌手名称模糊搜索
   /// </summary>
   /// <param name="strSinger"></param>
   /// <returns></returns>
   public DataSet SearchBySinger(string strSinger)
   {
       string sql = "select * from Music where singer like '%{0}%' ";
       sql = string.Format(sql, strSinger);       
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// 按照歌词模糊搜索
   /// </summary>
   /// <param name="strContent"></param>
   /// <returns></returns>
   public DataSet SearchByContent(string strContent)
   {
       string sql = "select * from Music where content like '%{0}%' ";
       sql = string.Format(sql, strContent);       
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// 取最新上载音乐nNumbers条
   /// </summary>
   /// <param name="nNumbers"></param>
   /// <returns></returns>
   public DataSet GetNewMusics(int nNumbers)
   {
       string sql = "select top  " + nNumbers .ToString()+ "  * from Music  order by musicid desc ";              
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;
      //throw new NotImplementedException();
   }

   public DataSet GetNewMusics()
   {
       string sql = "select * from Music  order by musicid desc ";
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;
       //throw new NotImplementedException();
   }

   /// <summary>
   /// 取点击次数最多的音乐前nNumbers条
   /// </summary>
   /// <param name="nNumber"></param>
   /// <returns></returns>
   public DataSet GetHotMusics(int nNumber)
   {
       string sql = "select top  " + nNumber.ToString() + "  * from Music  order by clicks desc ";       
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;
      //throw new NotImplementedException();
   }

    /// <summary>
    /// 获取所有音乐排行榜
    /// </summary>
    /// <returns></returns>
   public DataSet GetHotMusics()
   {
       string sql = "select    * from Music  order by clicks desc ";
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;
       //throw new NotImplementedException();
   }

   /// <summary>
   /// 根据音乐标识判断是否已经存在
   /// </summary>
   /// <returns></returns>
   public bool IsExist()
   {
       string sql = "select *  from Music where musicId='{0}'";
       sql = string.Format(sql, musicId);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
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
   /// 获取一个类别下所有的音乐
   /// </summary>
   /// <param name="strCategoryName"></param>
   /// <returns></returns>
   public DataSet SearchByCategory(string strCategoryName)
   {
       string sql = "select  * from Music  where CategoryName ='{0}' ";
       sql = string.Format(sql, strCategoryName);       
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;

      //throw new NotImplementedException();
   }
   /// <summary>
   /// 获取一个会员所有上载的音乐
   /// </summary>
   /// <param name="strUploader"></param>
   /// <returns></returns>
   public DataSet GetByUploader(string strUploader)
   {
       string sql = "select  * from Music  where uploaderStuNo ='{0}' ";
       sql = string.Format(sql, strUploader);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;

      //throw new NotImplementedException();
   }

   public DataSet GetByUploader(Student  stu)
   {
       if (stu == null)
           return null;
       string sql = "select  * from Music  where uploaderStuNo ='{0}' ";
       sql = string.Format(sql, stu.StuNo);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       return ds;

       //throw new NotImplementedException();
   }

   /// <summary>
   /// 根据musicId获取该音乐信息
   /// </summary>
   /// <param name="musicId"></param>
   /// <returns></returns>
   public Music GetModel(int musicId)
   {
      //throw new NotImplementedException();
       string sql = "select *  from Music where musicId='{0}'";
       sql = string.Format(sql, musicId);
       DataSet ds = SqlDbHelper.ExecuteSelectSql(sql);
       if (ds.Tables[0].Rows.Count == 1)
       {
           Music m = new Music();         
           m.musicId = musicId;
           m.musicName = ds.Tables[0].Rows[0]["musicName"].ToString();
           m.singer = ds.Tables[0].Rows[0]["singer"].ToString();
           m.content = ds.Tables[0].Rows[0]["content"].ToString();
           m.url = ds.Tables[0].Rows[0]["url"].ToString();
           m.uploader = ds.Tables[0].Rows[0]["uploaderStuNo"].ToString();
           m.addDate =Convert.ToDateTime(ds.Tables[0].Rows[0]["addDate"].ToString());
           m.categoryName = ds.Tables[0].Rows[0]["CategoryName"].ToString();
           m.clicks = Convert.ToInt32(ds.Tables[0].Rows[0]["clicks"].ToString());
           return m;

       }
       return null;
   }

    /// <summary>
    /// 欣赏音乐，音乐点击次数加1
    /// </summary>
    /// <param name="nMusicId"></param>
    public void PlayMusic(int nMusicId)
    {
        string sql = "update Music set clicks = clicks +1  where musicId = '{0}' ";
        sql = string.Format(sql, nMusicId);
        SqlDbHelper.ExecuteUpdateSql(sql);
     
    }

}