using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Online_Exam_Home : System.Web.UI.Page
{
    string username, pwd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            username = TextBox1.Text;
            pwd = TextBox2.Text;

            if (!(string.IsNullOrEmpty(username) || (string.IsNullOrEmpty(pwd))))
            {
                string sql5 = "";
                
                    sql5 = "select * from candidates where id='" + username + "' and password='" + pwd + "'";


                DataTable dt;
                dt = d1.GetData(sql5);
                if (dt.Rows.Count == 1)
                {


                    Session["username"] = username;
                    
                        Response.Redirect("exam/examhome.aspx");
                    return;
                }

                else
                    Label1.Text = "Invalid Login...";

            }
            else
                Label1.Text = "Please fill all fields... ";
        }
    }
}