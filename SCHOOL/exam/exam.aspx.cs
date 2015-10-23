using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class exam_exam : System.Web.UI.Page
{
    Dbacess d1 = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                Session["exam_started"] = "false";
                string query6 = "select * from examschedule";
                DataTable dt6 = d1.GetData(query6);
                string EXAMstart = dt6.Rows[0][4].ToString();
                string EXAMend = dt6.Rows[0][6].ToString();
                Label3.Text = EXAMstart;
                Label4.Text = EXAMend;
                Timer3.Enabled = true;
                Timer3_Tick(sender, e);
            }
        }
        catch (Exception ex) {
            Response.Write("<script>alert('Error...');</script>");
            return;
        }
    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
      //  warning_Label.Text = "t2";

        try
        {
            
            int n = int.Parse(Label1.Text) - 1;
            Label1.Text = n.ToString();
            if (n == 0)
            {
                loadnext();
            }
            if (Session["exam_started"].Equals("stop")) {
                finish();
              //  Timer2.Enabled = false;
              //  Timer3.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            warning_Label.Text = ex.ToString();
           // Response.Write(ex.ToString());
        }
    }
    public void loadnext() {
        try
        {
          //  Response.Write("next");
            warning_Label.Text = "next";
            Label1.Text = "60";
           
            Session["qns"] = (int.Parse(Session["qns"].ToString()) + 1).ToString();
            loadqns(int.Parse(Session["qns"].ToString()));
        }
        catch (Exception ex) {
           // Response.Write(ex.ToString());
            warning_Label.Text = ex.ToString();
        }
    }
    protected void Timer3_Tick(object sender, EventArgs e)
    {
        try
        {
            string examstart = Label3.Text;
            string examend = Label4.Text;
            string now = TimeSelector1.Hour.ToString() + ":" + TimeSelector1.Minute.ToString();
            if(Session["exam_started"].ToString().Equals("false"))
            if (now.CompareTo(examstart) >= 0 && Button1.Visible.Equals(false) && now.CompareTo(examend) < 0 )
            {
                Button1.Visible = true;
                warning_Label.Visible = true;
                //  Timer3.Enabled = false;
                return;
            }
            if (now.CompareTo(examend) >= 0)
            {
                
                Timer3.Enabled = false;
                Timer2.Enabled = false;
                UpdatePanel1.Visible = false;
                Button1.Visible = false;
                warning_Label.Visible = false;
                mark_label.Text = Session["mark"].ToString();
                string op = ("<script>alert('times up" + examstart.ToString() + ":" + examend.ToString() + ":" + now.ToString() + "');</script>");
                Response.Write(op);
            }
        }
        catch (Exception ex) {
            Response.Write("<script>alert('" + ex.ToString() + "');</script>");
        }
        
    }
    public void loadqns(int id) {
        try
        {
            //Response.Write(id.ToString());
            warning_Label.Text = id.ToString();
            string query = "select * from questions where id=" + id;
            if (d1.no_of_rows(query) == 1)
            {
                DataTable dt = d1.GetData(query);
                //DataTable dt1 = new DataTable();
                //DataColumn dc1 = new DataColumn("dc1");
                //DataColumn dc2 = new DataColumn("dc2");
                //dc1.DataType = System.Type.GetType("System.String");
                //dc2.DataType = System.Type.GetType("System.String");
                //dt1.Columns.Add(dc1);
                //dt1.Columns.Add(dc2);
                qns_lbl.Text = dt.Rows[0][1].ToString();
                RadioButton1.Text = dt.Rows[0][2].ToString();
                RadioButton2.Text = dt.Rows[0][3].ToString();
                RadioButton3.Text = dt.Rows[0][4].ToString();
                RadioButton4.Text = dt.Rows[0][5].ToString();
                Session["ans"] = dt.Rows[0][6].ToString();
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;
                //for (int i = 2; i < dt.Columns .Count; i++) {
                //    DataRow row = dt1.NewRow();
                //    row[dc1] =( i - 1).ToString();
                //    row[dc1] = dt.Rows[0][i].ToString();
                //    dt1.Rows.Add(row);
                //}

                //choices.ClearSelection();
                //choices.DataSource = dt1;
                //choices.DataTextField = "dc2";
                //choices.DataValueField = "dc1";
                //choices.DataBind();
            }
            else {
                mark_label.Text = "over";
                finish();
                //warning_Label.Text = "over"+id.ToString();
            }
        }
        catch (Exception ex) {
           // Response.Write(ex.ToString());
            warning_Label.Text = ex.ToString();
        }

    }
    public void finish() {
        
        UpdatePanel1.Visible = false;
        Button1.Visible = false;
        warning_Label.Visible = false;
        mark_label.Text = Session["mark"].ToString();
        Session["exam_started"] = "stop";
        Button3.Visible = true;
        finishlbl.Visible = true;
        mark_row.Visible = true;
       // Timer3.Enabled = false;
       // Timer2.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Session["exam_started"].ToString().Equals("false")) {
                Response.Write("<script>alert('Exam had already been started...');</script>");
                return;
            }
            string query1 = "select status from candidates where id=" + Session["username"].ToString() + " ";
            DataTable dt = d1.GetData(query1);
            if(!dt.Rows[0][0].ToString().Equals("pending")){
                Response.Write("<script>alert('Exam had already been started...');</script>");
                return;
            }

            string query = "update candidates set status='start' where id="+Session["username"].ToString()+" ";
            if (d1.Updatedata(query) > 0)
            {


                Session["exam_started"] = "true";
                  UpdatePanel1.Visible = true;
                Session["mark"] = "0";
                Session["qns"] = "1";
                loadqns(1);
                Button1.Visible = false;
                Timer3.Interval = 10000;
                Label1.Text = "60";
                Timer2.Interval = 1000;
                Timer2.Enabled = true;
                Timer2_Tick(sender, e);
            }
            else{
                  Response.Write("<script>alert('Error...');</script>");
                return;
            }
        }
        catch (Exception ex) {
            Response.Write(ex.ToString());
        }
    }
    protected void choices_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadnext();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string ans = "";
        if (RadioButton1.Checked)
            ans = RadioButton1.Text;
        else if (RadioButton2.Checked)
            ans = RadioButton2.Text;
        else if (RadioButton3.Checked)
            ans = RadioButton3.Text;
        else if (RadioButton4.Checked)
            ans = RadioButton4.Text;
        if (string.IsNullOrEmpty(ans))
            return;

        if(Session["ans"].ToString().Equals(ans))
        Session["mark"] = (int.Parse(Session["mark"].ToString()) + 10).ToString();
        Label1.Text = "60";
        loadnext();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Timer2.Enabled = false;
        Timer3.Enabled = false;
        string query = "update candidates set marks='"+Session["mark"].ToString()+"' , status='finished' where id= "+Session["username"].ToString();
        if (d1.Updatedata(query) > 0)
            Response.Write("<script>alert('exam completed successfully...');</script>");
        else
            Response.Write("<script>alert('error...');</script>");
    }
}