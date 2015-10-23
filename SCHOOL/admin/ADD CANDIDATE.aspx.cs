using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADD_CAND : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string name;
            int clas,admnno;
            name = TextBox3.Text;
            
            admnno =int.Parse( TextBox2.Text);
            clas = int.Parse(DropDownList1.SelectedValue);

            if (!(string.IsNullOrEmpty(name) && admnno >0))
            {
                if (d1.check_dup("candidates", "regno", admnno.ToString())) {
                    Label1.Text = "Regno already exists....";
                    return;
                }


                string sql5 = "insert into candidates (name,regno,class) values('"+name +"',"+admnno +","+clas +")";
                if (d1.InsertData(sql5) > 0)
                {
                    TextBox3.Text = "";
                    TextBox2.Text = "";
                    Label1.Text = "Candidate added...";
                }
                else
                    Label1.Text = "Candidate adding failed...";
            }
            else
                Label1.Text = "Please fill all fields with proper values... ";
        }
    }
}