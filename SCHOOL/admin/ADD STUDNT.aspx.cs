using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADD_STUDNT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string name,pwd;
            int clas,admnno;
            name = TextBox3.Text;
            pwd = TextBox4.Text;
            admnno =int.Parse( TextBox2.Text);
            clas = int.Parse(DropDownList1.SelectedValue);

            if (!(string.IsNullOrEmpty(name) || (string.IsNullOrEmpty(pwd))) && admnno >0)
            {
                if (d1.check_dup("teachers", "username", admnno.ToString() ) || d1.check_dup("students", "admnno", admnno.ToString()))
                {
                    Label1.Text = "Admnno already exists....";
                    return;
                }


                string sql5 = "insert into students (name,admnno,password,class) values('"+name +"',"+admnno +",'"+pwd+"',"+clas +")";
                if (d1.InsertData(sql5) > 0)
                {
                    TextBox3.Text = "";
                    TextBox2.Text = "";
                    Label1.Text = "Student added...";
                }
                else
                    Label1.Text = "Student adding failed...";
            }
            else
                Label1.Text = "Please fill all fields with proper values... ";
        }
    }
}