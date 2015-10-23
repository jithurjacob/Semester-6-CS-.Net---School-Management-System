using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADD_SUBJECT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string name = TextBox1.Text;
            if (!(string.IsNullOrEmpty(name) )){
                if (d1.check_dup("subjects", "subject", name))
                {
                    Label1.Text = "Subject already exists....";
                    return;
                }


                string sql5 = "insert into subjects (subject) values('" + name + "')";
                if (d1.InsertData(sql5) > 0)
                {
                    TextBox1.Text = "";
                    Label1.Text = "Subject added...";
                }
                else
                    Label1.Text = "Subject adding failed...";

            }
            else{
                Label1.Text="Enter subject name";
            }
        }
    }
}