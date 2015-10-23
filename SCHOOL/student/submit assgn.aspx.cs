using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class student_submit_assgn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (DropDownList1.Items.Count<1)
            return;

        string sql = "select * from assignments where id=" + DropDownList1.SelectedValue;
        DataTable dt = d1.GetData(sql);
        Label1.Text = dt.Rows[0][2].ToString();
        Label2.Text = dt.Rows[0][4].ToString();
        Label3.Text = dt.Rows[0][5].ToString();
        Label4.Text = dt.Rows[0][6].ToString();
    }
    Dbacess d1 = new Dbacess();
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Items.Count <1)
            return;

        string sql = "select * from assignments where id="+DropDownList1.SelectedValue ;
        DataTable dt = d1.GetData(sql);
        Label1.Text = dt.Rows[0][2].ToString();
        Label2.Text = dt.Rows[0][4].ToString();
        Label3.Text = dt.Rows[0][5].ToString();
        Label4.Text = dt.Rows[0][6].ToString();
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {

                if (FileUpload1.FileName != null)
                {
                    FileUpload1.SaveAs(Server.MapPath("") + "\\uploads\\" + FileUpload1.FileName);

                }
                else
                {
                    Response.Write("<script>alert('Please select a file...');</script>");
                }

                string sql1 = "select * from students where admnno=" + Session["username"];
                DataTable dt;
                 dt = d1.GetData(sql1);
                 int admno = (int)int.Parse(dt.Rows[0][0].ToString());
                 int clas = (int)int.Parse(dt.Rows[0][10].ToString());

                 string sql2 = "select * from submissions where assignno="+DropDownList1.SelectedValue +" and admno="+admno 
                     ;
                 if (!(d1.no_of_rows(sql2) == 0)) {
                     Label5.Text = "Assignment already submitted...";
                     return;
                 }

                 string sql = "insert into submissions (admno,class,assignno,date,path) values (" + admno + "," + clas + "," + DropDownList1.SelectedValue + ",'" + DateTime.Now.ToShortDateString() + "','" +  "..\\student\\uploads\\" + FileUpload1.FileName + "')";
                // Label1.Text = sql + sql1;

                 if (d1.InsertData(sql) > 0)
                     Label5.Text = "File uploaded...";
                 else
                     Label5.Text = "File upload failed..." + sql;
              // Label1.Text =sql+ sql1;
            }
        }
        catch (Exception ex)
        {
            Label5.Text = ex.ToString();
        }
    }
}