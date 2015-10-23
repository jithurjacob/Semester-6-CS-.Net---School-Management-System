using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class teacher_view_marks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Dbacess d1 = new Dbacess();
    protected void GridView1_DataBound(object sender, EventArgs e)
    {

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            string sql = "select std+div from classes where id=" + GridView1.Rows[i].Cells[3].Text.ToString();
            DataTable dt;
            dt = d1.GetData(sql);
            GridView1.Rows[i].Cells[3].Text = (string)dt.Rows[0][0];
        }
    }
}