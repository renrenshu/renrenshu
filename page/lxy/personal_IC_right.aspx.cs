using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_IC_right : System.Web.UI.Page
{
    int id;
    public listclient[] ll = new listclient[4];
    public listreward[] lw = new listreward[4];
    //pagecurrent：当前页码； pagecount:总页数
    public int pagecurrent = 1;
    public int pagecount;
    int pagenum;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            id = Convert.ToInt32(Session["id"].ToString());
        }
        pagenum = Convert.ToInt32(Request.QueryString["pagenum"]);
        getdata(pagenum);
        Page.DataBind();
    }

    public string func()
    {
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        string result = serializer.Serialize(lw);
        return result;
    }
    //获取数据(ab为页面获取的页码)
    public void getdata(int pagenum)
    {
        Database data = new Database();
        DataSet dsu_l, dsl;
        dsu_l = data.query("select lno from U_L WHERE uid = '" + id + "'");
        //dso = data.query("select lname, ltime, loffer, lpicture from List WHERE lno = '" + Convert.ToInt32(lw[num].lno) + "'");

        // 取得总页数
        int a = dsu_l.Tables["base"].Rows.Count % 4;
        if (a > 0)
        {
            pagecount = dsu_l.Tables["base"].Rows.Count / 4 + 1;
        }
        else
        {
            pagecount = dsu_l.Tables["base"].Rows.Count / 4;
        }
        //将页面传递的页码赋给pagecurrent
        if (pagenum > 0 && pagenum <= pagecount)
        {
            pagecurrent = pagenum;
        }
        int num = 0;
        for (int i = ((pagecurrent - 1) * 4); i < dsu_l.Tables["base"].Rows.Count; i++)
        {
            if (num >= 4)
            {
                break;
            }

            lw[num] = new listreward();
            lw[num].lno = dsu_l.Tables["base"].Rows[i]["lno"].ToString();
            lw[num].client = id.ToString();
            dsl = data.query("select lname, ltime, loffer, lpicture from List WHERE lno = '" + Convert.ToInt32(lw[num].lno) + "'");
            lw[num].name = dsl.Tables["base"].Rows[0]["lname"].ToString();
            lw[num].time = dsl.Tables["base"].Rows[0]["ltime"].ToString();
            lw[num].offer = dsl.Tables["base"].Rows[0]["loffer"].ToString();
            lw[num].picture = dsl.Tables["base"].Rows[0]["lpicture"].ToString();
            dsl.Clear();
            num++;

        }
        dsu_l.Clear();
    }

    //首页
    protected void FistPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_IC_right.aspx?pagenum=1");
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
            string url_right = "personal_IC_right.aspx?pagenum=" + pagecurrent.ToString();
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
            string url_right = "personal_IC_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }

    //尾页
    protected void FinalPage_Click(object sender, EventArgs e)
    {
        pagecurrent = pagecount;
        string url_right = "personal_IC_right.aspx?pagenum=" + pagecurrent.ToString();
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
            string url_right = "personal_IC_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
}