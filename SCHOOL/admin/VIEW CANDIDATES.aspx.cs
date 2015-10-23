using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

public partial class VIEW_CANDIDATES : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
       
    }
    Dbacess d1 = new Dbacess();
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        
        
        try
        {
            DataTable dt ;
            string sql5 = "select id from candidates ;";
            dt = d1.GetData(sql5);
            string i = (dt.Rows[e.NewSelectedIndex][0]).ToString();
            string q = "select phoneno from candidates where id=" + i + "";
            DataTable dt3 = d1.GetData(q);
            string mob = dt3.Rows[0][0].ToString();
            
            string query = "update candidates  set class=1 where id=" + i + ";";
            string admnno = "", gemail = "";
            if (d1.Updatedata(query) > 0)
                query = "INSERT INTO students SELECT name,email,guardian_name,guardian_email,dob,gender,address,phoneno,password,class from candidates where id=" + i + ";";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            if (d1.Updatedata(query) > 0)
                query = "select max(admnno) as admnno from students;";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            DataTable dt1 = d1.GetData(query);
            if (dt1.Rows.Count == 1)
            {
                admnno = dt1.Rows[0][0].ToString();
                query  = "select guardian_email from students where admnno = " + admnno;

            }
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            dt1 = d1.GetData(query);
            if (dt1.Rows.Count == 1)
            {
                gemail  = dt1.Rows[0][0].ToString();
                query = "insert into parents (admnno,email,password) values(" + admnno + ",'"+gemail +"','password')";
               // Response.Write(query);
            }
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            if (d1.InsertData(query) > 0)
                query = " delete from candidates where id=" + i + "";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            if (d1.Deletedata(query) > 0)
                ; // query = " delete from  from candidates where id=" + i + ";";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }

            sms(mob, "you%20have%20been%20given%20admission%20in%20BEELINE%20PUBLIC%20SCHOOL%20CLASS:VIIIA%20ADMNNO:" + admnno + "guardian%20email:" + gemail + "%20password:password");
            GridView1.DataBind();
            Response.Write("<script>alert('Student admitted successfully...');</script>");
           
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error in accepting the request...');</script>");
            Response.Write(ex.ToString());
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        
        try
        {
            DataTable dt ;
            string sql5 = "select id from candidates ;";
            dt = d1.GetData(sql5);
            string i = (dt.Rows[e.RowIndex][0]).ToString();
            
            
            string q="select phoneno from candidates where id="+i+"";
            DataTable dt3 = d1.GetData(q);
            string mob = dt3.Rows[0][0].ToString();
            string query = "update candidates  set class=2 where id=" + i + ";";
            string admnno="",gemail="";
            if (d1.Updatedata(query) > 0)
                query = "INSERT INTO students SELECT name,email,guardian_name,guardian_email,dob,gender,address,phoneno,password,class from candidates where id=" + i + ";";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            if (d1.Updatedata(query) > 0)
                query = "select max(admnno) as admnno from students;";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            DataTable dt1 = d1.GetData(query);
            if (dt1.Rows.Count == 1)
            {
                admnno = dt1.Rows[0][0].ToString();
                query   = "select guardian_email from students where admnno = "+admnno ;

            }
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            DataTable  dt2 = d1.GetData(query);
            if (dt2.Rows.Count == 1)
            {
                gemail  = dt2.Rows[0][0].ToString();
                query = "insert into parents values(" + admnno + ",'"+gemail+"','password')";
             ///   Response.Write(query);
            }
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            if (d1.InsertData(query) > 0)
                query = " delete   from candidates where id=" + i + ";";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
            if (d1.Deletedata(query) > 0)
                ; // query = " delete from  from candidates where id=" + i + ";";
            else
            {
                Response.Write("<script>alert('error')'</script>");
                return;
            }
          
            sms(mob, "you%20have%20been%20given%20admission%20in%20BEELINE%20PUBLIC%20SCHOOL%20CLASS:VIIIB%20ADMNNO:"+admnno+"guardian%20email:"+gemail +"%20password:password"  );
            GridView1.DataBind();
            Response.Write("<script>alert('Student admitted successfully...');</script>");
           
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error in accepting the request...');</script>");
            Response.Write(ex.ToString());
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            DataTable dt;
            string sql5 = "select * from candidates ;";
            dt = d1.GetData(sql5);
            string i = (dt.Rows[e.NewEditIndex][0]).ToString();
            string mob =dt.Rows[0][8].ToString();
            string query = "delete from candidates where id=" + i;
           // Response.Write(query);
            if (d1.Deletedata(query) == 1)
            {
                sms(mob, "you%20have%20been%20rejected%20admission%20in%20BEELINE%20PUBLIC%20SCHOOL");
                Response.Write("<script>alert('Successfully rejected candidate...');</script>");

            }
            else {
                Response.Write("<script>alert('Error in rejecting the request...');</script>");
            }
        }
        catch (Exception ex) {
            Response.Write("<script>alert('Error in rejecting the request...');</script>");
            Response.Write(ex.ToString());
        }
        Response.Write("<script>window.location='VIEW CANDIDATES.aspx';</script>");
        e.Cancel = true;
    }

    public void sms(string no, string msg) {
        try { 
        WebClient webClient = new WebClient();
            string content = webClient.DownloadString("http://clients.smshorizon.in/sms_api/sendsms.php?username=renjujose0555&password=traxy%40123%23&mobile="+no +"&sendername=WEBSMS&message="+msg+"&routetype=2"
);
            Response.Write("<script>alert('sms response : "+content+"');</script>");
        }
        catch (Exception ex) {
            Response.Write("<script>alert('Error in sending sms...');</script>");
          //  Response.Write(ex.ToString());
        }
    }
}