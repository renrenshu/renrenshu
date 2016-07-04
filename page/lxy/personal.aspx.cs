using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 0;
    }

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode.Text == "我的信息")
        {
            DataSet ds = new DataSet();
            Users people = new Users();
            string id = "2";
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
            MultiView1.ActiveViewIndex = 0;
        }
        if (TreeView1.SelectedNode.Text == "我是卖家")
        { 
            MultiView1.ActiveViewIndex = 1;
        }
        //if (TreeView1.SelectedNode.Text == "我是买家")
        //if (TreeView1.SelectedNode.Text == "我是委托人")
        //if (TreeView1.SelectedNode.Text == "我是受托人")
    }
    protected void user_personal_Button1_Click(object sender, EventArgs e)
    {
        bool status = false;
        Users people = new Users();
        status = people.Modify(user_name_TextBox.Text, user_phone_TextBox.Text, user_password_TextBox1.Text);
        if (status)
            Response.Write("<script>alert('操作成功!');window.location.href ='http://localhost:2039/page/lxy/personal.aspx'</script>");
        else
        {
            Response.Write("<script>alert('操作失败!')</script>");
        }
    }
}