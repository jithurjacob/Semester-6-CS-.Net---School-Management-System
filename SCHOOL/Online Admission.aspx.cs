using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Online_Admission : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(DateTime.Now.TimeOfDay);
        string query = "select * from examschedule";
        DataTable dt = d1.GetData(query);
        if (d1.no_of_rows(query) == 0)
        {
            form1.Visible = false;
            Label2.Text = "ONLINE REGISTRATION IS NOT AVAILABLE AT THE MOMENT PLEASE CONTACT OUR OFFICE FOR DATES";

            return;
        }
        else {
            DateTime ZERO = new DateTime(0);
            string TODAY = Calendar1.TodaysDate.ToShortDateString();
            string REGN_STARTDAY = dt.Rows[0][1].ToString();
            string REGN_ENDDAY = dt.Rows[0][2].ToString();
            string EXAMDAY = dt.Rows[0][3].ToString();

             if (TODAY.CompareTo(EXAMDAY) > 0)
            {
                Label2.Text = "ONLINE EXAM IS OVER  PLEASE CONTACT OUR OFFICE FOR DETAILS";
                form1.Visible = false;
                return;
            }else if(TODAY.CompareTo(REGN_STARTDAY)<0){
                Label2.Text = "ONLINE REGISTRATION IS NOT AVAILABLE AT THE MOMENT REGISTRATION STARTS ON "+REGN_STARTDAY ;
                form1.Visible = false;
                return;
            }
             else if (TODAY.CompareTo(REGN_ENDDAY) > 0 && TODAY.CompareTo(EXAMDAY) < 0)
             {
                 Label2.Text = "ONLINE REGISTRATION IS CLOSED  EXAM DATE : "+EXAMDAY ;
                 form1.Visible = false;
                 return;
             }
             else if (TODAY.CompareTo(EXAMDAY) == 0)
             {
                 Label2.Text = "ONLINE REGISTRATION IS CLOSED  YOU WILL BE REDIRECTED TO ONLINE EXAM PAGE IN 10 SECONDS";
                 Response.Write("<script>setTimeout('window.location=\"Online Exam_Home.aspx\"',10000);</script>");
                 form1.Visible = false;
                 return;
             }
             else if (TODAY.CompareTo(REGN_ENDDAY) > 0)
             {
                 Label2.Text = "ONLINE REGISTRATION IS CLOSED  PLEASE CONTACT OUR OFFICE FOR DETAILS";
                 form1.Visible = false;
                 return;
             }

             else if ((TODAY.CompareTo(REGN_STARTDAY) > 0) && (TODAY.CompareTo(REGN_ENDDAY) < 0))
             {
                 form1.Visible = true;
                 Label2.Text = "";
             }
        }
    }
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            string query6 = "select * from examschedule";
            DataTable dt6 = d1.GetData(query6);
            string EXAMDAY = dt6.Rows[0][3].ToString();
            DateTime YEAR14 = new DateTime(0);
           YEAR14= YEAR14.AddYears(14);
            DateTime YEAR12 = new DateTime(0);
            YEAR12 = YEAR12.AddYears(12);
            DateTime ZERO = new DateTime(0);
            string selected = Calendar1.SelectedDate.Subtract(ZERO ).ToString();
          
          string  MIN = Calendar1.TodaysDate.Subtract(YEAR14 ).ToString();
          string MAX = Calendar1.TodaysDate.Subtract(YEAR12).ToString();
          DateTime MIN_DATE = new DateTime(Calendar1.TodaysDate.Subtract(YEAR14 ).Ticks);
          DateTime MAX_DATE = new DateTime(Calendar1.TodaysDate.Subtract(YEAR12 ).Ticks);
            try
            {
                //Label1.Text = "MIN : " + MIN + " MAX : " + MAX + " SELECTED : " + selected;
                if (selected.CompareTo(MIN) < 0 || selected.CompareTo(MAX) > 0)
                {
                    Response.Write("<script>alert('PLEASE SELECT A DATE BETWEEN " + MIN_DATE.ToShortDateString() + " AND " + MAX_DATE.ToShortDateString() + "');</script>");
                    return;
                }
               
            }
            catch (Exception EX) {
                Label1.Text = EX.ToString() ;
            }
            string name,email,gname,gemail,addr, pwd,gender,phone,dob,cpwd;
            name = TextBox3.Text;
            email = TextBox2.Text;
            gname = TextBox6.Text;
            gemail = TextBox7.Text;
            dob = Calendar1.SelectedDate.ToShortDateString();
            gender = RadioButtonList1.SelectedValue.ToString();
            addr = TextBox5.Text;
            phone = TextBox8.Text;
            pwd = TextBox4.Text;
            cpwd = TextBox1.Text;

            if (!pwd.Equals(cpwd)) {
                Label1.Text = "Password's donot match..";
                return;
            }
            if (!(string.IsNullOrEmpty(name) || (string.IsNullOrEmpty(pwd)) || (string.IsNullOrEmpty(email)) || (string.IsNullOrEmpty(gname))|| (string.IsNullOrEmpty(gemail ))|| (string.IsNullOrEmpty(addr ))|| (string.IsNullOrEmpty(gender ))|| (string.IsNullOrEmpty(phone ))|| (string.IsNullOrEmpty(dob))          
                
                )) 
            {
                if (d1.check_dup("candidates", "email", email) || d1.check_dup("candidates", "guardian_email", gemail ))
                {
                    Label1.Text = "Email already exists....";
                    return;
                }


                string sql5 = "INSERT INTO candidates (name, email, guardian_name, guardian_email, dob, gender, address, phoneno, password) VALUES ('"+name +"','"+email +"','"+gname +"','"+gemail +"','"+dob +"','"+gender +"','"+addr +"','"+phone +"','"+pwd +"')";
                if (d1.InsertData(sql5) > 0)
                {
                    string query = "select id from candidates where email='"+email +"'";
                    DataTable dt=d1.GetData(query);

                    Label1.Text = "Student registerd successfully.Register no : "+dt.Rows[0][0].ToString()+" Exam date :  "+EXAMDAY ;
                }
                else
                    Label1.Text = "Student adding failed...";
            }
            else
                Label1.Text = "Please fill all fields with proper values... ";
        }
    }
}