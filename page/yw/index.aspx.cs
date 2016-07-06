using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class page_yw_test : System.Web.UI.Page
{
    Database data = new Database();
    string sql = "select * from state";
    DataSet ds;
    bool state = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata();
    }
    public void getdata()
    {
        ds = data.query(sql);
        state = (bool)ds.Tables["base"].Rows[0]["webstate"];

    }
    public string getstate()
    {
        return state.ToString();
    }
}