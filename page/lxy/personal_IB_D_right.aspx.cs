using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_IS_D_right : System.Web.UI.Page
{
    int buyer, bno;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["buyer"] != null && Request.QueryString["bno"] != null)
        {
            buyer = Convert.ToInt32(Request.QueryString["buyer"].ToString());
            bno = Convert.ToInt32(Request.QueryString["bno"].ToString());
        }
    }
    protected void Return_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_IB_right.aspx?pagenum=1");
    }
    protected void Sure_Click(object sender, EventArgs e)
    {
        bool status = false;
        Database people = new Database();
        status = people.DeleteRelationship(1, bno, buyer);
        if (status)
            Response.Write("<script>alert('删除成功!');window.location.href ='personal_IB_right.aspx'</script>");
        else
        {
            Response.Write("<script>alert('删除失败!')</script>");
        }
    }
}