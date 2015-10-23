using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class examschedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        string rsd = Calendar1.SelectedDate.ToShortDateString();
        string red = Calendar2.SelectedDate.ToShortDateString();
        string ed = Calendar3.SelectedDate.ToShortDateString();
        string est = TimeSelector1.Hour.ToString()+":"+TimeSelector1.Minute.ToString();
        string eet = TimeSelector2.Hour.ToString() + ":" + TimeSelector2.Minute.ToString();
        string today=Calendar1.TodaysDate.ToShortDateString();
        if ((today.CompareTo(rsd) > 0) || today.CompareTo(red)>0 || today.CompareTo(ed)>0  ||  rsd.CompareTo(red)>0 || rsd.CompareTo(ed)>0 || red.CompareTo(ed)>0 /*||est.CompareTo(eet)>0*/) {
            Response.Write("<script>alert('select proper date and time..');</script>");
            return;
        }

        string query = "";
        if (d1.no_of_rows("select * from examschedule") == 0)
        {
            query = "insert into examschedule (regn_startdate,regn_enddate,examdate,starttime,endtime) values('"+rsd+"','"+red +"','"+ed+"','"+est +"','"+eet+ "')";
            if (d1.InsertData(query) > 0)
            {
                Label1.Text = "Schedule set...";
            }
            else {
                Label1.Text = "Failed..";
            }
        }
        else {
            query = "update examschedule set regn_startdate='" + rsd + "',regn_enddate='" + red + "',examdate='" + ed + "',starttime='" + est + "',endtime='" + eet + "'";
            if (d1.Updatedata(query) > 0)
            {
                Label1.Text = "Schedule set...";
            }
            else
            {
                Label1.Text = "Failed..";
            }
        }

        //if (Page.IsValid)
        //{
        //    string name = TextBox1.Text;
        //    if (!(string.IsNullOrEmpty(name) )){
        //        if (d1.check_dup("subjects", "subject", name))
        //        {
        //            Label1.Text = "Subject already exists....";
        //            return;
        //        }


        //        string sql5 = "insert into subjects (subject) values('" + name + "')";
        //        if (d1.InsertData(sql5) > 0)
        //        {
        //            TextBox1.Text = "";
        //            Label1.Text = "Subject added...";
        //        }
        //        else
        //            Label1.Text = "Subject adding failed...";

        //    }
        //    else{
        //        Label1.Text="Enter subject name";
        //    }
        //}
    }
}