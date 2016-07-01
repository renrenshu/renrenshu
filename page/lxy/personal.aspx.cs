using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_lxy_personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 0;
    }

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        //if (TreeView1.SelectedNode.Text == "我的信息")
        //if (TreeView1.SelectedNode.Text == "我是卖家")
        //if (TreeView1.SelectedNode.Text == "我是买家")
        //if (TreeView1.SelectedNode.Text == "我是委托人")
        //if (TreeView1.SelectedNode.Text == "我是受托人")
    }
}