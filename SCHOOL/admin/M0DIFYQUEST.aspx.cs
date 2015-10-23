using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class M0DIFYQUEST : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
             
                   
                
       
    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Page.IsPostBack)
            {
                string qns = TextBox1.Text;
                string c1 = TextBox2.Text;
                string c2 = TextBox3.Text;
                string c3 = TextBox4.Text;
                string c4 = TextBox5.Text;
                string ans = TextBox6.Text;
                if (!(string.IsNullOrEmpty(qns) || string.IsNullOrEmpty(c1) || string.IsNullOrEmpty(c2) || string.IsNullOrEmpty(c3) || string.IsNullOrEmpty(c4) || string.IsNullOrEmpty(ans)))
                {
                    


                    string sql5 = "update questions set qns= '" + qns + "',c1='" + c1 + "',c2='" + c2 + "',c3='" + c3 + "',c4='" + c4 + "',ans='" + ans + "' where  id=" + DropDownList1.SelectedValue + " ";
                    Response.Write(sql5);
                    if (d1.Updatedata(sql5) > 0)
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";

                        Label1.Text = "Question edited...";
                    }
                    else
                        Label1.Text = "Question editing failed...";

                }
                else
                {
                    Label1.Text = "Enter proper data...";
                }
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string sql5 = "select * from questions where id=" + DropDownList1.SelectedValue;

            DataTable dt;
            dt = d1.GetData(sql5);
            if (dt.Rows.Count != 1)
                Label1.Text = "Error retrieving data...";
            else
            {
                TextBox1.Text = dt.Rows[0][1].ToString();
                TextBox2.Text = dt.Rows[0][2].ToString();
                TextBox3.Text = dt.Rows[0][3].ToString();
                TextBox4.Text = dt.Rows[0][4].ToString();
                TextBox5.Text = dt.Rows[0][5].ToString();
                TextBox6.Text = dt.Rows[0][6].ToString();
            }
        }
    }
}