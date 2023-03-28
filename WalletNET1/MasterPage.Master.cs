using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WalletNET1
{
    public partial class MasterPage: System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserName"] != string.Empty && Session["UserName"]!=null)
                {
                    if (!Page.IsPostBack)
                    {
                        lblUser.Text = Session["UserName"].ToString();
                    }
                }
                else
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Session["UserName"] = "";
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }

        }
    }
}