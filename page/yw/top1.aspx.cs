using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class page_yw_top1 : System.Web.UI.Page
{
    string id, name;
    Database data = new Database();
    string sql = "select uname from UserInformation where uid = '";
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            id = Session["id"].ToString();
            sql = sql + id + "'";
            getdata();
            show_name.Visible = true;
            show_name.Text = "欢迎  " + name;
            a_logn.Visible = false;
        }
    }
    public void getdata()
    {
        ds = data.query(sql);
        name = ds.Tables["base"].Rows[0]["uname"].ToString();

    }
}