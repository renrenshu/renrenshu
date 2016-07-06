using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class page_jl_comment_left : System.Web.UI.Page
{
    string id = null;
    Database data = new Database();
    string sql = "select * from CommentArea where no=";
    DataSet ds;
    public commentinfor ct = new commentinfor();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            id = Request.QueryString["id"].ToString();
            sql = sql + id;
            getdata();
        }
    }
    //获取数据(ab为页面获取的页码)
    public void getdata()
    {
        ds = data.query(sql);
        ct = new commentinfor();
        ct.no = ds.Tables["base"].Rows[0]["no"].ToString();
        ct.name = ds.Tables["base"].Rows[0]["person"].ToString();
        ct.title = ds.Tables["base"].Rows[0]["title"].ToString();
        ct.content = ds.Tables["base"].Rows[0]["comment"].ToString();
        ct.time = ds.Tables["base"].Rows[0]["time"].ToString();
        
    }
}