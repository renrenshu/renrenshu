using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_MI_right : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            id = Convert.ToInt32(Session["id"].ToString());
        }
        DataSet ds = new DataSet();
        Users people = new Users();
        ds = people.query();
        foreach (DataRow row in ds.Tables["UserInformation"].Rows)
        {
            if (Convert.ToInt32(row["uid"].ToString()) == id)
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
        if(user_password_TextBox1.Text == user_password_TextBox2.Text)
        {
            status = people.Modify(user_name_TextBox.Text, user_phone_TextBox.Text, user_password_TextBox1.Text);
            if (status)
                Response.Write("<script>alert('修改成功!');window.location.href ='personal.aspx'</script>");
            else
            {
                Response.Write("<script>alert('修改失败!')</script>");
            } 
        }
        
    }
}