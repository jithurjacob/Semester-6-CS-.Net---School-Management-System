using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class student_view_time_table : System.Web.UI.Page
{
    Dbacess db = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["username"] == "null")
            {
                Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Login first...');window.location='../Default.aspx';</script>");

        }



        GridView1.AutoGenerateColumns=true ;
        DataTable dt=new DataTable();
        String username=(string)Session["username"];
        DataColumn d1 = new DataColumn("DAY");
        DataColumn d2 = new DataColumn("I");
        DataColumn d3 = new DataColumn("II");
        DataColumn d4 = new DataColumn("III");
        DataColumn d5 = new DataColumn("IV");
        DataColumn d6 = new DataColumn("V");
        DataColumn d7 = new DataColumn("VI");
        DataColumn d8 = new DataColumn("VII");
        DataColumn d9 = new DataColumn("VIII");
        d1.DataType = System.Type.GetType("System.String");
        d2.DataType = System.Type.GetType("System.String");
        d3.DataType = System.Type.GetType("System.String");
        d4.DataType = System.Type.GetType("System.String");
        d5.DataType = System.Type.GetType("System.String");
        d6.DataType = System.Type.GetType("System.String");
        d7.DataType = System.Type.GetType("System.String");
        d8.DataType = System.Type.GetType("System.String");
        d9.DataType = System.Type.GetType("System.String");
        dt.Columns.Add(d1);
        dt.Columns.Add(d2);
        dt.Columns.Add(d3);
        dt.Columns.Add(d4);
        dt.Columns.Add(d5);
        dt.Columns.Add(d6);
        dt.Columns.Add(d7);
        dt.Columns.Add(d8);
        dt.Columns.Add(d9);
      //  dt = d1.GetData(sql5);

        
        string[] days={"MONDAY","TUESDAY","WEDNESDAY","THURSDAY","FRIDAY"};
        string[] periods = { "1", "2", "3", "4", "5", "6", "7", "8" };
       
        foreach (string day in days) {
            DataRow row = dt.NewRow();
            string  sql = "select * from timetable where class='"+student_class(username) +"' and day='"+day+"'";
               DataTable temp;
               row[d1] = day; // first column day
               temp = db.GetData(sql);
            
               string nul = "-";
          
            row[d2] = nul;
            row[d3] = nul;
            row[d4] = nul ;
            row[d5] = nul ;
            row[d6] = nul ;
            row[d7] = nul ;
            row[d8] = nul ;
            row[d9] = nul ;

            for (int j = 0; j < temp.Rows.Count; j++) {
                switch ((int)temp.Rows[j]["period"]) {
                    case 1: row[d2] = name(temp.Rows[j]["teacher"].ToString()) + "-" + temp.Rows[j]["subject"].ToString();
                        break;
                    case 2: row[d3] = name(temp.Rows[j]["teacher"].ToString()) + "-" + temp.Rows[j]["subject"].ToString();
                        break;
                    case 3: row[d4] = name(temp.Rows[j]["teacher"].ToString()) + "-" + temp.Rows[j]["subject"].ToString();
                        break;
                    case 4: row[d5] = name(temp.Rows[j]["teacher"].ToString()) + "-" + temp.Rows[j]["subject"].ToString();
                        break;
                    case 5: row[d6] = name(temp.Rows[j]["teacher"].ToString() )+ "-" + temp.Rows[j]["subject"].ToString();
                        break;
                    case 6: row[d7] =name( temp.Rows[j]["teacher"].ToString()) + "-" + temp.Rows[j]["subject"].ToString();
                        break;
                    case 7: row[d8] = name(temp.Rows[j]["teacher"].ToString()) + "-" + temp.Rows[j]["subject"].ToString();
                        break;
                    case 8: row[d9] = name(temp.Rows[j]["teacher"].ToString()) + "-" + temp.Rows[j]["subject"].ToString();
                        break;
                }
            
            }


            dt.Rows.Add(row);
        }
      
        
        GridView1.DataSource = dt;
        GridView1.DataBind();
       
    }
    public string name(string  id) {
        string sql = "select name from teachers where username='"+id+"'";
        DataTable temp;
        
        temp = db.GetData(sql);
        return (string)temp.Rows[0][0];
    }
    public int student_class(string username)
    {
        string sql = "select class from students where admnno=" + username ;
        DataTable temp;

        temp = db.GetData(sql);
        return (int)temp.Rows[0][0];
    }
}