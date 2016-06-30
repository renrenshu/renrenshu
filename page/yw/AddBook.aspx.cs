using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class page_yw_AddBook : System.Web.UI.Page
{
    string noimg = "../../image/nophoto.jpg";
    Database ba = new Database();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if(txt_name.Text.Trim() == "" || txt_author.Text.Trim() == ""
            || txt_press.Text.Trim() == "" || txt_price.Text.Trim()=="")
        {
            if (txt_name.Text.Trim() == "")
            {
                Response.Write("<script>alert('书名不能为空！')</script>");
            }
            else if (txt_author.Text.Trim() == "")
            {
                Response.Write("<script>alert('作者名不能为空！')</script>");
            }
            else if (txt_press.Text.Trim() == "")
            {
                Response.Write("<script>alert('出版社不能为空！')</script>");
            }
            else if (txt_price.Text.Trim() == "")
            {
                Response.Write("<script>alert('价格不能为空！')</script>");
            }       
        }
        else
        {
            float price = (float)Convert.ToSingle(txt_price.Text);
            bool check =false;
            if (fileup.HasFile)
            {
                string savePath = Server.MapPath("~/upload/");//指定上传文件在服务器上的保存路径
                //检查服务器上是否存在这个物理路径，如果不存在则创建
                if (!System.IO.Directory.Exists(savePath))
                {
                    System.IO.Directory.CreateDirectory(savePath);
                }
                savePath = savePath + "\\" + fileup.FileName;
                fileup.SaveAs(savePath);
                Response.Write(fileup.PostedFile.FileName);
                check = ba.Add(1, 1, txt_name.Text.Trim(), txt_author.Text.Trim(), txt_press.Text.Trim(),
                    price, savePath);
            }
            else
            {
                check = ba.Add(1, 1, txt_name.Text.Trim(), txt_author.Text.Trim(), txt_press.Text.Trim(),
                    price, noimg);
            }
            if(check==true)
            {
                Response.Write("<script>alert('添加成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败！')</script>");
            }
        }
    }
}