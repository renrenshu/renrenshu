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
        if(user_password_TextBox1.Text == user_password_TextBox2.Text)
        {
            status = people.Add(user_name_TextBox.Text, user_phone_TextBox.Text, user_password_TextBox1.Text);
            if (status)
                Response.Write("<script>alert('操作成功!');window.location.href ='login.aspx'</script>");
            else
            {
                Response.Write("<script>alert('操作失败!')</script>");
            } 
        }
        else
        {
            Response.Write("<script>alert('两次密码输入不一致，请重新输入!')</script>");
            user_password_TextBox1.Text = null;
            user_password_TextBox2.Text = null;
        }
        
    }

    protected void IbtnEnter_Onclick(object sender, ImageClickEventArgs e)
    {
        DataSet ds = new DataSet();
        Users people = new Users();
        string id;
        bool stuta = false;
        ds = people.query();
        foreach (DataRow row in ds.Tables["UserInformation"].Rows)
        {
            if (row["uname"].ToString().Trim() == Request["TxtUserName"].ToString().Trim())
            {
                stuta = true;
                if (row["upassword"].ToString().Trim() == Request["TxtPassword"].ToString().Trim())
                {
                    Response.Write("<script>alert('登录成功!')</script>");
                    id = row["uid"].ToString();
                    //关闭该界面，将id传入上一界面并将其visible属性设置为ture
                    Session["id"] = id;
                    if(Convert.ToInt32(row["ulimit"].ToString()) == 0)
                        Response.Redirect("../yw/index.aspx");
                    else
                        Response.Redirect("../yw/maintain.html");
                }
                else 
                {
                    Response.Write("<script>alert('用户名或密码不正确!')</script>");
                }
            }
        }
        if(!stuta)
        {
            Response.Write("<script>alert('用户名不存在，请注册')</script>");
        }
    }
}