﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class page_jl_Default : System.Web.UI.Page
{
    string id = null;
    Database data = new Database();
    string sql = "select * from List where lno=";
    DataSet ds;
    public rewardinfor rd = new rewardinfor();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            id = Request.QueryString["id"].ToString();
            sql = sql + id;
            getdata();
        }
    }
    //获取数据(ab为页面获取的页码)
    public void getdata()
    {
        ds = data.query(sql);
        rd = new rewardinfor();
        rd.no = ds.Tables["base"].Rows[0]["lno"].ToString();
        rd.name = ds.Tables["base"].Rows[0]["lname"].ToString();
        rd.author = ds.Tables["base"].Rows[0]["lauthor"].ToString();
        rd.press = ds.Tables["base"].Rows[0]["lpress"].ToString();
        rd.offer = ds.Tables["base"].Rows[0]["loffer"].ToString();
        rd.price = ds.Tables["base"].Rows[0]["lprice"].ToString();
        rd.picture = ds.Tables["base"].Rows[0]["lpicture"].ToString();
    }
}