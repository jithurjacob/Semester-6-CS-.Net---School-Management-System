using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GVEASSIGNMNT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
        try
        {
            if (((string)Session["username"]).Equals("null") || String.IsNullOrEmpty((string)Session["username"]))
            {
                Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");

        }
    }
    Dbacess d1 = new Dbacess();
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Calendar1.SelectedDate.ToShortDateString().CompareTo(Calendar1.TodaysDate.ToShortDateString()) <= 0)
            {
                Response.Write("<script>alert('please select a valid date....');</script>");
                return;
            }

            int clas = int.Parse(DropDownList1.SelectedValue);
            string day = DropDownList2.SelectedValue;
            
            string subject = DropDownList2.SelectedValue;
            string teacher = (string)Session["username"];
            string qns = TextBox39.Text;
            string desc = TextBox40.Text;
            string date = Calendar1.SelectedDate.ToShortDateString();
            string sql = "select * from assignments where qns='"+qns+"'";
            if (d1.no_of_rows(sql) > 0) {
                Label1.Text = "Topic already exists...";
                return;
            }

            string sql5 = "insert into assignments (class,subject,qns,description,lastdate,teacher) values(" + clas + ",'" + subject  + "','" + qns + "','" + desc  + "','" + date  + "','"+teacher +"')";
            if (d1.InsertData(sql5) > 0)
            {

                Label1.Text = "Data added...";
            }
            else
                Label1.Text = "Data adding failed...";


        }
    }
}