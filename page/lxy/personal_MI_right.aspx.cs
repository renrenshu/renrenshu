using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_MI_right : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        Users people = new Users();
        string id = "6";
        ds = people.query();
        foreach (DataRow row in ds.Tables["UserInformation"].Rows)
        {
            if (row["uid"].ToString() == id)
            {
                TextBox1.Text = row["uname"].ToString();
                TextBox2.Text = row["upassword"].ToString();
                TextBox3.Text = row["uphone"].ToString();
            }
        }
    }
    protected void user_personal_Button1_Click(object sender, EventArgs e)
    {
        bool status = false;
        Users people = new Users();
        status = people.Modify(user_name_TextBox.Text, user_phone_TextBox.Text, user_password_TextBox1.Text);
        if (status)
            Response.Write("<script>alert('操作成功!');window.location.href ='personal.aspx'</script>");
        else
        {
            Response.Write("<script>alert('操作失败!')</script>");
        }
    }
}