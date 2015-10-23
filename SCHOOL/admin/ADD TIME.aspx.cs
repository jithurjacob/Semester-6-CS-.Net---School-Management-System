using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADD_TIME : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
           int clas=int.Parse( DropDownList1.SelectedValue);
           string day = DropDownList2.SelectedValue;
           int period = int.Parse(DropDownList4.SelectedValue);
           string subject = DropDownList5.SelectedValue;
           string teacher = DropDownList6.SelectedValue;

           string qry = "select * from timetable where class= "+clas+" and day= '"+day+"' and period= "+period+" and subject= '"+subject+"'" ;
           Label1.Text = qry;
            if (d1.no_of_rows(qry)==0)
            {



                string sql5 = "insert into timetable (class,day,period,subject,teacher) values("+clas+",'"+day+"',"+period+",'"+subject+"','"+teacher+"')";
                if (d1.InsertData(sql5) > 0)
                {
                    
                    Label1.Text = "Data added...";
                }
                else
                    Label1.Text = "Data adding failed...";

            }
            else
            {
                Label1.Text = "Data already exists....";
            }
        }
    }
}