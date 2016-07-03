using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

public partial class page_yw_test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database data = new Database();
        string sql = "select bno, bname, bprice, bpicture from Stacks";
        DataSet ds;
        bookinfor[] bk = new bookinfor[6];
        byte[] photo = null;
        ds = data.query(sql);
        int i = 0;
        foreach (DataRow row in ds.Tables["base"].Rows)
        {
            bk[i] = new bookinfor();
            bk[i].no = row["bno"].ToString();
            bk[i].name = row["bname"].ToString();
            bk[i].price = row["bprice"].ToString();
            photo = (byte[])row["bpicture"];

            //infor[i, 0] = row["bno"].ToString();
            //infor[i, 1] = row["bname"].ToString();
            //infor[i, 2] = row["bprice"].ToString();
            //infor[i, 3] = data.ByteToImage(row["picture"]);
            i++;
        }
        System.Drawing.Image image;


        MemoryStream mymemorystream = new MemoryStream(photo, 0, photo.Length);


        image = System.Drawing.Image.FromStream(mymemorystream);
    }
}