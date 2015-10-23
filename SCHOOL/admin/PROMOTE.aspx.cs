using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PROMOFT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string ab = TextBox1.Text;
            string[] abse = ab.Split(',');
            string query = "";
            // foreach(string   admnno in abse)
            // {
            query = "update students set class= class+2 where admnno not in (" + ab + ") and class=" + DropDownList1.SelectedValue.ToString() + " ";
            if (d1.Updatedata(query) < 1)
            {
                Response.Write("<script>alert('Error promoting students" + query + "');</script>");
                return;
            }
            // }
            Response.Write("<script>alert('completed promoting students...');</script>");

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('Error promoting students');</script>");
            return;
        }
    }
}