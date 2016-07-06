using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class page_yw_book_left : System.Web.UI.Page
{
    string id =null;
    Database data = new Database();
    string sql = "select * from Stack where bno=";
    DataSet ds;
    public bookinfor bk = new bookinfor();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!= null)
        {
            id = Request.QueryString["id"].ToString();
            sql = sql + id;
            getdata();
        }
    }
    public string func()
    {
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        string result = serializer.Serialize(bk);
        return result;
    }
    //获取数据(ab为页面获取的页码)
    public void getdata()
    {
        ds = data.query(sql);
        bk = new bookinfor();
        bk.no = ds.Tables["base"].Rows[0]["bno"].ToString();
        bk.name = ds.Tables["base"].Rows[0]["bname"].ToString();
        bk.author = ds.Tables["base"].Rows[0]["bauthor"].ToString();
        bk.press = ds.Tables["base"].Rows[0]["bpress"].ToString();
        bk.intro = ds.Tables["base"].Rows[0]["bintro"].ToString();
        bk.price = ds.Tables["base"].Rows[0]["bprice"].ToString();
        bk.picture = ds.Tables["base"].Rows[0]["bpicture"].ToString();
    }
    protected void book_order_Click(object sender, EventArgs e)
    {
        if(Session["id"] != null)
        {
            string uid = Session["id"].ToString().Trim();
            string sql1 = "insert into u_s (uid, bno) values ('" + uid + "','" + bk.no + "')";
            bool check =data.update(sql1);
            if (check == true)
            {
                Response.Write("<script>alert('预订成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('预订失败！')</script>");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                "<script>alert('还未登录，请先登录！')</script>");
        }
    }
}