using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher_master : System.Web.UI.MasterPage
{
    protected void Page_Init(object sender, EventArgs e)
    {
        try
        {
            if ( ((string)Session["username"]).Equals( "null") || String.IsNullOrEmpty((string)Session["username"]))
            {
                Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");
                return;
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (((string)Session["username"]).Equals("null") || String.IsNullOrEmpty((string)Session["username"]))
            {
                Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");
                return;
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");

        }
    }


}
