﻿using System;
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

    protected void IbtnEnter_Onclick(object sender, ImageClickEventArgs e)
    {
        DataSet ds = new DataSet();
        Users people = new Users();
        string id;
        bool stuta = false;
        ds = people.query();
        foreach (DataRow row in ds.Tables["UserInformation"].Rows)
        {
            if (row["uname"].ToString() == Request["TxtUserName"].ToString())
            {
                stuta = true;
                if (row["upassword"].ToString() == Request["TxtPassword"].ToString())
                {
                    Response.Write("<script>alert('登录成功!')</script>");
                    id = row["uid"].ToString();
                    //关闭该界面，将id传入上一界面并将其visible属性设置为ture
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