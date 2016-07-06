using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal_IM_D_right : System.Web.UI.Page
{
    int mandatory, lno;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["mandatory"] != null && Request.QueryString["lno"] != null)
        {
            mandatory = Convert.ToInt32(Request.QueryString["mandatory"].ToString());
            lno = Convert.ToInt32(Request.QueryString["lno"].ToString());
        }
    }
    protected void Return_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_IM_right.aspx?pagenum=1");
    }
    protected void Sure_Click(object sender, EventArgs e)
    {
        bool status = false;
        Database people = new Database();
        status = people.DeleteRelationship(2, lno, mandatory);
        if (status)
            Response.Write("<script>alert('删除成功!');window.location.href ='http://localhost:2039/page/lxy/personal_IM_right.aspx'</script>");
        else
        {
            Response.Write("<script>alert('删除失败!')</script>");
        }
    }
}