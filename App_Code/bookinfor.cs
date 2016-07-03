using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing.Imaging;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// bookinfor 的摘要说明
/// </summary>
public class bookinfor
{
	public bookinfor()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public string no;
    public string name;
    public string author;
    public string press;
    public string price;
    public string intro;
    public DateTime time;
    public string picture;
}