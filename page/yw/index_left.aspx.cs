using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class page_yw_index_left : System.Web.UI.Page
{
    Database data = new Database();
    string sql = "select * from Stack order by bprice";
    string sql1 = "select * from Stack order by btime desc";
    DataSet ds;
    
    public bookinfor[] bk = new bookinfor[2];
    public bookinfor[] bk1 = new bookinfor[3];
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata(sql, 2);
        getdata1(sql1, 3);
    }
    public void getdata(string sqlstring,int num)
    {

        ds = data.query(sqlstring);
        for (int i = 0; i < num; i++)
        {
            bk[i] = new bookinfor();
            bk[i].no = ds.Tables["base"].Rows[i]["bno"].ToString();
            bk[i].name = ds.Tables["base"].Rows[i]["bname"].ToString();
            bk[i].intro = ds.Tables["base"].Rows[i]["bintro"].ToString();
            bk[i].picture = ds.Tables["base"].Rows[i]["bpicture"].ToString();
            
        }
    }
    public void getdata1(string sqlstring, int num)
    {

        ds = data.query(sqlstring);
        for (int i = 0; i < num; i++)
        {
            bk1[i] = new bookinfor();
            bk1[i].no = ds.Tables["base"].Rows[i]["bno"].ToString();
            bk1[i].name = ds.Tables["base"].Rows[i]["bname"].ToString();
            bk1[i].picture = ds.Tables["base"].Rows[i]["bpicture"].ToString();

        }
    }
}