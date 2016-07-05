using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class page_yw_book_right : System.Web.UI.Page
{
    Database data = new Database();
    string sql = "select bno, bname, bprice, bpicture from Stack";
    DataSet ds;
    public bookinfor[] bk = new bookinfor[6];
    //pagecurrent：当前页码； pagecount:总页数
    public int pagecurrent = 1;
    public int pagecount = 6;
    protected void Page_Load(object sender, EventArgs e)
    {
        //得到页面传递的页码
        int pagenum = Convert.ToInt32( Request.QueryString["pagenum"]);
        getdata(pagenum);
        Page.DataBind();
    }
    //将类序列化
    public string func()
    {
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        string result = serializer.Serialize(bk);
        return result;
    }
    //获取数据(ab为页面获取的页码)
    public void getdata(int pagenum)
    {
        
        ds = data.query(sql);
        // 取得总页数
        int a = ds.Tables["base"].Rows.Count % 6;
        if(a > 0)
        {
            pagecount = ds.Tables["base"].Rows.Count / 6 + 1;
        }
        else
        {
            pagecount = ds.Tables["base"].Rows.Count / 6;
        }
        //将页面传递的页码赋给pagecurrent
        if(pagenum > 0 && pagenum <= pagecount)
        {
            pagecurrent = pagenum;
        }
        int num = 0;
        for (int i = ((pagecurrent-1)*6); i<ds.Tables["base"].Rows.Count;i++)
        {
            if(num >= 6)
            {
                break;
            }
            bk[num] = new bookinfor();
            bk[num].no = ds.Tables["base"].Rows[i]["bno"].ToString();
            bk[num].name = ds.Tables["base"].Rows[i]["bname"].ToString();
            bk[num].price = ds.Tables["base"].Rows[i]["bprice"].ToString();
            bk[num].picture = ds.Tables["base"].Rows[i]["bpicture"].ToString();
            num++;

        }
    }
    //首页
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("book_right.aspx");
    }
    //上一页
    protected void Button2_Click(object sender, EventArgs e)
    {
        int a = pagecurrent - 1;
        if(a <= 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('已经是第一页了！')</script>");
        }
        else
        {
            pagecurrent--;
            string url_right = "book_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
    //下一页
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a = pagecurrent + 1;
        if(a > pagecount)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('已经是最后一页了！')</script>");
        }
        else
        {
            pagecurrent++;
            string url_right = "book_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
    //尾页
    protected void Button4_Click(object sender, EventArgs e)
    {
        pagecurrent = pagecount;
        string url_right = "book_right.aspx?pagenum=" + pagecurrent.ToString();
        Response.Redirect(url_right);
    }
    //转到
    protected void Button5_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtpage.Text);
        if (a <= 0 || a > pagecount)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('页码输入错误！')</script>");
        }
        else
        {
            pagecurrent = a;
            string url_right = "book_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
}