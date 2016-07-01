using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void user_register_Button1_Click(object sender, EventArgs e)
    {
        bool status = false;
        Users people = new Users();
        status = people.Add(user_name_TextBox.Text, user_phone_TextBox.Text, user_password_TextBox1.Text);
        if (status)
            Response.Write("<script>alert('操作成功!');window.location.href ='http://localhost:2039/page/yw/index.html'</script>");
        else
        {
            Response.Write("<script>alert('操作失败!')</script>");
        }
    }

    protected void IbtnEnter_onclick(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        Users people = new Users();
        ds = people.query("SELECT * FORM UserInformation");
    }
}