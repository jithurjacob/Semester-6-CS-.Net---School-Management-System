using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADDQUEST : System.Web.UI.Page
{
    Dbacess d1 = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string qns = TextBox1.Text;
            string c1 = TextBox2.Text;
            string c2 = TextBox3.Text;
            string c3 = TextBox4.Text;
            string c4 = TextBox5.Text;
            string ans = TextBox6.Text;
            if (!(string.IsNullOrEmpty(qns) || string.IsNullOrEmpty(c1) || string.IsNullOrEmpty(c2) || string.IsNullOrEmpty(c3) || string.IsNullOrEmpty(c4) || string.IsNullOrEmpty(ans)))
            {
                if (d1.check_dup("questions", "qns", qns))
                {
                    Label1.Text = "Question already exists....";
                    return;
                }


                string sql5 = "insert into questions (qns,c1,c2,c3,c4,ans) values('" + qns + "','" + c1 + "','" + c2 + "','" + c3 + "','" + c4 + "','" + ans + "')";
                if (d1.InsertData(sql5) > 0)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    
                    Label1.Text = "Question added...";
                }
                else
                    Label1.Text = "Question adding failed...";

            }
            else
            {
                Label1.Text = "Enter proper data...";
            }
        }
    }
}