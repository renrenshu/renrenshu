using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class page_yw_webstate : System.Web.UI.Page
{
    Database data = new Database();
    string sql = "select * from state";
    DataSet ds;
    bool state=true;
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata();
        if(state == true)
        {
            lab_state.Text = "正常运行";
            btn_zc.Enabled = false;
            btn_wh.Enabled = true;
        }
        else
        {
            lab_state.Text = "维护中";
            btn_zc.Enabled = true;
            btn_wh.Enabled = false;
        }
    }
    public void getdata()
    {
        ds = data.query(sql);
        state = (bool)ds.Tables["base"].Rows[0]["webstate"];
    }
    //正常
    protected void btn_zc_Click(object sender, EventArgs e)
    {
        state = true;
        bool check = data.Modifstate(state);
        if (check == true)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                "<script>alert('修改成功！');location.href='webstate_right.aspx'</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                "<script>alert('修改失败！');location.href='webstate_right.aspx'</script>");
        }
    }
    //维护
    protected void btn_wh_Click(object sender, EventArgs e)
    {
        state = false;
        bool check = data.Modifstate(state);
        if (check == true)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                "<script>alert('修改成功！');location.href='webstate_right.aspx'</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "",
                "<script>alert('修改失败！');location.href='webstate_right.aspx'</script>");
        }
    }
}