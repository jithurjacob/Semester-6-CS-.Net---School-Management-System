using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher_add_attend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) {
            if (String.IsNullOrEmpty(DropDownList1.SelectedValue) || String.IsNullOrEmpty(DropDownList2.SelectedValue) || String.IsNullOrEmpty(DropDownList3.SelectedValue))
            {
                Response.Write("<script>alert('Please select proper value...');</script>");
                return;
            }
            int clas = (int)int.Parse(DropDownList1.SelectedValue);
            int admnno = (int)int.Parse(DropDownList2.SelectedValue);
            string term = DropDownList3.SelectedValue;
            int perc = (int)int.Parse(TextBox1.Text );
            string sql1 = "select * from attend where admnno=" + admnno + " and term='" + term + "'and class=" + clas + "";
            if (!(d1.no_of_rows(sql1) == 0)) {
                Label1.Text = "Data already exists..";
                return;
            }
            string sql = "insert into attend (admnno,term,class,attendance) values("+admnno +",'"+term +"',"+clas +","+perc +")";
            if (d1.InsertData(sql) > 0)
                Label1.Text = "Attendance added..";
            else
                Label1.Text = "Attendance adding failed..";

        }
    }
}