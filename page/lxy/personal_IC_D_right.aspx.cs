using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_IC_D_right : System.Web.UI.Page
{
    int client, lno;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["client"] != null && Request.QueryString["lno"] != null)
        {
            client = Convert.ToInt32(Request.QueryString["client"].ToString());
            lno = Convert.ToInt32(Request.QueryString["lno"].ToString());
        }
    }
    protected void Return_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_IC_right.aspx?pagenum=1");
    }
    protected void Sure_Click(object sender, EventArgs e)
    {
        bool status = false;
        Database people = new Database();
        status = people.DeleteRelationship(2, client, lno);
        status = people.Delete_U(2, client, lno);
        status = people.DeleteInformation(2, lno);
        if (status)
            Response.Write("<script>alert('删除成功!');window.location.href ='personal_IC_right.aspx'</script>");
        else
        {
            Response.Write("<script>alert('删除失败!')</script>");
        }
    }
}