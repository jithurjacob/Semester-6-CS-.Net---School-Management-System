using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Configuration;

public class Dbacess
{


   // public SqlConnection con = new SqlConnection(WebConfigurationManager.AppSettings["connect"]);
    //|DataDirectory|\
    //public SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\school.mdf\";Integrated Security=True");
   // public SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"|DataDirectory|\\school.mdf\";Integrated Security=True");
    public SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=SCHOOL;Integrated Security=True");
   
    public int InsertData(string sql)
    {
        SqlCommand com = new SqlCommand(sql, con);
        con.Open();
        int i = com.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable GetData(string sql)
    {
        Console.WriteLine(con.ConnectionString);
        DataTable dt = new DataTable();
        //try { 
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        Console.WriteLine(cmd.CommandText);
       
        sda.Fill(dt);
        con.Close();
      //  }
        //catch (Exception ex)
       // {
        //    Console.WriteLine("Error " +ex.ToString());
        //}
        return dt;

    }
    public int Updatedata(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        int b =         cmd.ExecuteNonQuery();
        con.Close();
        return b;
    }

    public int Deletedata(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        int c = cmd.ExecuteNonQuery();
        con.Close();
        return c;
    }

    public string constring()
    {
        return con.ConnectionString;

    }

    public Boolean check_dup(string tablename,string columname , string data)
    {
        string sql = "Select * from "+tablename +" where "+ columname +" = '" + data  + "'";
        DataTable dt;
        dt = GetData(sql);
        if (dt.Rows.Count != 0)
            return true;

        return false;
    }
    public int no_of_rows(string sql)
    {
        
        DataTable dt;
        dt = GetData(sql);
        return dt.Rows.Count;
           
    }
}
