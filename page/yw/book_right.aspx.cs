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
    protected void Page_Load(object sender, EventArgs e)
    {
        ds = data.query(sql);
        int i = 0;
        foreach (DataRow row in ds.Tables["base"].Rows)
        {
            bk[i] = new bookinfor();
            bk[i].no = row["bno"].ToString();
            bk[i].name = row["bname"].ToString();
            bk[i].price = row["bprice"].ToString();
            bk[i].picture = row["bpicture"].ToString();
            i++;
        }
    }
    public string func()
    {
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        string result = serializer.Serialize(bk);
        return result;
    }
}