using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        try
        {
            if (Session["username"] == "null" || String.IsNullOrEmpty((string)Session["username"]))
            {
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write("<script>alert('Login first...');window.location='Default.aspx';</script>");

            }
        }
        catch (Exception ex)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write("<script>alert('Login first...');window.location='Default.aspx';</script>");

        }

        Session["username"] = "null";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write("<script>window.location='Default.aspx';</script>");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["username"] == "null" || String.IsNullOrEmpty((string)Session["username"]))
            {
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write("<script>alert('Login first...');window.location='Default.aspx';</script>");

            }
        }
        catch (Exception ex)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write("<script>alert('Login first...');window.location='Default.aspx';</script>");

        }

        Session["username"] = "null";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write("<script>window.location='Default.aspx';</script>");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
}