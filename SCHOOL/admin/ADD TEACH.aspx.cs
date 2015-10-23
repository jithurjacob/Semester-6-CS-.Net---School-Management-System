using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADD_TEACH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string name,uname, pwd,mail;
            
            name = TextBox1.Text;
            pwd = TextBox3.Text;
            uname = TextBox2.Text;
            mail = TextBox5.Text;

            if (!(string.IsNullOrEmpty(name) || (string.IsNullOrEmpty(pwd)) || (string.IsNullOrEmpty(uname)) || (string.IsNullOrEmpty(mail))))
            {
                if (d1.check_dup("teachers", "username", uname) || uname.Equals("admin") )
                {
                    Label1.Text = "Username already exists....";
                    return;
                }
                if (!TextBox3.Text.Equals(TextBox4.Text))
                {
                    Label1.Text = "Password's dont match...";
                    return;
                }
                string sql5 = "insert into teachers (name,username,password,email) values('" + name + "','" + uname  + "','" + pwd + "','" + mail  + "')";
                if (d1.InsertData(sql5) > 0)
                {
                    TextBox5.Text = "";
                    TextBox4.Text = "";
                    TextBox1.Text = "";
                    TextBox3.Text = "";
                    TextBox2.Text = "";
                    Label1.Text = "Teacher added...";
                }
                else
                    Label1.Text = "Teacher adding failed...";
            }
            else
                Label1.Text = "Please fill all fields with proper values... ";
        }
    }
}