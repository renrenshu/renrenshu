using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_IS_right : System.Web.UI.Page
{
    int id = 6;
    public bookinfor[] bk = new bookinfor[4];
    public bookorder[] bo = new bookorder[4];
    //pagecurrent：当前页码； pagecount:总页数
    public int pagecurrent = 1;
    public int pagecount;
    int pagenum;
    protected void Page_Load(object sender, EventArgs e)
    {
        pagenum = Convert.ToInt32(Request.QueryString["pagenum"]);
        getdata(pagenum);
        Page.DataBind();
    }

    public string func()
    {
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        string result = serializer.Serialize(bo);
        return result;
    }
    //获取数据(ab为页面获取的页码)
    public void getdata(int pagenum)
    {
        Database data = new Database();
        DataSet dsu_s, dsb;
        dsu_s = data.query("select bno from U_S WHERE uid = '" + id + "'");
        //dso = data.query("select ono, seller, buyer, bno from OrderRelationship WHERE seller = '" + id + "'");

        // 取得总页数
        int a = dsu_s.Tables["base"].Rows.Count % 4;
        if (a > 0)
        {
            pagecount = dsu_s.Tables["base"].Rows.Count / 4 + 1;
        }
        else
        {
            pagecount = dsu_s.Tables["base"].Rows.Count / 4;
        }
        //将页面传递的页码赋给pagecurrent
        if (pagenum > 0 && pagenum <= pagecount)
        {
            pagecurrent = pagenum;
        }
        int num = 0;
        for (int i = ((pagecurrent - 1) * 4); i < dsu_s.Tables["base"].Rows.Count; i++)
        {
            if (num >= 4)
            {
                break;
            }

            bo[num] = new bookorder();
            bo[num].bno = dsu_s.Tables["base"].Rows[i]["bno"].ToString();
            bo[num].seller = id.ToString();
            dsb = data.query("select bname, btime, bprice, bpicture from Stack WHERE bno = '" + Convert.ToInt32(bo[num].bno) + "'");
            bo[num].name = dsb.Tables["base"].Rows[0]["bname"].ToString();
            bo[num].time = dsb.Tables["base"].Rows[0]["btime"].ToString();
            bo[num].price = dsb.Tables["base"].Rows[0]["bprice"].ToString();
            bo[num].picture = dsb.Tables["base"].Rows[0]["bpicture"].ToString();
            dsb.Clear();
            num++;

        }
        dsu_s.Clear();
    }

    //首页
    protected void FistPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_IS_right.aspx?pagenum=1");
    }

    //上一页
    protected void LastPage_Click(object sender, EventArgs e)
    {
        int a = pagecurrent - 1;
        if (a <= 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('已经是第一页了！')</script>");
        }
        else
        {
            pagecurrent--;
            string url_right = "personal_IS_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }

    //下一页
    protected void NextPage_Click(object sender, EventArgs e)
    {
        int a = pagecurrent + 1;
        if (a > pagecount)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('已经是最后一页了！')</script>");
        }
        else
        {
            pagecurrent++;
            string url_right = "personal_IS_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }

    //尾页
    protected void FinalPage_Click(object sender, EventArgs e)
    {
        pagecurrent = pagecount;
        string url_right = "personal_IS_right.aspx?pagenum=" + pagecurrent.ToString();
        Response.Redirect(url_right);
    }

    //转到
    protected void GoPage_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtpage.Text);
        if (a <= 0 || a > pagecount)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('页码输入错误！')</script>");
        }
        else
        {
            pagecurrent = a;
            string url_right = "personal_IS_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
}