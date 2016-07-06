using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_IC_M_right : System.Web.UI.Page
{
    string noimg = "http://localhost:2039/image/nophoto.jpg";
    Database ba = new Database();
    int lno;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["lno"] != null)
        {
            lno = Convert.ToInt32(Request.QueryString["lno"].ToString());
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (txt_name.Text.Trim() == "" || txt_author.Text.Trim() == ""
            || txt_press.Text.Trim() == "" || txt_price.Text.Trim() == "")
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
            float offer = (float)Convert.ToSingle(txt_price.Text);
            bool check = false;
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
                string save = "http://localhost:2039" + "/upload/" + fileup.FileName;
                check = ba.Modify(2, lno, txt_name.Text.Trim(), txt_author.Text.Trim(), txt_press.Text.Trim(), offer, txt_jianjie.Text.Trim(), save);
            }
            else
            {
                check = ba.Modify(2, lno, txt_name.Text.Trim(), txt_author.Text.Trim(), txt_press.Text.Trim(), offer, txt_jianjie.Text.Trim(), noimg);
            }
            if (check == true)
            {
                Response.Write("<script>alert('修改成功！');window.location.href ='http://localhost:2039/page/lxy/personal_IC_right.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！')</script>");
            }
        }
    }
}