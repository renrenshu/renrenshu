using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class page_jl_Default : System.Web.UI.Page
{
    string id = null;
    Database data = new Database();
    string sql = "select * from List where lno=";
    DataSet ds;
    public rewardinfor rd = new rewardinfor();
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
        rd = new rewardinfor();
        rd.no = ds.Tables["base"].Rows[0]["lno"].ToString();
        rd.name = ds.Tables["base"].Rows[0]["lname"].ToString();
        rd.author = ds.Tables["base"].Rows[0]["lauthor"].ToString();
        rd.press = ds.Tables["base"].Rows[0]["lpress"].ToString();
        rd.offer = ds.Tables["base"].Rows[0]["loffer"].ToString();
        rd.price = ds.Tables["base"].Rows[0]["lprice"].ToString();
        rd.picture = ds.Tables["base"].Rows[0]["lpicture"].ToString();
    }
    protected void book_order_Click(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            string uid = Session["id"].ToString().Trim();
            string sql1 = "select * from U_L where lno=" + rd.no;
            DataSet ds1 = data.query(sql1);
            string client = ds1.Tables["base"].Rows[0]["uid"].ToString().Trim();
            string sql2 = "insert into RewardRelationship (client,mandatory,lno) values ('" +client+"','"+ uid + "','" + rd.no + "')";
            bool check = data.update(sql2);
            if (check == true)
            {
                Response.Write("<script>alert('揭榜成功！详情请到个人中心查看')</script>");
            }
            else
            {
                Response.Write("<script>alert('揭榜失败！')</script>");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                "<script>alert('还未登录，请先登录！')</script>");
        }
    }
}