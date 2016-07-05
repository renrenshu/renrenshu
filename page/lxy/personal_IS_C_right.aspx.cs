using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_IS_M_right : System.Web.UI.Page
{
    int id = 6;
    //pagecurrent：当前页码； pagecount:总页数
    public int pagecurrent = 1;
    public int pagecount;
    int pagenum;
    string seller, bno;
    protected void Page_Load(object sender, EventArgs e)
    {
        pagenum = Convert.ToInt32(Request.QueryString["pagenum"]);
        if (Request.QueryString["seller"] != null && Request.QueryString["bno"] != null)
        {
            seller = Request.QueryString["seller"].ToString();
            bno = Request.QueryString["bno"].ToString();
        }
        getdata(pagenum);
        Page.DataBind();
    }

    //获取数据(ab为页面获取的页码)
    public void getdata(int pagenum)
    {
        Database data = new Database();
        DataSet dso, dsu;
        dso = data.query("select buyer from OrderRelationship WHERE seller = '" + seller + "' AND bno = '"+ bno +"'");

        // 取得总页数
        int a = dso.Tables["base"].Rows.Count % 6;
        if (a > 0)
        {
            pagecount = dso.Tables["base"].Rows.Count / 6 + 1;
        }
        else
        {
            pagecount = dso.Tables["base"].Rows.Count / 6;
        }
        //将页面传递的页码赋给pagecurrent
        if (pagenum > 0 && pagenum <= pagecount)
        {
            pagecurrent = pagenum;
        }
        int num = 0;
        for (int i = ((pagecurrent - 1) * 6); i < dso.Tables["base"].Rows.Count; i++)
        {
            dsu = data.query("select uname, uphone from UserInformation WHERE uid = '" + Convert.ToInt32(dso.Tables["base"].Rows[i]["buyer"].ToString()) + "'");
            if (num >= 6)
            {
                break;
            }
            else if(num == 0)
            {
                TextBox1.Text = dsu.Tables["base"].Rows[0]["uname"].ToString();
                TextBox2.Text = dsu.Tables["base"].Rows[0]["uphone"].ToString();
            }
            else if (num == 1)
            {
                TextBox3.Text = dsu.Tables["base"].Rows[0]["uname"].ToString();
                TextBox4.Text = dsu.Tables["base"].Rows[0]["uphone"].ToString();
            }
            else if (num == 2)
            {
                TextBox5.Text = dsu.Tables["base"].Rows[0]["uname"].ToString();
                TextBox6.Text = dsu.Tables["base"].Rows[0]["uphone"].ToString();
            }
            else if (num == 3)
            {
                TextBox7.Text = dsu.Tables["base"].Rows[0]["uname"].ToString();
                TextBox8.Text = dsu.Tables["base"].Rows[0]["uphone"].ToString();
            }
            else if (num == 4)
            {
                TextBox9.Text = dsu.Tables["base"].Rows[0]["uname"].ToString();
                TextBox10.Text = dsu.Tables["base"].Rows[0]["uphone"].ToString();
            }
            else if (num == 5)
            {
                TextBox11.Text = dsu.Tables["base"].Rows[0]["uname"].ToString();
                TextBox12.Text = dsu.Tables["base"].Rows[0]["uphone"].ToString();
            }
            dsu.Clear();
            num++;
        }
        dso.Clear();
    }

    //首页
    protected void FistPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_IS_C_right.aspx?pagenum=1");
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
            string url_right = "personal_IS_C_right.aspx?pagenum=" + pagecurrent.ToString();
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
            string url_right = "personal_IS_C_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }

    //尾页
    protected void FinalPage_Click(object sender, EventArgs e)
    {
        pagecurrent = pagecount;
        string url_right = "personal_IS_C_right.aspx?pagenum=" + pagecurrent.ToString();
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
            string url_right = "personal_IS_C_right.aspx?pagenum=" + pagecurrent.ToString();
            Response.Redirect(url_right);
        }
    }
}