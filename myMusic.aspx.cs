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


public partial class myMusic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            LoadMusicCategory();
    }
    
    protected void LoadMusicCategory()
    {
         // 获取所有音乐类型
        MusicCategory mc = new MusicCategory();
        DataSet ds = mc.GetAll();

        tvCategore.Nodes.Clear();
        for(int i =0; i<ds.Tables[0].Rows.Count; i++)
        {
            TreeNode node = new TreeNode(ds.Tables[0].Rows[i]["CategoryName"].ToString(), ds.Tables[0].Rows[i]["CategoryName"].ToString());
            tvCategore.Nodes.Add(node);
        }

    }
   
    protected void tvCategory_SelectedNodeChanged(object sender, EventArgs e)
    {
        string categoryName = tvCategore.SelectedNode.Value;
        Music m = new Music();
        DataSet ds = m.SearchByCategory(categoryName);

        string strHeader = @"<tr class = 'tableheader'> 
                        <td width='1%'> &nbsp;</td>
                        <td width='29%'>歌曲名称</td>
                        <td width='14%' align='center'>歌手名</td>
                        <td width='16%' align='center'>上载日期</td>
                        <td width='12%' align='center'>欣赏人数</td>
                        <td width='14%' align='center'>编辑</td>
                        <td width='14%' align='center'>删除</td>
                        </tr>";
        string strBody = "";
        for(int i =0; i<ds.Tables[0].Rows.Count; i++)
        {
            //string str = @""
        }
    }
}
