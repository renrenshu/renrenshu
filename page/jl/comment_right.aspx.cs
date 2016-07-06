using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class page_jl_comment_right : System.Web.UI.Page
{
    Database data = new Database();
    string sql = "select no, title from CommentArea";
    DataSet ds;
    public commentinfor[] ct = new commentinfor[10];
    //pagecurrent：当前页码； pagecount:总页数
    public int pagecurrent = 1;
    public int pagecount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //得到页面传递的页码
        if(Request.QueryString["pagenum"] == null)
        {
            int pagenum = 1;
            getdata(pagenum);
            Page.DataBind();
        }
        else
        {
            int pagenum = Convert.ToInt32(Request.QueryString["pagenum"]);
            getdata(pagenum);
            Page.DataBind();
        }
        
    }
    //将类序列化
    public string func()
    {
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        string result = serializer.Serialize(ct);
        return result;
    }
    //获取数据(ab为页面获取的页码)
    public void getdata(int pagenum)
    {

        ds = data.query(sql);
        // 取得总页数
        int a = ds.Tables["base"].Rows.Count % 10;
        if (a > 0)
        {
            pagecount = ds.Tables["base"].Rows.Count / 10 + 1;
        }
        else
        {
            pagecount = ds.Tables["base"].Rows.Count / 10;
        }
        //将页面传递的页码赋给pagecurrent
        if (pagenum > 0 && pagenum <= pagecount)
        {
            pagecurrent = pagenum;
        }
        int num = 0;
        for (int i = ((pagecurrent - 1) * 10); i < ds.Tables["base"].Rows.Count; i++)
        {
            //控制一页10条数据
            if (num >= 10)
            {
                break;
            }
            ct[num] = new commentinfor();
            ct[num].no = ds.Tables["base"].Rows[i]["no"].ToString();
            ct[num].title = ds.Tables["base"].Rows[i]["title"].ToString();
            num++;

        }
    }
    //首页
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("comment_right.aspx");
    }
    //上一页
    protected void Button2_Click(object sender, EventArgs e)
    {
        int a = pagecurrent - 1;
        if (a <= 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('已经是第一页了！')</script>");
        }
        else
        {
            pagecurrent--;
            string url_right = "comment_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
    //下一页
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a = pagecurrent + 1;
        if (a > pagecount)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('已经是最后一页了！')</script>");
        }
        else
        {
            pagecurrent++;
            string url_right = "comment_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
    //尾页
    protected void Button4_Click(object sender, EventArgs e)
    {
        pagecurrent = pagecount;
        string url_right = "comment_right.aspx?pagenum=" + pagecurrent.ToString();
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
            string url_right = "comment_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            string uid = Session["id"].ToString();
            string sql2 = "select uname from UserInformation where uid = '";
            sql2 = sql2 + uid + "'";
            string name;
            DataSet ds1;
            ds1 = data.query(sql2);
            name = ds1.Tables["base"].Rows[0]["uname"].ToString();
            if (txt_title.Text == null || txt_content.Text == null)
            {
                if (txt_title.Text == null)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空！')</script>");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('内容不能为空！')</script>");
                }
            }
            else
            {
                bool check = false;
                check = data.addcomment(txt_title.Text.ToString().Trim(), txt_content.Text.ToString().Trim(), name);
                if (check == true)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                    "<script>alert('发表成功！');location.href='comment_right.aspx'</script>");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                    "<script>alert('发表失败！');location.href='comment_right.aspx'</script>");
                }
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                "<script>alert('还未登录，请先登录！')</script>");
        }
       
    }
}